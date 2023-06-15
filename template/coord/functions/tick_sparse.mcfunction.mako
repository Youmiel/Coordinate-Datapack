<%namespace name="config" file="mako_config.mako"/>
<%
    cfg = config.attr
%>
execute if score #enable coord_global matches 1.. run schedule function coord:tick_sparse ${cfg.sparse_tick}t

execute if score #trace_enable coord_global matches 1.. run scoreboard players set #major_tick coord_global 1
execute if score #trace_enable coord_global matches 1.. as @a[scores={coord_countdown=1..}] run function coord:trace/countdown

execute if score #enable coord_global matches 1.. as @a run scoreboard players enable @s ${cfg.trigger_coord}
execute if score #trace_enable coord_global matches 1.. as @a run scoreboard players enable @s ${cfg.trigger_trace} 
execute if score #menu_enable coord_global matches 1.. as @a run scoreboard players enable @s ${cfg.trigger_menu}