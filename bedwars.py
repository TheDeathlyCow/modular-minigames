from function_writer import *
from reset import Arena
import textwrap

BEDWARS_FUNC_FOLDER = "data/bedwars/functions/"
LOAD_FUNC = "reset:{0}/_load"

COLOR_MAP = {
    "red": 14030872,
    "green": 2348559,
    "yellow": 14079524,
    "blue": 38614
}


class BedWarsTeam:

    def __init__(self, color: str, bed_pos: BlockPos, respawn_items: list) -> None:
        self.color = color.lower()
        self.bed_pos = bed_pos
        self.respawn_items = respawn_items

    def get_formal_name(self) -> str:
        return self.color.capitalize()

    def checkspawn(self) -> str:
        return textwrap.dedent(f"""\
            execute if score {self.color} {{0}}.bd matches 0 positioned {self.bed_pos} unless block ~ ~ ~ #minecraft:beds run function bedwars:{{0}}/bed_destroyed/{self.color}
            execute if score {self.color} {{0}}.bd matches 0 positioned {self.bed_pos} as @a[tag=playing_{{0}},team=bw{self.color},scores={{{{bwDied=1..,bwHealth=1..}}}}] run function bedwars:{{0}}/respawn/{self.color}
            execute if score {self.color} {{0}}.bd matches 1 as @a[tag=playing_{{0}},team=bw{self.color},scores={{{{bwDied=1..}}}}] at @s run function bedwars:{{0}}/eliminate""")

    def checkvictory(self) -> str:
        return textwrap.dedent(f"""\
            execute if entity @a[tag=playing_{{0}},team=bw{self.color}] unless entity @a[tag=playing_{{0}},team=!bw{self.color}] run function bedwars:{{0}}/victory/{self.color}""")

    def join_game(self) -> str:
        return f"""execute if score {self.color} {{0}}.tq matches 0 positioned {self.bed_pos} run function bedwars:{{0}}/team_queue/join_{self.color}"""


class BedWars:

    def __init__(self, name: str, proper_name: str, players_per_game: int, teams: list, spectator_pos: BlockPos) -> None:
        self.name = name
        self.teams = teams
        self.spectator_pos = spectator_pos
        self.proper_name = proper_name
        self.players_per_game = players_per_game

        self._bed_destroyed = {}
        self._respawn = {
            "give_basic_kit": {
                COMMANDS : [
                    textwrap.dedent("""\
                        loot give @s loot bedwars:basic_weapons
                        item replace entity @s weapon.offhand with minecraft:shield
                        item replace entity @s armor.legs with chainmail_leggings 1
                        item replace entity @s armor.feet with chainmail_boots 1
                        scoreboard players reset @s bwDied""")
                ]
            }
        }
        self._team_queue = {
            "reset": {
                COMMANDS: [
                    f"scoreboard players set {team.color} {{0}}.tq {i}" for i, team in enumerate(self.teams)
                ]
            },
            "shift_queue": {
                COMMANDS: [
                    textwrap.dedent(f"""\
                        scoreboard players add {team.color} {{0}}.tq 1
                        scoreboard players operation {team.color} {{0}}.tq %= {{0}} bwNumTeams""")
                    for team in self.teams
                ]
            }
        }
        self._victory = {
            "victory": {
                COMMANDS: [
                    *[f"scoreboard players set {team.color} {{0}}.bd 0" for team in self.teams],
                    textwrap.dedent("""\
                        scoreboard players set {0} bwState 0
                        clear @a[tag=playing_{0}]
                        team leave @a[tag=playing_{0}]
                        effect give @a[tag=playing_{0}] saturation 1 10 true 
                        effect give @a[tag=playing_{0}] instant_health 1 10 true 
                        advancement grant @a[tag=playing_{0}] only modular_minigames:win_bedwars
                        execute as @a[tag=playing_{0}] run function bedwars:{0}/_leave
                        execute as @a[tag=spectating_{0}] run function bedwars:{0}/_leave"""),
                    "function " + LOAD_FUNC 
                ]
            }
        }

        for team in self.teams:
            self._victory[team.color] = {
                COMMANDS: [
                    textwrap.dedent(f"""\
                        tellraw @a [{{{{"text":"The {team.color.capitalize()} Team has won bed wars on {self.proper_name}!","color":"red"}}}}]
                        function bedwars:{{0}}/victory/victory""")
                ]
            }

            self._bed_destroyed[team.color] = {
                COMMANDS: [
                    textwrap.dedent(f"""\
                        tellraw @a[tag=playing_{{0}}] [{{{{"text":"The {team.color} team's bed has been destroyed!","color":"aqua"}}}}]
                        tellraw @a[tag=spectating_{{0}}] [{{{{"text":"The {team.color} team's bed has been destroyed!","color":"aqua"}}}}]
                        summon lightning_bolt ~ ~10 ~
                        spawnpoint @a[tag=playing_{{0}},team=bw{team.color}] {self.spectator_pos}
                        scoreboard players reset @a[tag=playing_{{0}},team=bw{team.color}] bwDied
                        scoreboard players set {team.color} {{0}}.bd 1""")
                ]
            }

            self._respawn[team.color] = {
                COMMANDS: [
                    "function bedwars:{0}/respawn/give_basic_kit",
                    *[f"give @s {i} {c} " for i, c in team.respawn_items],
                    textwrap.dedent(f"""\
                        item replace entity @s armor.head with leather_helmet{{{{display:{{{{color:{COLOR_MAP[team.color]}}}}}}}}} 1
                        item replace entity @s armor.chest with leather_chestplate{{{{display:{{{{color:{COLOR_MAP[team.color]}}}}}}}}} 1"""),
                    f"spreadplayers ~ ~ 0 10 under {team.bed_pos.y + 1} true @s"
                ]
            }

            self._team_queue['join_' + team.color] = {
                COMMANDS : [
                    textwrap.dedent(f"""\
                        team join bw{team.color} @s 
                        function bedwars:{{0}}/respawn/{team.color}
                        tellraw @a[tag=playing_{{0}}] [{{{{"selector":"@s","color":"dark_aqua","bold":true}}}},{{{{"text":" has joined the {team.color} team!","color":"aqua","bold":false}}}}]"""),
                    *[f"give @s {i} {c} " for i, c in team.respawn_items]
                ]
            }

        self._bedwars = {
            "_join": {
                COMMANDS: [
                    """function bedwars:{0}/count_players""",
                    f"""tellraw @s {{{{"text":"Welcome to {self.proper_name}!","color":"dark_aqua","bold":true}}}}""",
                    """execute if score {0} bwPlyrCnt < {0}.mx bwPlyrCnt if score {0} bwState matches 0 run function bedwars:{0}/join_game""", # only join game if it is not full and in WAIT state
                    """execute if score {0} bwPlyrCnt >= {0}.mx bwPlyrCnt if score {0} bwState matches 0 run function bedwars:{0}/join_spectators""", # join spectators if game is full while in WAIT state
                    """execute unless score {0} bwStates matches 0 run function bedwars:{0}/join_spectators""" # join spectators if game is *not* in WAIT state
                ]
            },
            "_leave": {
                COMMANDS: [
                    "tag @s remove playing_{0}",
                    "tag @s remove spectating_{0}",
                    "team leave @s",
                    f"teleport @s {HUB_COORDINATES}",
                    f"spawnpoint @s {HUB_COORDINATES}",
                    "clear @s",
                    "effect clear @s",
                    "gamemode adventure @s",
                    "scoreboard players reset @s leave_bedwars",
                    "scoreboard players reset @s start_bedwars",
                    "function modular_minigames:_arrive"
                ]
            },
            "check_spawnpoints": {
                COMMANDS: ["execute as @a[tag=playing_{0}] store result score @s bwHealth run data get entity @s Health"] + [
                    t.checkspawn() for t in self.teams
                ]
            },
            "check_victory": {
                COMMANDS: [
                    t.checkvictory() for t in self.teams
                ]
            },
            "count_players": {
                COMMANDS: [
                    "scoreboard players set {0} bwPlyrCnt 0",
                    "execute as @a[tag=playing_{0}] run scoreboard players add {0} bwPlyrCnt 1"
                ]
            },
            "countdown": {
                COMMANDS: [
                    textwrap.dedent("""\
                        scoreboard players remove {0} bwCntDwn 1

                        execute if score {0} bwCntDwn matches 300 run title @a[tag=playing_{0}] title {{"text":"15","color":"dark_purple","bold":true}}
                        execute if score {0} bwCntDwn matches 300 run tellraw @a[tag=playing_{0}] [{{"text":"The game will start in ","color":"aqua"}},{{"text":"15","color":"dark_purple"}},{{"text":" seconds!"}}]
                        execute if score {0} bwCntDwn matches 300 run tellraw @a[tag=spectating_{0}] [{{"text":"The game will start in ","color":"aqua"}},{{"text":"15","color":"dark_purple"}},{{"text":" seconds!"}}]
                        execute if score {0} bwCntDwn matches 300 as @a[tag=playing_{0}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1

                        execute if score {0} bwCntDwn matches 200 run title @a[tag=playing_{0}] title {{"text":"10","color":"dark_purple","bold":true}}
                        execute if score {0} bwCntDwn matches 200 run tellraw @a[tag=playing_{0}] [{{"text":"The game will start in ","color":"aqua"}},{{"text":"10","color":"dark_purple"}},{{"text":" seconds!"}}]
                        execute if score {0} bwCntDwn matches 200 as @a[tag=playing_{0}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1

                        execute if score {0} bwCntDwn matches 100 run title @a[tag=playing_{0}] title {{"text":"5","color":"dark_purple","bold":true}}
                        execute if score {0} bwCntDwn matches 100 run tellraw @a[tag=playing_{0}] [{{"text":"The game will start in ","color":"aqua"}},{{"text":"5","color":"dark_purple"}},{{"text":" seconds!"}}]
                        execute if score {0} bwCntDwn matches 100 as @a[tag=playing_{0}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1

                        execute if score {0} bwCntDwn matches 80 run title @a[tag=playing_{0}] title {{"text":"4","color":"dark_purple","bold":true}}
                        execute if score {0} bwCntDwn matches 80 run tellraw @a[tag=playing_{0}] [{{"text":"The game will start in ","color":"aqua"}},{{"text":"4","color":"dark_purple"}},{{"text":" seconds!"}}]
                        execute if score {0} bwCntDwn matches 80 as @a[tag=playing_{0}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1

                        execute if score {0} bwCntDwn matches 60 run title @a[tag=playing_{0}] title {{"text":"3","color":"dark_purple","bold":true}}
                        execute if score {0} bwCntDwn matches 60 run tellraw @a[tag=playing_{0}] [{{"text":"The game will start in ","color":"aqua"}},{{"text":"3","color":"dark_purple"}},{{"text":" seconds!"}}]
                        execute if score {0} bwCntDwn matches 60 as @a[tag=playing_{0}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1

                        execute if score {0} bwCntDwn matches 40 run title @a[tag=playing_{0}] title {{"text":"2","color":"dark_purple","bold":true}}
                        execute if score {0} bwCntDwn matches 40 run tellraw @a[tag=playing_{0}] [{{"text":"The game will start in ","color":"aqua"}},{{"text":"2","color":"dark_purple"}},{{"text":" seconds!"}}]
                        execute if score {0} bwCntDwn matches 40 as @a[tag=playing_{0}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1

                        execute if score {0} bwCntDwn matches 20 run title @a[tag=playing_{0}] title {{"text":"1","color":"dark_purple","bold":true}}
                        execute if score {0} bwCntDwn matches 20 run tellraw @a[tag=playing_{0}] [{{"text":"The game will start in ","color":"aqua"}},{{"text":"1","color":"dark_purple"}},{{"text":" second!"}}]
                        execute if score {0} bwCntDwn matches 20 as @a[tag=playing_{0}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1

                        execute if score {0} bwCntDwn matches 0 run title @a[tag=playing_{0}] title {{"text":"GO!","color":"dark_purple","bold":true}}
                        execute if score {0} bwCntDwn matches 0 run function bedwars:{0}/start""")
                ]
            },
            "eliminate": {
                COMMANDS: [
                    textwrap.dedent(f"""\
                        tellraw @a[tag=playing_{{0}}] [{{{{"selector":"@s","bold":true,"color":"dark_purple"}}}},{{{{"text":" has been eliminated from {self.proper_name}!","bold":false,"color":"aqua"}}}}]
                        tellraw @a[tag=spectating_{{0}}] [{{{{"selector":"@s","bold":true,"color":"dark_purple"}}}},{{{{"text":" has been eliminated from {self.proper_name}!","bold":false,"color":"aqua"}}}}]
                        summon lightning_bolt ~ ~10 ~
                        
                        team leave @s
                        tag @s remove playing_{{0}}
                        function bedwars:{{0}}/join_spectators
                        scoreboard players reset @s bwDied""")
                ]
            },
            "ingame_tick": {
                COMMANDS: [
                    textwrap.dedent("""\
                        clear @a[tag=playing_{0}] #minecraft:beds
                        function bedwars:{0}/check_victory

                        function bedwars:{0}/check_spawnpoints""")
                ]
            },
            "initiate_countdown": {
                COMMANDS: [
                    textwrap.dedent("""\
                        scoreboard players set {0} bwCntDwn 301
                        scoreboard players set {0} bwState 2
                        scoreboard players reset @a[tag=playing_{0}] leave_bedwars
                        scoreboard players reset @a[tag=playing_{0}] start_bedwars
                        clear @a[tag=playing_{0}] shield{{bwStartClick:1b}}
                        clear @a[tag=playing_{0}] shield{{bwLeaveClick:1b}}
                        title @a[tag=playing_{0}] times 2 10 2""")
                ]
            },
            "join_game": {
                COMMANDS: [
                    textwrap.dedent("""\
                        tag @s add playing_{0}
                        effect clear @s
                        effect give @s instant_health 1 9 
                        effect give @s saturation 1 9
                        gamemode adventure @s
                        clear @s
                        scoreboard players enable @s start_bedwars
                        scoreboard players enable @s leave_bedwars"""),
                    *[t.join_game() for t in self.teams],
                    f"""spawnpoint @s {self.spectator_pos}""",
                    textwrap.dedent("""\
                        function reset:{0}/_join_player
                        item replace entity @s hotbar.7 with shield{{display:{{Name:'{{"text":"Right Click to Start","color":"green","italic":false}}'}},bwStartClick:1b,BlockEntityTag:{{Base:5}}}} 1
                        item replace entity @s hotbar.8 with shield{{display:{{Name:'{{"text":"Right Click to Leave","color":"red","italic":false}}'}},bwLeaveClick:1b,BlockEntityTag:{{Base:14,Patterns:[{{Color:0,Pattern:"mr"}},{{Color:14,Pattern:"vh"}}]}}}} 1
                        function bedwars:{0}/team_queue/shift_queue""")
                ]
            },
            "join_spectators": {
                COMMANDS: [
                    textwrap.dedent(f"""\
                        function reset:{{0}}/_join_spectator
                        team join bwSpec @s
                        tag @s remove playing_{{0}}
                        tag @s add spectating_{{0}}
                        effect clear @s
                        effect give @s invisibility 99999 0 true
                        gamemode adventure @s
                        scoreboard players enable @s leave_bedwars

                        teleport @s {self.spectator_pos}
                        spawnpoint @s {self.spectator_pos}""")
                ]
            },
            "load": {
                COMMANDS: [
                    textwrap.dedent(f"""\
                        scoreboard players set {{0}} bwNumTeams {self.get_num_teams()}
                        scoreboard objectives add {{0}}.tq dummy
                        scoreboard objectives add ds.{{0}} dummy
                        scoreboard players add {{0}} bwState 0
                        """),
                    *[f"scoreboard players add {t.color} {{0}}.tq 0" for t in self.teams],
                    "scoreboard players set {0}.mx bwPlyrCnt 0",
                    *["scoreboard players operation {0}.mx bwPlyrCnt += {0} bwNumTeams" for _ in range(
                        self.players_per_game)],
                    "scoreboard objectives add {0}.bd dummy",
                    *[f"scoreboard players add {t.color} {{0}}.bd 0" for t in self.teams]
                ]
            },
            "start": {
                COMMANDS: [
                    *[f"scoreboard players set {team.color} {{0}}.bd 0" for team in self.teams],
                    textwrap.dedent("""\
                        execute as @a[tag=playing_{0}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1
                        tellraw @a[tag=playing_{0}] [{{"text":"The game has begun! Your gamemodes have been updated.","color":"aqua"}}]
                        gamemode survival @a[tag=playing_{0}]

                        scoreboard players set {0} bwState 1

                        effect clear @s
                        effect give @a[tag=playing_{0}] saturation 1 10 true 
                        effect give @a[tag=playing_{0}] instant_health 1 10 true 

                        scoreboard players reset @a[tag=playing_{0}] bwDied""")
                ]
            },
            "tick": {
                COMMANDS: [
                    textwrap.dedent("""\
                        execute if score {0} bwState matches 0 run function bedwars:{0}/wait
                        execute if score {0} bwState matches 1 run function bedwars:{0}/ingame_tick
                        execute if score {0} bwState matches 2 run function bedwars:{0}/countdown
                        

                        scoreboard players set @a[tag=leave_{0}] leave_bedwars 1
                        tag @a[tag=leave_{0}] remove leave_{0}
                        execute as @a[scores={{leave_bedwars=1..}},tag=playing_{0}] run function bedwars:{0}/_leave
                        execute as @a[scores={{leave_bedwars=1..}},tag=spectating_{0}] run function bedwars:{0}/_leave

                        execute unless score {0} bwState matches 0 run function bedwars:{0}/count_players
                        execute unless score {0} bwState matches 0 if score {0} bwPlyrCnt matches 0 run function bedwars:{0}/victory/victory

                        item replace entity @a[tag=spectating_{0},nbt=!{{Inventory:[{{id:"shield"}}]}}] hotbar.8 with shield{{display:{{Name:'{{"text":"Right Click to Leave","color":"red","italic":false}}'}},bwLeaveClick:1b,BlockEntityTag:{{Base:14,Patterns:[{{Color:0,Pattern:"mr"}},{{Color:14,Pattern:"vh"}}]}}}} 1""")
                ]
            },
            "wait": {
                COMMANDS: [
                    textwrap.dedent(f"""\
                        function bedwars:{{0}}/count_players
                        scoreboard players set {{0}} bwRdyPlyrs 0 
                        execute as @a[tag=playing_{{0}},scores={{{{start_bedwars=1}}}}] run tellraw @a[tag=playing_{{0}}] [{{{{"selector":"@s","color":"dark_purple"}}}},{{{{"text":" is ready to start!","color":"aqua"}}}}]
                        scoreboard players set @a[tag=playing_{{0}},scores={{{{start_bedwars=1}}}}] start_bedwars 2
                        execute as @a[tag=playing_{{0}},scores={{{{start_bedwars=1..}}}}] run scoreboard players add {{0}} bwRdyPlyrs 1
                        execute if score {{0}} bwPlyrCnt matches 2.. if score {{0}} bwRdyPlyrs = {{0}} bwPlyrCnt run function bedwars:{{0}}/initiate_countdown"""),
                    *[f"execute as @a[tag=playing_{{0}},team=bw{t.color}] run teleport @s {t.bed_pos}" for t in self.teams]
                ]
            }
        }

        self._classes = [
            self._bed_destroyed,
            self._bedwars,
            self._respawn,
            self._team_queue,
            self._victory
        ]

    def get_num_teams(self) -> int:
        return len(self.teams)

    def generate(self) -> None:
        writer = FuncWriter(BEDWARS_FUNC_FOLDER + f"{self.name}/", self.name)
        writer.write_functions(self._bedwars)

        tq = FuncWriter(BEDWARS_FUNC_FOLDER + f"{self.name}/team_queue/", self.name)
        tq.write_functions(self._team_queue)

        bd = FuncWriter(BEDWARS_FUNC_FOLDER + f"{self.name}/bed_destroyed/", self.name)
        bd.write_functions(self._bed_destroyed)

        re = FuncWriter(BEDWARS_FUNC_FOLDER + f"{self.name}/respawn/", self.name)
        re.write_functions(self._respawn)

        vi = FuncWriter(BEDWARS_FUNC_FOLDER + f"{self.name}/victory/", self.name)
        vi.write_functions(self._victory)



def castleinthesky():
    castle_teams = [
        BedWarsTeam("red", BlockPos(1080, 96, 1003), [("red_wool", 64)]),
        BedWarsTeam("yellow", BlockPos(1156, 96, 1079), [("yellow_wool", 64)]),
        BedWarsTeam("green", BlockPos(1004, 96, 1079), [("lime_wool", 64)]),
        BedWarsTeam("blue", BlockPos(1080, 96, 1155), [("light_blue_wool", 64)])
    ]

    arena_name = "bwcastle"
    proper_name = "Castle in the Sky"
    castle = BedWars(arena_name, proper_name, 3,
                     castle_teams, BlockPos(1080, 181, 1079))

    castle.generate()
    arena = Arena(arena_name, proper_name, BlockPos(
        954, 1, 960), BlockPos(1208, 254, 1200))
    arena.generate()


castleinthesky()
