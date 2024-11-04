# help
scoreboard players enable @a help.callyourhorse
execute as @a if score @s help.callyourhorse matches 1 run function callyourhorse:trigger_help

# initiate horse teleport
tag @a[scores={use_goat_horn=1},limit=1] add calling_horse

execute as @a[scores={use_goat_horn=1}] run function callyourhorse:horse_teleport/check_for_teleport

execute as @a[scores={use_goat_horn=1}] run scoreboard players add time_since_goat_horn_use check.callyourhorse 1

tag @a[scores={use_goat_horn=0},limit=1] remove calling_horse

# time counter for horse teleport function
execute if score time_since_goat_horn_use check.callyourhorse matches 8 run scoreboard players set @a use_goat_horn 0
execute if score time_since_goat_horn_use check.callyourhorse matches 8 run scoreboard players set time_since_goat_horn_use check.callyourhorse 0

# save horse position
execute as @e[type=horse,tag=horse_can_called] run function callyourhorse:horse_teleport/save_uuid with storage callyourhorse:root
execute as @e[type=donkey,tag=horse_can_called] run function callyourhorse:horse_teleport/save_uuid with storage callyourhorse:root
execute as @e[type=llama,tag=horse_can_called] run function callyourhorse:horse_teleport/save_uuid with storage callyourhorse:root
execute as @e[type=mule,tag=horse_can_called] run function callyourhorse:horse_teleport/save_uuid with storage callyourhorse:root
execute as @e[type=skeleton_horse,tag=horse_can_called] run function callyourhorse:horse_teleport/save_uuid with storage callyourhorse:root
execute as @e[type=trader_llama,tag=horse_can_called] run function callyourhorse:horse_teleport/save_uuid with storage callyourhorse:root


# sneak time counter
execute as @a[scores={sneak_time.callyourhorse=40..}] if entity @s[nbt={SelectedItem:{id:"minecraft:goat_horn"}}] run function callyourhorse:goat_horn_give/get_horn_to_call

execute as @a[scores={sneak_time.callyourhorse=50..}] run scoreboard players set @a sneak_time.callyourhorse 0


