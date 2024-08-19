scoreboard players set @s get_horn_to_call 0

scoreboard players set &UUID_check check.callyourhorse 1

execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=horse] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=horse,sort=nearest,limit=1] add horse_to_call
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=horse] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=horse,sort=nearest,limit=1] add horse_can_be_called
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=donkey] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=donkey,sort=nearest,limit=1] add horse_to_call
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=donkey] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=donkey,sort=nearest,limit=1] add horse_can_be_called
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=llama] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=llama,sort=nearest,limit=1] add horse_to_call
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=llama] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=llama,sort=nearest,limit=1] add horse_can_be_called
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=mule] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=mule,sort=nearest,limit=1] add horse_to_call
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=mule] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=mule,sort=nearest,limit=1] add horse_can_be_called
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=skeleton_horse] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=skeleton_horse,sort=nearest,limit=1] add horse_to_call
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=skeleton_horse] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=skeleton_horse,sort=nearest,limit=1] add horse_can_be_called
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=trader_llama] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=trader_llama,sort=nearest,limit=1] add horse_to_call
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=trader_llama] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=trader_llama,sort=nearest,limit=1] add horse_can_be_called

execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=mule] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run say looked at mule
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=horse] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run say looked at horse


# compare both UUIDs
data modify storage callyourhorse:root UUID set from entity @e[type=horse,limit=1,tag=horse_to_call] Owner
data modify storage callyourhorse:root UUID set from entity @e[type=donkey,limit=1,tag=horse_to_call] Owner
data modify storage callyourhorse:root UUID set from entity @e[type=llama,limit=1,tag=horse_to_call] Owner
data modify storage callyourhorse:root UUID set from entity @e[type=mule,limit=1,tag=horse_to_call] Owner
data modify storage callyourhorse:root UUID set from entity @e[type=skeleton_horse,limit=1,tag=horse_to_call] Owner
data modify storage callyourhorse:root UUID set from entity @e[type=trader_llama,limit=1,tag=horse_to_call] Owner


execute store success score &UUID_check check.callyourhorse run data modify storage callyourhorse:root UUID set from entity @s UUID


# get horse UUID to store in goat horn
data modify storage callyourhorse:root horse_UUID_to_call set from entity @e[type=horse,limit=1,tag=horse_to_call] UUID
data modify storage callyourhorse:root horse_UUID_to_call set from entity @e[type=donkey,limit=1,tag=horse_to_call] UUID
data modify storage callyourhorse:root horse_UUID_to_call set from entity @e[type=llama,limit=1,tag=horse_to_call] UUID
data modify storage callyourhorse:root horse_UUID_to_call set from entity @e[type=mule,limit=1,tag=horse_to_call] UUID
data modify storage callyourhorse:root horse_UUID_to_call set from entity @e[type=skeleton_horse,limit=1,tag=horse_to_call] UUID
data modify storage callyourhorse:root horse_UUID_to_call set from entity @e[type=trader_llama,limit=1,tag=horse_to_call] UUID


# get horse name
data modify storage callyourhorse:root horse_name set from entity @e[type=horse,limit=1,tag=horse_to_call] CustomName
data modify storage callyourhorse:root horse_name set from entity @e[type=donkey,limit=1,tag=horse_to_call] CustomName
data modify storage callyourhorse:root horse_name set from entity @e[type=llama,limit=1,tag=horse_to_call] CustomName
data modify storage callyourhorse:root horse_name set from entity @e[type=mule,limit=1,tag=horse_to_call] CustomName
data modify storage callyourhorse:root horse_name set from entity @e[type=skeleton_horse,limit=1,tag=horse_to_call] CustomName
data modify storage callyourhorse:root horse_name set from entity @e[type=trader_llama,limit=1,tag=horse_to_call] CustomName


# execute give goat horn
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=horse,tag=horse_to_call] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function callyourhorse:goat_horn_give_macro with storage callyourhorse:root
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=donkey,tag=horse_to_call] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function callyourhorse:goat_horn_give_macro with storage callyourhorse:root
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=llama,tag=horse_to_call] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function callyourhorse:goat_horn_give_macro with storage callyourhorse:root
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=mule,tag=horse_to_call] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function callyourhorse:goat_horn_give_macro with storage callyourhorse:root
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=skeleton_horse,tag=horse_to_call] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function callyourhorse:goat_horn_give_macro with storage callyourhorse:root
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=trader_llama,tag=horse_to_call] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function callyourhorse:goat_horn_give_macro with storage callyourhorse:root



scoreboard players set &UUID_check check.callyourhorse 1

tag @e remove horse_to_call

scoreboard players set @s get_horn_to_call 0

data remove storage callyourhorse:root UUID

data remove storage callyourhorse:root horse_UUID_to_call

data remove storage callyourhorse:root horse_name

