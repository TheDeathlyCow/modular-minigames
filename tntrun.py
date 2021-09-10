from function_writer import *
from reset import Arena
from spleef import get_countdown_commands

TNT_RUN_FUNC_FOLDER = "data/tntrun/functions/"
LOAD_FUNC = "reset:{self.name}/_load"
class TNTRun:

    def __init__(self, name: str, proper_name: str, player_pos: BlockPos, spectator_pos: BlockPos) -> None:
        self.name = name
        self.proper_name = proper_name
        self.player_pos = player_pos
        self.spectator_pos = spectator_pos
        self._tnt_run = {
            "load": {
                COMMANDS: [
                    f"scoreboard players add {self.name} tntrState 0"
                ]
            },
            "_join": {
                COMMANDS: [
                    "clear @s",
                    "experience set @s 0 levels",
                    "experience set @s 0 points",
                    "effect clear @s",
                    "effect give @s instant_health 1 10",
                    "effect give @s saturation 1 10",
                    "gamemode adventure @s",
                    f"scoreboard players operation {self.name} isTntrRunning -= binary modulus",
                    f"execute if score {self.name} isTntrRunning matches -2 run function tntrun:{self.name}/join_game",
                    f"execute if score {self.name} isTntrRunning matches -1 run function tntrun:{self.name}/join_spectators",
                    f"scoreboard players operation {self.name} isTntrRunning %= binary modulus"
                ],
                COMMENTS: [
                    "# execute as a player attempting to join, at their position"
                ]
            },
            "_leave_game": {
                COMMANDS: [
                    "tellraw @a[tag=playing_{0}] [{{\"selector\":\"@s\"}},{{\"text\":\" has left {1}!\",\"color\":\"aqua\"}}]".format(
                        self.name, self.proper_name),
                    "tellraw @a[tag=spectating_{0}] [{{\"selector\":\"@s\"}},{{\"text\":\" has left {1}!\",\"color\":\"aqua\"}}]".format(
                        self.name, self.proper_name),
                    "team leave @s",
                    "teleport @s {0}".format(HUB_COORDINATES),
                    "spawnpoint @s {0}".format(HUB_COORDINATES),
                    f"tag @s remove spectating_{self.name}",
                    f"tag @s remove playing_{self.name}",
                    f"tag @s remove leave_{self.name}",
                    "scoreboard players reset @s start_tntrun",
                    "scoreboard players reset @s leave_tntrun",
                    "scoreboard players reset @s tntrunOver",
                    "clear @s",
                    "function modular_minigames:_arrive"
                ],
                COMMENTS: [
                    "executes as a player wanting to leave, at their position"
                ]
            },
            "check_victory": {
                COMMANDS: [
                    f"function tntrun:{self.name}/count_players",
                    f"execute if score {self.name} tntrPlyrCnt matches 1 as @a[tag=playing_{self.name},limit=1] at @s run function tntrun:{self.name}/victory",
                    f"execute if score {self.name} tntrPlyrCnt matches 0 run function tntrun:{self.name}/victory"
                ]
            },
            "count_players": {
                COMMANDS: [
                    f"scoreboard players set {self.name} tntrPlyrCnt 0",
                    f"execute as @a[tag=playing_{self.name}] run scoreboard players add {self.name} splfPlyrCnt 1"
                ]
            },
        }
    def gen(self):
        self.gen_tntr(TNT_RUN_FUNC_FOLDER)
        writer = FuncWriter(TNT_RUN_FUNC_FOLDER +
                    f"{self.name}/tntrun/", self.name)
        writer.write_functions(self._tnt_run)


