import os

summon_command = """execute align xz run summon armor_stand ~{0} ~{1} ~{2} {{NoGravity:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["{3}"],ArmorItems:[{{}},{{}},{{id:"minecraft:barrier",Count:1b,tag:{{structure:"{4}"}}}},{{}}]}}\n"""


def gen_on_reload(structure_name):
    reload_func = open(f'reset_{structure_name}/reload_{structure_name}.mcfunction', 'w')
    reload_func.write(f'scoreboard objectives add ld.{structure_name} dummy\n')
    reload_func.write(f'scoreboard objectives add sv.{structure_name} dummy\n')

    reload_func.close()

def gen_setup(structure_name, start_pos, end_pos):
    try:
        os.mkdir(f'reset_{structure_name}/')
    except FileExistsError:
        pass

    setup_func = open(f'reset_{structure_name}/setup_{structure_name}.mcfunction', 'w')
    setup_func.write("# AUTO GENERATED FUNCTION DO NOT EDIT\n")

    dx = end_pos[0] - start_pos[0]
    dy = end_pos[1] - start_pos[1]
    dz = end_pos[2] - start_pos[2]

    dx = dx if dx != 0 else 1
    dy = dy if dy != 0 else 1
    dz = dz if dz != 0 else 1

    x_dir = abs(dx) // dx
    y_dir = abs(dy) // dy
    z_dir = abs(dz) // dz

    for x in range(0, dx, 48 * x_dir):
        for y in range(0, dy, 48 * y_dir):
            for z in range(0, dz, 48 * z_dir):
                setup_func.write(f"""forceload add ~{x} ~{z}\n""")
                setup_func.write(summon_command.format(x, y, z,
                                                    f'{structure_name}_structmarker',
                                                    f'mod_mini:{structure_name}_{x}.{y}.{z}'))
                
    setup_func.write("""forceload remove all\n""")
    setup_func.close()


def gen_save(structure_name):
    save_func = open(f'reset_{structure_name}/save_{structure_name}.mcfunction', 'w')
    save_func.write(f"""tellraw @a {{"text":"Beginning save of {structure_name}!","color":"green"}}\n""")
    save_func.write(f'scoreboard players add saveNum sv.{structure_name} 1\n')
    save_func.close()

def gen_load(structure_name):
    load_func = open(f'reset_{structure_name}/load_{structure_name}.mcfunction', 'w')
    load_func.write(f"""tellraw @a {{"text":"Beginning load of {structure_name}!","color":"red"}}\n""")
    load_func.write(f'scoreboard players add loadNum ld.{structure_name} 1\n')
    load_func.close()

def gen_tick(structure_name):
    tick_func = open(f'reset_{structure_name}/tick_{structure_name}.mcfunction', 'w')
    tick_func.write(f'execute as @e[type=armor_stand,tag={structure_name}_structmarker] at @s run function mod_mini:reset_{structure_name}/as_stand_{structure_name}\n')
    tick_func.close()
    gen_as_stand(structure_name)

def gen_as_stand(structure_name):
    as_stand_func = open(f'reset_{structure_name}/as_stand_{structure_name}.mcfunction', 'w')
    # as_stand_func.write('tellraw @a {"selector":"@s"}\n')
    as_stand_func.write(f'scoreboard players add @s sv.{structure_name} 0\n')
    as_stand_func.write(f'scoreboard players add @s ld.{structure_name} 0\n')
    as_stand_func.write(f'execute unless score @s sv.{structure_name} = saveNum sv.{structure_name} run function mod_mini:reset_{structure_name}/save_stand_{structure_name}\n')
    as_stand_func.write(f'execute unless score @s ld.{structure_name} = loadNum ld.{structure_name} run function mod_mini:reset_{structure_name}/load_stand_{structure_name}\n')
    as_stand_func.close()
    gen_save_stand(structure_name)
    gen_load_stand(structure_name)

def gen_save_stand(structure_name):
    save_stand_func = open(f'reset_{structure_name}/save_stand_{structure_name}.mcfunction', 'w')
    save_stand_func.write("""setblock ~ ~-1 ~ structure_block[mode=save]{name:"temp",posX:0,posY:1,posZ:0,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"SAVE",ignoreEntities:0b} replace\n""")
    save_stand_func.write("""data modify block ~ ~-1 ~ name set from entity @s ArmorItems[2].tag.structure\n""")
    save_stand_func.write("""setblock ~ ~-2 ~ redstone_block\n""")
    save_stand_func.write("""fill ~ ~-1 ~ ~ ~-2 ~ air\n""")
    save_stand_func.write(f"""scoreboard players operation @s sv.{structure_name} = saveNum sv.{structure_name}\n""")
    save_stand_func.close()

def gen_load_stand(structure_name):
    load_stand_func = open(f'reset_{structure_name}/load_stand_{structure_name}.mcfunction', 'w')
    load_stand_func.write("""teleport @e[type=!player,dx=48,dy=48,dz=48] ~ -100 ~\n""")
    load_stand_func.write("""setblock ~ ~ ~ structure_block[mode=load]{name:"temp",posX:0,posY:0,posZ:0,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace\n""")
    load_stand_func.write("""data modify block ~ ~ ~ name set from entity @s ArmorItems[2].tag.structure\n""")
    load_stand_func.write("""setblock ~ ~1 ~ redstone_block\n""")
    load_stand_func.write(f"""scoreboard players operation @s ld.{structure_name} = loadNum ld.{structure_name}\n""")
    load_stand_func.close()

structure_name = "testb"
gen_setup(structure_name, (0, 0, 0), (500, 20, 500))
gen_on_reload(structure_name)
gen_save(structure_name)
gen_load(structure_name)
gen_tick(structure_name)
