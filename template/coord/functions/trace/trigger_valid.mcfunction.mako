<%namespace name="config" file="../mako_config.mako"/>
<%
    cfg = config.attr
%>
# context:
#   - executor: the player
#   - position: the player's position
#   - facing: UNKNOWN
# input:
#   - @s @ ${cfg.trigger_trace}
# output: 
#   - @s @ coord_target

scoreboard players operation @s coord_target = @s ${cfg.trigger_trace}
scoreboard players operation @s coord_countdown = #trace_time coord_countdown

scoreboard players operation #targt_id coord_global = @s coord_target
execute as @a if score @s coord_id = #targt_id coord_global run scoreboard players set @s coord_mark 1
tellraw @s [{"color": "gold", "text": ""}, "[+] 正在追踪 ", {"selector":"@a[scores={coord_mark=1..}, limit=1]"}]

scoreboard players set @a[scores={coord_mark=1..}] coord_mark 0