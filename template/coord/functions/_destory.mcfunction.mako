<%namespace name="config" file="mako_config.mako"/>
<%
    cfg = config.attr
%>

scoreboard players set #enable coord_global 0
scoreboard players set #trace_enable coord_global 0
scoreboard players set #menu_enable coord_global 0

schedule clear coord:tick_sparse

scoreboard objectives remove ${cfg.trigger_coord}
scoreboard objectives remove ${cfg.trigger_trace} 
scoreboard objectives remove ${cfg.trigger_menu} 

scoreboard objectives remove coord_global 
scoreboard objectives remove coord_id 
scoreboard objectives remove coord_target 
scoreboard objectives remove coord_countdown 
scoreboard objectives remove coord_update 
scoreboard objectives remove coord_mark 