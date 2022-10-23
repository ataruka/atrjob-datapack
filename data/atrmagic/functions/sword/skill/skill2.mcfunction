attribute @s generic.movement_speed modifier add 6bee7b27-848a-4afd-92b6-166706dba79a "atrswordbuff speed+30%" 0.3 multiply
execute if score @s swordjobskill5 matches 1 run attribute @s generic.attack_damage modifier add 315e2dcf-ca56-4e1a-b568-9425475200bb "atrswordbuff damage +4" 4 add
execute if score @s swordjobskill5 matches 1 run effect give @s resistance 2 0 true