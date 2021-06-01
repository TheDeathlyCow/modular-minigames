from function_writer import *
from reset import Arena
"""
things i'll need to prompt user for:
    - arena name
    - arena start position
    - arena death position
    - item(s) for breaking
        -> possibly the item of the give command itself? 
    - possibly: arena bounds for reset? 
"""

SPLEEF_FUNC_FOLDER = "data/spleef/functions/"
LOAD_FUNC = "reset:{0}/_load"

COUNTDOWN_TICK = """\
execute if score {0} spleefCountdown matches {1} run tellraw @a[tag=playing_{0}] [{{{{"text":"The game will start in ","color":"aqua"}}}},{{{{"text":"{2}","color":"dark_purple"}}}},{{{{"text":" seconds!"}}}}]
execute if score {0} spleefCountdown matches {1} run playsound minecraft:block.note_block.hat master @a[tag=playing_{0}] ~ ~ ~ 500
"""


class Spleef:

    def __init__(self, name: str, proper_name: str, player_pos: BlockPos, spectator_pos: BlockPos, spleef_items: list) -> None:
        self.name = name
        self.proper_name = proper_name
        self.player_pos = player_pos
        self.spectator_pos = spectator_pos
        self.spleef_items = spleef_items
        self._countdown = {
            "initiate": {
                COMMANDS: [
                    "scoreboard players set {0} spleefCountdown 305",
                    "scoreboard players reset @a[scores={{start_spleef=0..}}] start_spleef",
                    "scoreboard players reset @a[tag=playing_{0}] leave_spleef"
                ]
            },
            "tick": {
                COMMANDS: [
                    "scoreboard players remove {0} spleefCountdown 1"
                ] + get_countdown_commands(self.name, [15, 10, 5, 4, 3, 2, 1]) + [
                    "execute if score {0} spleefCountdown matches 0 run function spleef:{0}/start"
                ]
            }
        }
        self._spleef = {
            "_join": {
                COMMANDS: [
                    "gamemode adventure @s",
                    "scoreboard players operation {0} isSplfRunning -= binary modulus",
                    "execute if score {0} isSplfRunning matches -2 run function spleef:{0}/join_game",
                    "execute if score {0} isSplfRunning matches -1 run function spleef:{0}/join_spectators",
                    "scoreboard players operation {0} isSplfRunning %= binary modulus"
                ],
                COMMENTS: [
                    "execute as a player attempting to join, at their position"
                ]
            },
            "_leave_game": {
                COMMANDS: [
                    "team leave @s",
                    "teleport @s {}".format(HUB_COORDINATES),
                    "spawnpoint @s {}".format(HUB_COORDINATES),
                    "tag @s remove spectating_{}",
                    "tag @s remove playing_{}",
                    "tag @s remove leave_{}",
                    "tellraw @a[tag=playing_{0}] [{{{{\"selector\":\"@s\"}}}},{{{{\"text\":\" has left {0}!\",\"color\":\"aqua\"}}}}]".format(
                        self.name),
                    "tellraw @a[tag=spectating_{0}] [{{{{\"selector\":\"@s\"}}}},{{{{\"text\":\" has left {0}!\",\"color\":\"aqua\"}}}}]".format(
                        self.name),
                    "scoreboard players reset @s start_spleef",
                    "scoreboard players reset @s leave_spleef",
                    "scoreboard players reset @s splfOver",
                    "clear @s"
                ],
                COMMENTS: [
                    "executes as a player wanting to leave, at their position"
                ]
            },
            "check_victory": {
                COMMANDS: [
                    "function spleef:{0}/count_players",
                    "execute if score {0} splfPlyrCnt matches 1 as @a[tag=playing_{0},limit=1] at @s run function spleef:{0}/victory"
                ]
            },
            "count_players": {
                COMMANDS: [
                    "scoreboard players set {0} splfPlyrCnt 0",
                    "execute as @a[tag=playing_{0}] run scoreboard players add {0} splfPlyrCnt 1"
                ]
            },
            "died": {
                COMMANDS: [
                    "playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..200] ~ ~ ~ 200 1",
                    "function spleef:{0}/join_spectators",
                    "function spleef:{0}/count_players",
                    "tellraw @a[distance=..200] [{{\"selector\":\"@s\",\"color\":\"dark_purple\"}},{{\"text\":\" fell out of the arena! There are \",\"color\":\"aqua\"}},{{\"score\":{{\"name\":\"{0}\",\"objective\":\"splfPlyrCnt\"}},\"color\":\"dark_purple\"}},{{\"text\":\" players remaining!\",\"color\":\"aqua\"}}]",
                    "scoreboard players reset @s splfOver"
                ]
            },
            "in_game_tick": {
                COMMANDS: [
                    "execute as @a[tag=playing_{0},scores={{splfOver=1..}}] at @s run function spleef:{0}/died",
                    "function spleef:{0}/check_victory"
                ]
            },
            "join_game": {
                COMMANDS: [
                    "team join spleef_plyr @s",
                    "tag @s add playing_{0}",
                    f"teleport @s {player_pos}",
                    f"spawnpoint @s {player_pos}",
                    "scoreboard players enable @s start_spleef",
                    "scoreboard players enable @s leave_spleef",
                    "tag @s remove spectating_{0}",
                    "tellraw @a[tag=playing_{0}] [{{\"selector\":\"@s\"}},{{\"text\":\" has joined the game!\",\"color\":\"aqua\"}}]",
                    "tellraw @a[tag=spectating_{0}] [{{\"selector\":\"@s\"}},{{\"text\":\" has joined the game!\",\"color\":\"aqua\"}}]",
                    "tellraw @s [{{\"text\":\"Type \",\"color\":\"aqua\"}},{{\"text\":\"/trigger start_spleef\",\"color\":\"dark_purple\"}},{{\"text\":\" when are you ready to start!\"}}]",
                    "tellraw @s [{{\"text\":\"Type \",\"color\":\"aqua\"}},{{\"text\":\"/trigger leave_spleef\",\"color\":\"dark_purple\"}},{{\"text\":\" if you want to leave!\"}}]",
                    "scoreboard players operation @s ld.{0} = loadNum ld.{0}",
                    "function reset:{0}/_join_player"
                ]
            },
            "join_spectators": {
                COMMANDS: [
                    "team join spleef_spec @s",
                    "tag @s add spectating_{0}",
                    "function reset:{0}/_join_spectator",
                    "tag @s remove playing_{0}",
                    "teleport @s {}".format(self.spectator_pos),
                    "spawnpoint @s {}".format(self.spectator_pos),
                    "gamemode adventure @s",
                    f"tellraw @a[tag=playing_{{{0}}}] [{{{{\"selector\": \"@s\", \"color\":\"dark_purple\"}}}},{{{{\"text\": \" is now spectating {proper_name}!\", \"color\": \"aqua\"}}}}]",
                    "tellraw @s [{{\"text\": \"Type \", \"color\": \"aqua\"}}, {{\"text\": \"/trigger leave_spleef\",\"color\": \"dark_purple\"}}, {{\"text\": \" when you want to leave!\"}}]",
                    "scoreboard players enable @s leave_spleef",
                    "clear @s"
                ]
            },
            "leave_trigger": {
                COMMANDS: [
                    "tag @s[tag=spectating_{0}] add leave_{0}",
                    "execute if score {0} isSplfRunning matches 0 if entity @s[tag=playing_{0}] run tag @s add leave_{0}"
                ]
            },
            "load": {
                COMMANDS: [
                    "scoreboard players add {0} isSplfRunning 0"
                ]
            },
            "start": {
                COMMANDS: self._get_spleef_item_commands() + [
                    "scoreboard players set {0} isSplfRunning 1",
                    "tellraw @a[tag=playing_{0}] [{{\"text\":\"The game has begun!\",\"color\":\"dark_purple\"}}]",
                    "playsound minecraft:block.note_block.harp master @a[tag=playing_{0}] ~ ~ ~ 500",
                    "effect give @a[tag=playing_{0}] minecraft:instant_health 1 10",
                    "effect give @a[tag=playing_{0}] minecraft:saturation 1 10",
                    "scoreboard players reset @a[tag=playing_{0}] splfOver",
                    "effect clear @a[tag=playing_{0}]",
                    "effect give @a[tag=playing_{0}] instant_health 1 10",
                    "effect give @a[tag=playing_{0}] saturation 1 10"
                ],
                COMMENTS: [
                    "set number of players in game"
                ]
            },
            "start_vote": {
                COMMANDS: [
                    "scoreboard players set {0} startVoteCntr 0",
                    "execute as @a[tag=playing_{0},scores={{start_spleef=1..}}] run scoreboard players add {0} startVoteCntr 1",
                    "execute as @a[tag=playing_{0},scores={{start_spleef=1}}] run tellraw @a[tag=playing_{0}] [{{\"selector\":\"@s\"}},{{\"text\":\" is ready to start!\",\"color\":\"aqua\"}}]",
                    "function spleef:{0}/count_players",
                    "execute if entity @a[tag=playing_{{0}},scores={{{{start_spleef=1..}}}}] if score {{0}} startVoteCntr = {{0}} splfPlyrCnt if score {{0}} spleefCountdown matches ..-1 positioned {} run function spleef:{{0}}/countdown/initiate".format(
                        player_pos)
                ]
            },
            "tick": {
                COMMANDS: [
                    "execute if score {0} isSplfRunning matches 1 run function spleef:{0}/in_game_tick",
                    "function spleef:{0}/start_vote",
                    "execute if score {0} spleefCountdown matches -1.. run function spleef:{0}/countdown/tick",
                    "execute as @a[tag=leave_{0}] at @s run function spleef:{0}/_leave_game",
                    "execute as @a[scores={{leave_spleef=1..}}] at @s run function spleef:{0}/leave_trigger"
                ]
            },
            "victory": {
                COMMANDS: [
                    f"tellraw @a [{{{{\"selector\":\"@s\"}}}},{{{{\"text\":\" has won spleef in {self.proper_name}!\",\"color\":\"aqua\"}}}}]",
                    "function spleef:{0}/join_spectators",
                    "scoreboard players set {0} isSplfRunning 0 ",
                    "scoreboard players enable @s leave_spleef",
                    "function " + LOAD_FUNC
                ]
            },
            "invalid_version": {
                COMMANDS: [
                    "tellraw @s [{{\"text\":\"You left the game during a match. Returning you to spawn...\",\"color\":\"red\"}}]",
                    "playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~",
                    "function spleef:{0}/_leave_game"
                ]
            }
        }

    def _get_spleef_item_commands(self):
        give_commands = []
        for item in self.spleef_items:
            give_commands.append(f"give @a[tag=playing_{self.name}] {item} 1")

        return give_commands

    def gen_spleef(self):
        writer = FuncWriter(SPLEEF_FUNC_FOLDER + f"{self.name}/", self.name)
        writer.write_functions(self._spleef)
        writer = FuncWriter(SPLEEF_FUNC_FOLDER +
                            f"{self.name}/countdown/", self.name)
        writer.write_functions(self._countdown)


def get_countdown_commands(name: str, seconds: list) -> list:
    commands = []
    for s in seconds:
        commands.append(COUNTDOWN_TICK.format(name, s * 20, s))
    return commands


def generate_hockey():
    spleef_items = [
        "diamond_pickaxe{{CanDestroy:[\"minecraft:packed_ice\"],Unbreakable:1b,Enchantments:[{{id:\"minecraft:efficiency\",lvl:3s}}]}}",
        "shears{{CanDestroy:[\"minecraft:red_wool\",\"minecraft:white_wool\",\"minecraft:blue_wool\",\"minecraft:light_blue_wool\"],Unbreakable:1b,Enchantments:[{{id:\"minecraft:efficiency\",lvl:5s}}]}}",
        "lingering_potion{{Potion:\"minecraft:slowness\"}}",
        "lingering_potion{{Potion:\"minecraft:slowness\"}}",
        "lingering_potion{{Potion:\"minecraft:slowness\"}}"
    ]

    arena_name = "splfhockey"
    proper_name = "TotallyNotHockey"

    spleef_game = Spleef(arena_name, proper_name, BlockPos(
        1122, 94, -471), BlockPos(1122, 104, -509), spleef_items)

    spleef_arena_bounds = [
        (1208, 76, -393),
        (964, 152, -613)
    ]

    spleef_game.gen_spleef()
    arena = Arena(arena_name, proper_name, BlockPos(1208, 76, -393), BlockPos(964, 152, -613))
    arena.generate()

def generate_herb():
    spleef_items = [
        """bow{{Unbreakable:1b,Enchantments:[{{id:"minecraft:flame",lvl:1s}},{{id:"minecraft:infinity",lvl:1s}}]}}""",
        """arrow"""
    ]

    arena_name = "splfmall"
    proper_name = "TNT Mall"

    spleef_game = Spleef(arena_name, proper_name, BlockPos(-820, 91, 1260), BlockPos(-841, 91, 1260), spleef_items)

    spleef_game.gen_spleef()

    arena = Arena(arena_name, proper_name, BlockPos(-874, 67, 1174), BlockPos(-758, 128, 1325))
    arena.generate()

generate_hockey()
generate_herb()