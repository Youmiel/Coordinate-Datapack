execute store result score #update_count coord_global if entity @a[scores={coord_update=1..}]
scoreboard players operation #update_per coord_global = #update_count coord_global
scoreboard players operation #update_per coord_global /= #sparse_tick coord_global
scoreboard players add #update_per coord_global 1

scoreboard players set #major_tick coord_global 0

scoreboard players operation #update_count coord_global = #update_per coord_global
execute if score #update_count coord_global matches 1.. run function coord:trace/recursive
