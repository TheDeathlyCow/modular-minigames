import os

class BlockPos:
    def __init__(self, x : float, y : float, z : float) -> None:
        self.x = x
        self.y = y
        self.z = z

    def __str__(self):
        return f'{self.x} {self.y} {self.z}'
    
    __repr__ = __str__

HUB_COORDINATES = BlockPos(0, 100, 0)
COMMANDS = 'commands'
COMMENTS = 'comments'

class FuncWriter:

    def __init__(self, base_directory: str, arena_name: str) -> None:
        self.base_directory = base_directory
        self.arena_name = arena_name
        try:
            os.mkdir(self.base_directory)
        except FileExistsError:
            pass

    def write_functions(self, functions : dict):
        for function_name in functions.keys():
            func = functions[function_name]
            commands = func[COMMANDS]
            comments = func.get(COMMENTS, None)
            self.write_function(function_name, commands, comments)

    def write_function(self, name: str, commands: list, comments=None) -> None:
        """
        Writes a given list of commands to a .mcfunction file. Commands do not need endline characters.
        Do not include extension in filename.
        Filename should be something like {arena_name}/{function_name}
        """
        func = open(self.base_directory + name + '.mcfunction', 'w')
        
        if comments is not None:
            for comment in comments:
                func.write("#" + comment + "\n")
            func.write('\n')

        for command in commands:
            func.write((command + '\n').format(self.arena_name))

        func.close()