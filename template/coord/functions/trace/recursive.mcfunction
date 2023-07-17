# context:
#   - executor: UNKNOWN
#   - position: UNKNOWN
#   - facing: UNKNOWN
# input:
#   - #update_count @ coord_global
# output: 
#   - None

execute as @a[limit=1,scores={coord_update=1..}] at @s run function coord:trace/trace_target

scoreboard players remove #update_count coord_global 1
execute if score #update_count coord_global matches 1.. run function coord:trace/recursive