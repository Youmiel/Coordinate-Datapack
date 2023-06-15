# context:
#   - executor: the target player
#   - position: the target player's position
#   - facing: unknown
# input:
#   - None
# output: 
#   - #pos_* @ coord_global
#   - #pos_x_scale @ coord_global
#   - #pos_z_scale @ coord_global

execute store result score #pos_x coord_global run data get entity @s Pos[0]
execute store result score #pos_y coord_global run data get entity @s Pos[1]
execute store result score #pos_z coord_global run data get entity @s Pos[2]

scoreboard players operation #pos_x_scale coord_global = #pos_x coord_global
scoreboard players operation #pos_z_scale coord_global = #pos_z coord_global
scoreboard players operation #pos_x_scale coord_global /= #constant_8 coord_global
scoreboard players operation #pos_z_scale coord_global /= #constant_8 coord_global
