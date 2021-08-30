from function_writer import *
from reset import Arena
import textwrap

PARKOUR_FUNC_FOLDER = "data/parkour/functions/"
LOAD_FUNC = "reset:{0}/_load"


class Parkour:

    def __init__(self, name: str, proper_name: str,  author: str, join_pos: BlockPos, extra_effects: list[str] = None) -> None:
        self.name = name
        self.proper_name = proper_name
        self.author = author
        self.extra_effects = [] if extra_effects is None else extra_effects

        effects = ["effect give @s saturation 999999 10 true\n",
                    "effect give @s regeneration 999999 10 true\n"]
        for effect in self.extra_effects:
            effects.append(effect + "\n")
        
        self._parkour = {
            "_join": {
                COMMANDS: [
                    "tag @s remove in_hub",
                    "tag @s add playing_{0}",
                    "clear @s",
                    *effects,
                    "gamemode adventure @s",
                    f"teleport @s {join_pos}",
                    f"""tellraw @s [{{{{"text":"Welcome to {self.proper_name} by {self.author}!"}}}}]"""
                ]
            },
            "_leave": {
                COMMANDS: [
                    "effect clear @s",
                    "tag @s remove playing_{0}",
                    f"teleport @s {SPAWN_COORDINATES}"
                ]
            }
        }

    def generate(self) -> None:
        writer = FuncWriter(PARKOUR_FUNC_FOLDER + f"{self.name}/", self.name)
        writer.write_functions(self._parkour)

def mossy_caves():
    mossycaves = Parkour("pkcaves", "MossyCaves", "TheDeathlyCow", BlockPos(-32, 61, -738)) 
    mossycaves.generate()

def aqua_temple():
    aquatic = Parkour("pkaqua", "AquaticTemple", "Vaipereq", BlockPos(104, 56, -805)) 
    aquatic.generate()

def reflections():
    # 16.853 s
    reflect = Parkour("pkreflect", "Reflections", "MajorlySourLemon", BlockPos(104, 56, -811)) 
    reflect.generate()

if __name__ == '__main__':
    mossy_caves()
    aqua_temple()
    reflections()