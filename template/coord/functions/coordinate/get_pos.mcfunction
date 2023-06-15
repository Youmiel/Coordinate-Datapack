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

scoreboard players set #success coord_global 0
execute store success score #success coord_global as @s[nbt={Dimension:"minecraft:overworld"}] run function coord:coordinate/pos/overworld
execute store success score #success coord_global as @s[nbt={Dimension:"minecraft:the_nether"}] run function coord:coordinate/pos/nether
execute unless score #success coord_global matches 1.. run function coord:coordinate/pos/other

