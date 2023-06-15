# context:
#   - executor: target player
#   - position: the target player's position
#   - facing: unknown
# input:
#   - @s @ coordinate
# output: 
#   - None

function coord:coordinate/get_pos

scoreboard players set #success coord_global 0
execute store success score #success coord_global as @s[nbt={Dimension:"minecraft:overworld"}] run tellraw @a ["",{"color": "yellow","selector":"@s"}," @ ",{"color": "dark_green","nbt":"Dimension","entity":"@s"},{"text":" ","color":"yellow","extra":["[",{"score":{"name":"#pos_x","objective":"coord_global"}},", ",{"score":{"name":"#pos_y","objective":"coord_global"}},", ",{"score":{"name":"#pos_z","objective":"coord_global"}},"]"]},{"text":" -> ","color":"gray"},{"text":"","color":"red","extra":["[",{"score":{"name":"#pos_x_scale","objective":"coord_global"}},", ",{"score":{"name":"#pos_z_scale","objective":"coord_global"}},"]"]}]
execute store success score #success coord_global as @s[nbt={Dimension:"minecraft:the_nether"}] run tellraw @a ["",{"color": "yellow","selector":"@s"}," @ ",{"color": "dark_red","nbt":"Dimension","entity":"@s"},{"text":" ","color":"red","extra":["[",{"score":{"name":"#pos_x","objective":"coord_global"}},", ",{"score":{"name":"#pos_y","objective":"coord_global"}},", ",{"score":{"name":"#pos_z","objective":"coord_global"}},"]"]},{"text":" -> ","color":"gray"},{"text":"","color":"yellow","extra":["[",{"score":{"name":"#pos_x_scale","objective":"coord_global"}},", ",{"score":{"name":"#pos_z_scale","objective":"coord_global"}},"]"]}]
execute unless score #success coord_global matches 1.. run tellraw @a ["",{"color": "yellow","selector":"@s"}," @ ",{"color": "gold","nbt":"Dimension","entity":"@s"},{"text":" ","color":"dark_green","extra":["[",{"score":{"name":"#pos_x","objective":"coord_global"}},", ",{"score":{"name":"#pos_y","objective":"coord_global"}},", ",{"score":{"name":"#pos_z","objective":"coord_global"}},"]"]}]
