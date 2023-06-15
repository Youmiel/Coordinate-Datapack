<%namespace name="config" file="mako_config.mako"/>
<%
    cfg = config.attr
%>
scoreboard objectives add ${cfg.trigger_coord} trigger
scoreboard objectives add ${cfg.trigger_trace} trigger
scoreboard objectives add ${cfg.trigger_menu} trigger

scoreboard objectives add coord_global dummy
scoreboard objectives add coord_id dummy
scoreboard objectives add coord_target dummy
scoreboard objectives add coord_countdown dummy
scoreboard objectives add coord_update dummy
scoreboard objectives add coord_mark dummy

scoreboard objectives modify ${cfg.trigger_menu} displayname "Coordinate Access Menu"

execute unless score #enable coord_global matches -2147483648..2147483647 run scoreboard players set #enable coord_global 1
execute unless score #trace_enable coord_global matches -2147483648..2147483647 run scoreboard players set #trace_enable coord_global 1
execute unless score #menu_enable coord_global matches -2147483648..2147483647 run scoreboard players set #menu_enable coord_global 1

# force set enable flag
# scoreboard players set #enable coord_global 1
# scoreboard players set #trace_enable coord_global 1
# scoreboard players set #menu_enable coord_global 1

# 120 * 10 / 20 = 60 s
scoreboard players set #trace_time coord_countdown ${cfg.countdown_tick}
scoreboard players set #sparse_tick coord_countdown ${cfg.sparse_tick}

scoreboard players set #range_max coord_global ${cfg.trace_range_max_10}

scoreboard players set #constant_8 coord_global 8