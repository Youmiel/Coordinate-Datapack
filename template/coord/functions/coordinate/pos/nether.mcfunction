# context:
#   - executor: the target player
#   - position: the target player's position
#   - facing: UNKNOWN
# input:
#   - None
# output: 
#   - #pos_* @ coord_global
#   - #pos_x_scale @ coord_global
#   - #pos_z_scale @ coord_global

execute store result score #pos_x_scale coord_global run data get entity @s Pos[0] 8
execute store result score #pos_y coord_global run data get entity @s Pos[1]
execute store result score #pos_z_scale coord_global run data get entity @s Pos[2] 8

scoreboard players operation #pos_x coord_global = #pos_x_scale coord_global
scoreboard players operation #pos_z coord_global = #pos_z_scale coord_global
scoreboard players operation #pos_x coord_global /= #constant_8 coord_global
scoreboard players operation #pos_z coord_global /= #constant_8 coord_global
