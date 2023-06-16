# Coordinate - Datapack

Alternative solution of MCDR's Here and Where plugin.

Developed in Minecraft 1.18.2, should be able to work in Minecraft 1.13.2 to latest version.

## Commands

- `/trigger _coMenu`: displays a user interface menu in the chat
- `/trigger coordinate`: announces the executor’s location in the chat
- `/trigger coordinate set <id>`: querys and announces the target player’s location in the chat
- `/trigger trace set <id>`: indicates the target player’s relative location with a particle effect, lasting for 60 seconds
- `/function coord:_destory`: cleans up the environment before removing the datapack

*\*Note: the `id` is a negative integer maintained by this datapack. To get a player's id, check `coord_id` scoreboard. For example:*

```mcfunction
# players' id are shown in menu
trigger _coMenu
```

```mcfunction
# displays coord_id in player list
scoreboard objectives setdisplay list coord_id
```

## Configuration

### Feature Switch

- `scoreboard players set #enable coord_global <0|1>`: disables/enables the whole datapack's features
- `scoreboard players set #trace_enable coord_global <0|1>`: disables/enables the trace feature
- `scoreboard players set #menu_enable coord_global <0|1>`: disables/enables the menu

### Trace Time

In [mako_config.mako](./template/coord/functions/mako_config.mako), change `countdown_second` to whatever value you want, then rebuild the datapack. Or run command `/scoreboard players set #trace_time coord_countdown <value>`, where `value = countdown_second * 20 / sparse_tick`.

### Maximum ID in Menu

In [coord:menu/trigger.mcfuncton.mako](./template/coord/functions/menu/trigger.mcfunction.mako), change `id_range` to whatever range you want, then rebuild the datapack.

*\*There are more configurable features in source code, check them if needed.*

## Development

This project uses [Mako](https://www.makotemplates.org/) template engine.
