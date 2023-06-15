# context:
#   - executor: the player
#   - position: on the path of ray
#   - facing: towards target player
# input:
#   - #length @ coord_global 
# output: 
#   - None

scoreboard players remove #length coord_global 1

execute unless block ^ ^ ^0.1 #coord:air run scoreboard players set #length coord_global 0
execute if score #length coord_global matches ..0 run particle composter ^ ^ ^ 0 0 0 0 1 normal @s
execute if block ~ ~ ~ #coord:air if score #length coord_global matches 1.. positioned ^ ^ ^0.1 run function coord:trace/draw_point