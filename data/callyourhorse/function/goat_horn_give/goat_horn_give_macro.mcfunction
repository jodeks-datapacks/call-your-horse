$item replace entity @s hotbar.$(goat_horn_slot) with goat_horn[custom_name='$(horse_name)',lore=['{"color":"dark_gray","italic":false,"text":$(player_name)}'],custom_data={tag:{goat_horn_to_call_horse:1b},horse_call:{UUID:$(horse_UUID_to_call)}},enchantment_glint_override=true,instrument="$(goat_horn_instrument)"]

data remove storage callyourhorse:root UUID
data remove storage callyourhorse:root horse_UUID_to_call
data remove storage callyourhorse:root horse_name
data remove storage callyourhorse:root goat_horn_instrument
data remove storage callyourhorse:root goat_horn_slot