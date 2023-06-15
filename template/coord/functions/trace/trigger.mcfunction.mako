<%namespace name="config" file="../mako_config.mako"/>
<%
    cfg = config.attr
%>
# context:
#   - executor: the player
#   - position: the player's position
#   - facing: unknown
# input:
#   - @s @ ${cfg.trigger_trace}
# output: 
#   - @s @ coord_target

execute unless score @s ${cfg.trigger_trace} = @s coord_id run function coord:trace/trigger_valid
execute if score @s ${cfg.trigger_trace} = @s coord_id run tellraw @s {"color": "red", "text": "不能将自己设置为追踪目标"}

scoreboard players reset @s ${cfg.trigger_trace}