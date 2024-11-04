loot spawn ~ ~100 ~ loot callyourhorse:player_head
data modify storage callyourhorse:root player_name set from entity @e[nbt={Item:{components:{"minecraft:custom_data":{callyourhorse_playername:1b}}}},limit=1] Item.components."minecraft:profile".name
kill @e[nbt={Item:{components:{"minecraft:custom_data":{callyourhorse_playername:1b}}}}]