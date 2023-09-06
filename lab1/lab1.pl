%
% Ingredients
%
ingredient(nether_wart).
ingredient(sugar).
ingredient(rabbit_foot).
ingredient(blaze_powder).
ingredient(gliterring_melon).
ingredient(spider_eye).
ingredient(ghast_tear).
ingredient(magma_cream).
ingredient(pufferfish).
ingredient(golden_carrot).
ingredient(turtle_shell).
ingredient(phantom_membrane).
ingredient(fermented_spider_eye).

%
% Base potions
%

potion(bottle).
potion(water_bottle).
potion(awkward_potion).
potion(mundane_potion).
potion(thick_potion).

%
% Effect potions
%

% Swiftness
potion(potion_of_swiftness).
potion(potion_of_swiftness_two).
potion(potion_of_switftness_plus).

% Slowness
potion(potion_of_slowness).
potion(potion_of_slowness_plus).
potion(potion_of_slowness_four).

% Leaping
potion(potion_of_leaping).
potion(potion_of_leaping_plus).
potion(potion_of_leaping_two).

% Strength
potion(potion_of_strength).
potion(potion_of_strength_plus).
potion(potion_of_strength_two).


% Healing
potion(potion_of_healing).
potion(potion_of_healing_two).

% Harming
potion(potion_of_harming).
potion(potion_of_harming_two).

% Poison
potion(potion_of_poison).
potion(potion_of_poison_two).
potion(potion_of_poison_plus).

% Regeneration
potion(potion_of_regeneration).
potion(potion_of_regeneration_plus).
potion(potion_of_regeneration_two).

% Fire resistance
potion(potion_of_fire_resistance).
potion(potion_of_fire_resistance_plus).

% Water breathing
potion(potion_of_water_breathing).
potion(potion_of_water_breathing_plus).

% Night vision
potion(potion_of_night_vision).
potion(potion_of_night_vision_plus).

% Invisibility
potion(potion_of_invisibility).
potion(potion_of_invisibility_plus).

% Turtle Master
potion(potion_of_the_turtle_master).
potion(potion_of_the_turtle_master_plus).
potion(potion_of_the_turtle_master_two).

% Slow falling
potion(potion_of_slow_falling).
potion(potion_of_slow_falling_plus).

% Weakness
potion(potion_of_weakness).
potion(potion_of_weakness_plus).

%
% Effects
% potion_effect(POTION, EFFECT_NAME, EFFECT_TIME_SECS)
%
potion_effect(potion_of_swiftness, swiftness_20_percent, 180).
potion_effect(potion_of_swiftness_two, swiftness_40_percent, 90).
potion_effect(potion_of_switftness_plus, swiftness_20_percent, 480).

potion_effect(potion_of_slowness, slowness_15_percent, 180).
potion_effect(potion_of_slowness_plus, slowness_15_percent, 240).
potion_effect(potion_of_slowness_four, slowness_60_percent, 20).

potion_effect(potion_of_leapness, leapness_50_percent, 180).
potion_effect(potion_of_leaping_plus, leapness_50_percent, 480).
potion_effect(potion_of_leaping_two, leapness_125_percent, 90).

potion_effect(potion_of_strength, strength_1, 180).
potion_effect(potion_of_strength_plus, strength_1, 480).
potion_effect(potion_of_strength_two, strength_2, 90).

potion_effect(potion_of_healing, heal_two_hearts, 0).
potion_effect(potion_of_healing_two, heal_four_hearts, 0).

potion_effect(potion_of_harming, harm_three_hearts, 0).
potion_effect(potion_of_harming_two, harm_six_hearts, 0).

potion_effect(potion_of_poison, poison_1, 45).
potion_effect(potion_of_poison_plus, poison_1, 90).
potion_effect(potion_of_poison_two, poison_2, 21).

potion_effect(potion_of_regeneration, regen_1, 45).
potion_effect(potion_of_regeneration_plus, regen_1, 90).
potion_effect(potion_of_regeneration_two, regen_2, 22).

potion_effect(potion_of_fire_resistance, fire_resistance, 180).
potion_effect(potion_of_fire_resistance_plus, fire_resistance, 480).

potion_effect(potion_of_water_breathing, water_breathing, 180).
potion_effect(potion_of_water_breathing_plus, water_breathing, 480).

potion_effect(potion_of_night_vision, night_vision, 180).
potion_effect(potion_of_night_vision, night_vision, 480).

potion_effect(potion_of_invisibility, invisibility, 180).
potion_effect(potion_of_invisibility, invisibility, 480).

potion_effect(potion_of_the_turtle_master, slowness_4, 20).
potion_effect(potion_of_the_turtle_master, protection_3, 20).
potion_effect(potion_of_the_turtle_master_plus, slowness_4, 40).
potion_effect(potion_of_the_turtle_master_plus, protection_3, 40).
potion_effect(potion_of_the_turtle_master_two, slowness_4, 20).
potion_effect(potion_of_the_turtle_master_two, protection_4, 20).

potion_effect(potion_of_slow_falling, slow_falling, 90).
potion_effect(potion_of_slow_falling_plus, slow_falling, 240).

potion_effect(potion_of_weakness, weakness, 90).
potion_effect(potion_of_weakness_plus, weakness, 240).

%
% Crafting recipes
%

%
% Base potion crafts
%

potion_craft(water_bottle, bottle, water).
potion_craft(awkward_potion, water_bottle, nether_wart).
potion_craft(mundane_potion, water_bottle, spider_eye).
potion_craft(mundane_potion, water_bottle, ghast_tear).
potion_craft(mundane_potion, water_bottle, rabbit_foot).
potion_craft(mundane_potion, water_bottle, blaze_powder).
potion_craft(mundane_potion, water_bottle, gliterring_melon).
potion_craft(mundane_potion, water_bottle, sugar).
potion_craft(mundane_potion, water_bottle, magma_cream).
potion_craft(mundane_potion, water_bottle, redstone_dust).
potion_craft(thick_potion, water_bottle, glowstone_dust).

%
% Effect potion crafts
%

% Swiftness
potion_craft(potion_of_swiftness, awkward_potion, sugar).
potion_craft(potion_of_swiftness_two, potion_of_swiftness, glowstone_dust).
potion_craft(potion_of_switftness_plus, potion_of_swiftness, redstone_dust).

% Leaping
potion_craft(potion_of_leaping, awkward_potion, rabbit_foot).
potion_craft(potion_of_leaping_plus, potion_of_leaping, redstone_dust).
potion_craft(potion_of_leaping_two, potion_of_leaping, glowstone_dust).

% Slowness
potion_craft(potion_of_slowness, potion_of_swiftness, fermented_spider_eye).
potion_craft(potion_of_slowness, potion_of_leaping, fermented_spider_eye).
potion_craft(potion_of_slowness_plus, potion_of_slowness, redstone_dust).
potion_craft(potion_of_slowness_plus, potion_of_switftness_plus, fermented_spider_eye).
potion_craft(potion_of_slowness_plus, potion_of_leaping_plus, fermented_spider_eye).
potion_craft(potion_of_slowness_four, potion_of_slowness, glowstone_dust).

% Strength
potion_craft(potion_of_strength, awkward_potion, blaze_powder).
potion_craft(potion_of_strength_plus, potion_of_strength, redstone_dust).
potion_craft(potion_of_strength_two, potion_of_strength, glowstone_dust).

% Healing
potion_craft(potion_of_healing, awkward_potion, gliterring_melon).
potion_craft(potion_of_healing_two, potion_of_healing, glowstone_dust).

% Poison
potion_craft(potion_of_poison, awkward_potion, spider_eye).
potion_craft(potion_of_poison_two, potion_of_poison, glowstone_dust).
potion_craft(potion_of_poison_plus, potion_of_poison, redstone_dust).

% Harming
potion_craft(potion_of_harming, potion_of_healing, fermented_spider_eye).
potion_craft(potion_of_harming, potion_of_poison, fermented_spider_eye).
potion_craft(potion_of_harming_two, potion_of_harming, glowstone_dust).
potion_craft(potion_of_harming_two, potion_of_healing_two, fermented_spider_eye).
potion_craft(potion_of_harming_two, potion_of_poison_two, fermented_spider_eye).

% Regeneration
potion_craft(potion_of_regeneration, awkward_potion, ghast_tear).
potion_craft(potion_of_regeneration_two, potion_of_regeneration, glowstone_dust).
potion_craft(potion_of_regenration_plus, potion_of_regeneration, redstone_dust).

% Fire resistance
potion_craft(potion_of_fire_resistance, awkward_potion, magma_cream).
potion_craft(potion_of_fire_resistance_plus, potion_of_fire_resistance, redstone_dust).

% Water breathing
potion_craft(potion_of_water_breathing, awkward_potion, pufferfish).
potion_craft(potion_of_water_breathing_plus, potion_of_water_breathing, redstone_dust).

% Night vision
potion_craft(potion_of_night_vision, awkward_potion, golden_carrot).
potion_craft(potion_of_night_vision_plus, potion_of_night_vision, redstone_dust).

% Invisibility
potion_craft(potion_of_invisibility, potion_of_night_vision, fermented_spider_eye).
potion_craft(potion_of_invisibility_plus, potion_of_invisibility, redstone_dust).
potion_craft(potion_of_invisibility_plus, potion_of_night_vision_plus, fermented_spider_eye).

% Turtle Master
potion_craft(potion_of_the_turtle_master, awkward_potion, turtle_shell).
potion_craft(potion_of_the_turtle_master_plus, potion_of_the_turtle_master, redstone_dust).
potion_craft(potion_of_the_turtle_master_two, potion_of_the_turtle_master, glowstone_dust).

% Slow falling
potion_craft(potion_of_slow_falling, awkward_potion, phantom_membrane).
potion_craft(potion_of_slow_falling_plus, potion_of_slow_falling, redstone_dust).

% Weakness
potion_craft(potion_of_weakness, water_bottle, fermented_spider_eye).
potion_craft(potion_of_weakness_plus, potion_of_weakness, redstone_dust).

%
% Rules
%

% If Upgrade_potion is a potential upgrade from 
is_upgrade(Base_potion, Upgrade_potion) :- 
    potion(Base_potion), potion(Upgrade_potion),
    potion_craft(Upgrade_potion, Base_potion, _).
is_upgrade(Base_potion, Upgrade_potion) :- 
    potion(Base_potion), potion(Upgrade_potion),
    potion_craft(T, Base_potion, _),
    is_upgrade(T, Upgrade_potion).

% If an ingredient can lead to a certain potion
ingredient_potion(Base_ingredient, Potion) :-
    ingredient(Base_ingredient),
    potion_craft(Potion, _, Base_ingredient).
ingredient_potion(Base_ingredient, Potion) :-
    ingredient(Base_ingredient),
    potion_craft(T, _, Base_ingredient),
    is_upgrade(T, Potion).


% If an ingredient can produce a certain effecet
ingredient_effect(Ingredient, Effect) :-
    ingredient(Ingredient),
    ingredient_potion(Ingredient, T),
    potion_effect(T, Effect, _).

% If the list of ingredients can lead from base potion to the target potion
ingredient_list_to_potion(Base_potion, Target_potion, [H|T]) :-
    potion(Base_potion), potion(Target_potion), ingredient(H),
    length(T, 0),
    potion_craft(Target_potion, Base_potion, H).
ingredient_list_to_potion(Base_potion, Target_potion, [H|T]) :-
    potion(Base_potion), potion(Target_potion), ingredient(H),
    potion_craft(T_potion, Base_potion, H),
    ingredient_list_to_potion(T_potion, Target_potion, T).

% If the list of ingredients can lead form base potion to the target effect
ingredient_list_to_effect(Base_potion, Target_effect, Ingredients) :-
    potion(Base_potion),
    potion_effect(Target_potion, Target_effect, _),
    ingredient_list_to_potion(Base_potion, Target_potion, Ingredients).