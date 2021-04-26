

struct_block_command = """setblock ~{0} ~{1} ~{2} minecraft:structure_block[mode={3}]{{name:{4},posX:0,posY:1,posZ:0,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"{5}"}} replace"""
redstone_block_command = """setblock ~{0} ~{1} ~{2} minecraft:redstone_block replace"""
air_block_command = """setblock ~{0} ~{1} ~{2} minecraft:air replace"""



def create_load_function(structure_name, end_pos):

    file = open(f'load/{structure_name}.mcfunction', 'w')
    file.write("# AUTO GENERATED FUNCTION DO NOT EDIT\n")

    dx = end_pos[0]
    dy = end_pos[1]
    dz = end_pos[2]

    x_dir = int(abs(dx) / dx)
    y_dir = int(abs(dy) / dy)
    z_dir = int(abs(dz) / dz)

    file.write("\n# force load the chunks to reset\n")
    for x in range(0, dx, 48 * x_dir):
        for z in range(0, dz, 48 * z_dir):
            file.write(f"forceload add ~{x} ~{z}\n")
    file.write('\n')

    for x in range(0, dx, 48 * x_dir):
        for y in range(0, dy, 48 * y_dir):
            for z in range(0, dz, 48 * z_dir):
                file.write(struct_block_command.format(x, y, z, 'load', 'test', 'LOAD'))
                file.write('\n')
                file.write(redstone_block_command.format(x, y - 1, z))
                file.write('\n')
                file.write(air_block_command.format(x, y - 1, z))
                file.write('\n')

    file.write("\n# remove forceload from reset chunks\n")
    file.write(f"forceload remove all")

    file.close()

create_load_function("test", (-300,20,300))
