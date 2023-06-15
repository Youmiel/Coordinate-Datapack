# context:
#   - executor: the player with positive countdown
#   - position: unknown
#   - facing: unknown
# input:
#   - @s @ coord_countdown
#   - @s @ coord_target
# output: 
#   - None

scoreboard players remove @s coord_countdown 1
execute if score @s coord_countdown matches ..0 run function coord:trace/reset

execute if score @s coord_target matches ..-1 run scoreboard players set @s coord_update 1
