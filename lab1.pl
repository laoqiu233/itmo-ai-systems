% Potions, base potion, ingredient

% Base potions
potion(water_bottle, bottle, water).
potion(awkward_bottle, water_bottle, nether_wart).
potion(mundane_potion, water_bottle, spider_eye).
potion(mundane_potion, water_bottle, ghast_tear).
potion(mundane_potion, water_bottle, rabbit_foot).
potion(mundane_potion, water_bottle, blaze_powder).
potion(mundane_potion, water_bottle, gliterring_melon).
potion(mundane_potion, water_bottle, sugar).
potion(mundane_potion, water_bottle, magma_cream).
potion(mundane_potion, water_bottle, redstone_dust).
potion(thick_potion, water_bottle, glowstone_dust).

% Effect potions
potion(potion_of_weakness, water_bottle, fermented_spider_eye).
potion(potion_of_swiftness, awkward_potion, sugar).
potion(potion_of_slowness, potion_of_swiftness, fermented_spider_eye).
potion(potion_of_leaping, awkward_potion, rabbit_foot).

