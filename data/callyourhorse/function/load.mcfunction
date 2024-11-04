tellraw @a ["",{"text":"Call Your Horse","color":"blue","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/call-your-horse"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/call-your-horse"}},{"text":" loaded - ","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/call-your-horse"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/call-your-horse"}},{"text":"[1.21]","color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/call-your-horse"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/call-your-horse"}},{"text":" ","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/call-your-horse"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/call-your-horse"}},{"text":"v.1.1.3","color":"dark_green","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/call-your-horse"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/call-your-horse"}}]

scoreboard objectives add help.callyourhorse trigger

scoreboard objectives add config.callyourhorse dummy

scoreboard objectives add check.callyourhorse dummy

scoreboard objectives add use_goat_horn minecraft.used:minecraft.goat_horn

scoreboard objectives add store_position.callyourhorse dummy

scoreboard objectives add sneak_time.callyourhorse custom:sneak_time

scoreboard players set @a sneak_time.callyourhorse 0

scoreboard players set @a use_goat_horn 0