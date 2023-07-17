<%namespace name="config" file="../mako_config.mako"/>
<%
    cfg = config.attr
%>
# context:
#   - executor: the player
#   - position: the player's position
#   - facing: UNKNOWN
# input:
#   - @s @ ${cfg.trigger_coord}
# output: 
#   - None

#   - #success @ coord_global

# execute if score @s ${cfg.trigger_coord} matches 1.. run scoreboard players operation @s ${cfg.trigger_coord} = @s coord_id
scoreboard players operation #target_id coord_global = @s ${cfg.trigger_coord}
execute if score @s coord_id = @s ${cfg.trigger_coord} run effect give @s glowing 16 0 true
execute as @a if score @s coord_id = #target_id coord_global at @s run function coord:coordinate/get_other_pos

scoreboard players reset @s ${cfg.trigger_coord}