scoreboard players enable @a help.callyourhorse

execute as @a if score @s help.callyourhorse matches 1 run function callyourhorse:trigger_help

scoreboard players enable @a change_goat_horn

scoreboard players enable @a get_horn_to_call

execute as @a if score @s get_horn_to_call matches 1 run function callyourhorse:get_horn_to_call


tag @a[scores={use_goat_horn=1},limit=1] add calling_horse

execute as @a[scores={use_goat_horn=1}] run function callyourhorse:check_for_teleport

execute as @a[scores={use_goat_horn=1}] run scoreboard players add time_since_goat_horn_use check.callyourhorse 1

tag @a[scores={use_goat_horn=0},limit=1] remove calling_horse

execute if score time_since_goat_horn_use check.callyourhorse matches 8 run scoreboard players set @a use_goat_horn 0
execute if score time_since_goat_horn_use check.callyourhorse matches 8 run scoreboard players set time_since_goat_horn_use check.callyourhorse 0


execute as @e[type=horse,tag=horse_can_be_called] run function callyourhorse:save_uuid with storage callyourhorse:root
execute as @e[type=donkey,tag=horse_can_be_called] run function callyourhorse:save_uuid with storage callyourhorse:root
execute as @e[type=llama,tag=horse_can_be_called] run function callyourhorse:save_uuid with storage callyourhorse:root
execute as @e[type=mule,tag=horse_can_be_called] run function callyourhorse:save_uuid with storage callyourhorse:root
execute as @e[type=skeleton_horse,tag=horse_can_be_called] run function callyourhorse:save_uuid with storage callyourhorse:root
execute as @e[type=trader_llama,tag=horse_can_be_called] run function callyourhorse:save_uuid with storage callyourhorse:root


