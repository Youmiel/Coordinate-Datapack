<%namespace name="config" file="../mako_config.mako"/>
<%
    cfg = config.attr
    id_range = range(25)
%>
# tellraw @s {"color":"light_purple","text":"玩家列表:"}
% for id in id_range:
execute if entity @a[scores={coord_id=${-id-1}},limit=1] run tellraw @s ["",{"color":"gray","text":"- "},{"color":"reset","selector":"@a[scores={coord_id=${-id-1}},limit=1]"}," ",{"text":"ID:${-id-1} ","color":"light_purple"},{"text":"[●]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ${cfg.trigger_coord} set ${-id-1}"},"hoverEvent":{"action":"show_text","contents":{"text":"查询坐标","color":"light_purple"}}}," ",{"text":"[⏩]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger ${cfg.trigger_trace} set ${-id-1}"},"hoverEvent":{"action":"show_text","contents":{"text":"追踪坐标","color":"light_purple"}}}]
% endfor

scoreboard players reset @s ${cfg.trigger_menu} 