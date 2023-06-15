# context:
#   - executor: the target player
#   - position: the target player's position
#   - facing: unknown
# input:
#   - None
# output: 
#   - #pos_* @ coord_global

execute store result score #pos_x coord_global run data get entity @s Pos[0]
execute store result score #pos_y coord_global run data get entity @s Pos[1]
execute store result score #pos_z coord_global run data get entity @s Pos[2]