$execute if score time_since_goat_horn_use check.callyourhorse matches 1 run forceload add $(horse_UUID_latest_position_x) $(horse_UUID_latest_position_z)

$execute if score time_since_goat_horn_use check.callyourhorse matches 4 run teleport @e[type=horse,nbt={Owner:$(player_UUID),UUID:$(horse_UUID_from_horn)}] @s
$execute if score time_since_goat_horn_use check.callyourhorse matches 4 run teleport @e[type=donkey,nbt={Owner:$(player_UUID),UUID:$(horse_UUID_from_horn)}] @s
$execute if score time_since_goat_horn_use check.callyourhorse matches 4 run teleport @e[type=llama,nbt={Owner:$(player_UUID),UUID:$(horse_UUID_from_horn)}] @s
$execute if score time_since_goat_horn_use check.callyourhorse matches 4 run teleport @e[type=mule,nbt={Owner:$(player_UUID),UUID:$(horse_UUID_from_horn)}] @s
$execute if score time_since_goat_horn_use check.callyourhorse matches 4 run teleport @e[type=skeleton_horse,nbt={Owner:$(player_UUID),UUID:$(horse_UUID_from_horn)}] @s
$execute if score time_since_goat_horn_use check.callyourhorse matches 4 run teleport @e[type=trader_llama,nbt={Owner:$(player_UUID),UUID:$(horse_UUID_from_horn)}] @s

$execute if score time_since_goat_horn_use check.callyourhorse matches 7 run forceload remove $(horse_UUID_latest_position_x) $(horse_UUID_latest_position_z)

data remove storage callyourhorse:root horse_UUID_latest_position_x 
data remove storage callyourhorse:root horse_UUID_latest_position_z 
data remove storage callyourhorse:root horse_UUID_from_horn
data remove storage callyourhorse:root UUID
data remove storage callyourhorse:root player_UUID
data remove storage callyourhorse:root horse_name_from_horn
