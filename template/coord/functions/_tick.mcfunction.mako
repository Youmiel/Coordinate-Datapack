<%namespace name="config" file="mako_config.mako"/>
<%
    cfg = config.attr
%>
# player first join
execute as @a unless score @s coord_id matches -2147483648..2147483647 at @s run function coord:on_first_join

# player triggered ${cfg.trigger_coord}
execute as @a if score @s ${cfg.trigger_coord} matches 1.. run scoreboard players operation @s ${cfg.trigger_coord} = @s coord_id
execute as @a if score @s ${cfg.trigger_coord} matches ..-1 at @s run function coord:coordinate/trigger

# player triggered ${cfg.trigger_trace}
execute if score #trace_enable coord_global matches 1.. as @a if score @s ${cfg.trigger_trace} matches 1.. at @s run scoreboard players reset @s ${cfg.trigger_trace}
execute if score #trace_enable coord_global matches 1.. as @a if score @s ${cfg.trigger_trace} matches ..-1 at @s run function coord:trace/trigger
execute if score #trace_enable coord_global matches 1.. if score #major_tick coord_global matches 1.. run function coord:trace/major_tick
execute if score #trace_enable coord_global matches 1.. unless score #major_tick coord_global matches 1.. run function coord:trace/minor_tick

# player triggered menu
execute if score #menu_enable coord_global matches 1.. as @a if score @s ${cfg.trigger_menu} matches ..-1 run scoreboard players reset @s ${cfg.trigger_menu}
execute if score #menu_enable coord_global matches 1.. as @a if score @s ${cfg.trigger_menu} matches 1.. at @s run function coord:menu/trigger