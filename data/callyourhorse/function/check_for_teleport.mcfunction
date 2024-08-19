scoreboard players set &UUID_check check.callyourhorse 1


data modify storage callyourhorse:root horse_UUID_from_horn set from entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tag:{goat_horn_to_call_horse:1b}}}}}] SelectedItem.components."minecraft:custom_data".horse_call.UUID

data modify storage callyourhorse:root UUID set from entity @s UUID

function callyourhorse:check_horse_uuid_match_horn_uuid with storage callyourhorse:root



execute if score &UUID_check check.callyourhorse matches 0 run data modify storage callyourhorse:root player_UUID set from entity @s UUID

execute if score &UUID_check check.callyourhorse matches 0 run data modify storage callyourhorse:root horse_name_from_horn set from entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tag:{goat_horn_to_call_horse:1b}}}}}] SelectedItem.components."minecraft:custom_name"



execute if score &UUID_check check.callyourhorse matches 0 run function callyourhorse:get_latest_position with storage callyourhorse:root


execute if score &UUID_check check.callyourhorse matches 0 run execute store result score horse_UUID_lates_position_x store_position.callyourhorse run data get storage callyourhorse:root horse_UUID_latest_position_x

execute if score &UUID_check check.callyourhorse matches 0 run execute store result score horse_UUID_lates_position_z store_position.callyourhorse run data get storage callyourhorse:root horse_UUID_latest_position_z

execute if score &UUID_check check.callyourhorse matches 0 run execute store result storage callyourhorse:root horse_UUID_latest_position_x int 1 run scoreboard players get horse_UUID_lates_position_x store_position.callyourhorse

execute if score &UUID_check check.callyourhorse matches 0 run execute store result storage callyourhorse:root horse_UUID_latest_position_z int 1 run scoreboard players get horse_UUID_lates_position_z store_position.callyourhorse


execute if score &UUID_check check.callyourhorse matches 0 run function callyourhorse:teleport_horse with storage callyourhorse:root

scoreboard players set &UUID_check check.callyourhorse 1




