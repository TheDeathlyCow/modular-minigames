




class Team:
    def __init__(self, name, technical_name=None, color=None) -> None:
        if color is None:
            color = name.lower()
        if technical_name is None:
            technical_name = f'bw{name.lower()}'
        self.name = name
        self.color = color
        self.technical_name = technical_name


def genteam(team: Team) -> list:
    commands = [
        f"team add {team.technical_name} \"{team.name}\"",
        f"team modify {team.technical_name} color {team.color}",
        f"team modify {team.technical_name} collisionRule pushOtherTeams",
        f"team modify {team.technical_name} friendlyFire false",
        f"team modify {team.technical_name} prefix \"[Bed Wars] \""
    ]
    return commands

def genteams():
    TEAMS = [
        Team("Red", color='dark_red'),
        Team("Orange", color='gold'),
        Team("Yellow"),
        Team("Green"),
        Team("Cyan", color='dark_aqua'),
        Team("Blue", color='aqua'),
        Team("Purple", color='dark_purple'),
        Team("Magenta", color='light_purple')
    ]

    func = open('load_teams.mcfunction', 'w')
    for team in TEAMS:
        for command in genteam(team):
            func.write(command + '\n')
    func.close()

genteams()