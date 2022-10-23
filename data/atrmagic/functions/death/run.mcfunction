#実行
execute if entity @s[tag=swordskill6ef,type=player] if entity @a[tag=swordskill6attack] run function atrmagic:death/sword/skill6
execute if entity @s[tag=swordskill8ef,type=player] if entity @a[tag=swordskill8attack] run function atrmagic:death/sword/skill8
execute if entity @s[tag=swordskill9ef_1,type=player] if entity @a[tag=swordskill9attack_1] run function atrmagic:death/sword/skill9_1
execute if entity @s[tag=swordskill9ef_2,type=player] if entity @a[tag=swordskill9attack_2] run function atrmagic:death/sword/skill9_2
execute if entity @s[tag=swordskill9ef_3,type=player] if entity @a[tag=swordskill9attack_3] run function atrmagic:death/sword/skill9_3
execute if entity @s[tag=swordskill9ef_4,type=player] if entity @a[tag=swordskill9attack_4] run function atrmagic:death/sword/skill9_4
execute unless score kill atrjobsetting matches 1 run kill @s
scoreboard players reset kill atrjobsetting