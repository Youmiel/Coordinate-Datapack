<%namespace name="config" file="../mako_config.mako"/>
<%
    cfg = config.attr
    range_min = cfg.trace_range_min
    range_max = cfg.trace_range_max
    distance_range = range(range_min, range_max)
%>

# context:
#   - executor: the player
#   - position: the player's position
#   - facing: unknown
# input:
#   - None
# output: 
#   - None

scoreboard players operation #target_id coord_global = @s coord_target
execute as @a if score @s coord_id = #target_id coord_global run scoreboard players set @s coord_mark 1

scoreboard players operation #length coord_global = #range_max coord_global
# execute at @a[limit=1,scores={coord_mark=1..},sort=nearest,distance=..5] anchored eyes positioned ^ ^ ^ run particle composter ~ ~0.3 ~ 0 0 0 0 1 normal @s
# execute if entity @a[limit=1,scores={coord_mark=1..},sort=nearest,distance=5..] anchored eyes facing entity @a[scores={coord_mark=1..},limit=1] eyes run function coord:trace/draw_point
execute at @a[limit=1,scores={coord_mark=1..},sort=nearest,distance=..${cfg.trace_range_min}] anchored eyes positioned ^ ^ ^ run particle composter ~ ~0.35 ~ 0 0 0 0 1 normal @s
% for distance in distance_range:
execute if entity @a[limit=1,scores={coord_mark=1..},sort=nearest,distance=${distance}..${distance+1}] run scoreboard players set #length coord_global ${distance*10-1}
% endfor
execute if entity @a[limit=1,scores={coord_mark=1..},sort=nearest,distance=${cfg.trace_range_min}..] anchored eyes facing entity @a[scores={coord_mark=1..},limit=1] eyes run function coord:trace/draw_point

scoreboard players set @a[scores={coord_mark=1..}] coord_mark 0
scoreboard players set @s coord_update 0