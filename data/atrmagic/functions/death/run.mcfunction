#実行
execute if entity @s[tag=swordskill6ef,type=player] if entity @a[tag=swordskill6attack] run function atrmagic:death/sword/skill6
execute if entity @s[tag=swordskill8ef,type=player] if entity @a[tag=swordskill8attack] run function atrmagic:death/sword/skill8
execute if entity @s[tag=swordskill9ef_1,type=player] if entity @a[tag=swordskill9attack_1] run function atrmagic:death/sword/skill9_1
execute if entity @s[tag=swordskill9ef_2,type=player] if entity @a[tag=swordskill9attack_2] run function atrmagic:death/sword/skill9_2
execute if entity @s[tag=swordskill9ef_3,type=player] if entity @a[tag=swordskill9attack_3] run function atrmagic:death/sword/skill9_3
execute if entity @s[tag=swordskill9ef_4,type=player] if entity @a[tag=swordskill9attack_4] run function atrmagic:death/sword/skill9_4
execute if entity @s[tag=atrjob.fire1,type=player] run function atrmagic:death/fire/1
execute if entity @s[tag=atrjob.fire2,type=player] run function atrmagic:death/fire/2
execute if entity @s[tag=atrjob.fire3,type=player] run function atrmagic:death/fire/3
execute if entity @s[tag=swordskill10ef,type=player] if entity @a[tag=swordskill10attack] run function atrmagic:death/sword/skill10_1
execute if entity @s[tag=swordskill10ef_2,type=player] if entity @a[tag=swordskill10attack_2] run function atrmagic:death/sword/skill10_2
execute if entity @s[tag=swordskill10ef_2_armor,type=player] if entity @a[tag=swordskill10attack_2_armor] run function atrmagic:death/sword/skill10_2_armor
execute if entity @s[tag=swordskill10ef_3,type=player] if entity @a[tag=swordskill10attack_3] run function atrmagic:death/sword/skill10_3
execute if entity @s[tag=swordskill10ef_4,type=player] if entity @a[tag=swordskill10attack_4] run function atrmagic:death/sword/skill10_4
execute if entity @s[tag=swordskill10ef_4_armor,type=player] if entity @a[tag=swordskill10attack_4_armor] run function atrmagic:death/sword/skill10_4_armor
execute if entity @s[tag=swordskill10ef_5,type=player] if entity @a[tag=swordskill10attack_5] run function atrmagic:death/sword/skill10_5
execute if entity @s[tag=swordskill10ef_7,type=player] if entity @a[tag=swordskill10attack_7] run function atrmagic:death/sword/skill10_7
execute if entity @s[tag=swordskill10ef_8,type=player] if entity @a[tag=swordskill10attack_8] run function atrmagic:death/sword/skill10_8
execute if entity @s[tag=swordskill10ef_10,type=player] if entity @a[tag=swordskill10attack_10] run function atrmagic:death/sword/skill10_10
execute if entity @s[tag=swordskill10ef_11,type=player] if entity @a[tag=swordskill10attack_11] run function atrmagic:death/sword/skill10_11
execute if entity @s[tag=swordskill10ef_13,type=player] run function atrmagic:death/sword/skill10_13
execute if entity @s[tag=swordskill10ef_14,type=player] if entity @a[tag=swordskill10attack_14] run function atrmagic:death/sword/skill10_14
execute if entity @s[tag=swordskill10ef_14_beam,type=player] if entity @a[tag=swordskill10attack_14_beam] run function atrmagic:death/sword/skill10_14_beam

execute if entity @s[tag=swordskill6ef] as @a[tag=swordskill6attack] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill8ef] as @a[tag=swordskill8attack] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill9ef_1] as @a[tag=swordskill9attack_1] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill9ef_2] as @a[tag=swordskill9attack_2] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill9ef_3] as @a[tag=swordskill9attack_3] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill9ef_4] as @a[tag=swordskill9attack_4] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill10ef] as @a[tag=swordskill10attack] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill10ef_2] as @a[tag=swordskill10attack_2] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill10ef_3] as @a[tag=swordskill10attack_3] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill10ef_4] as @a[tag=swordskill10attack_4] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill10ef_5] as @a[tag=swordskill10attack_5] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill10ef_7] as @a[tag=swordskill10attack_7] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill10ef_8] as @a[tag=swordskill10attack_8] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill10ef_10] as @a[tag=swordskill10attack_10] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill10ef_11] as @a[tag=swordskill10attack_11] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill10ef_14] as @a[tag=swordskill10attack_14] run function atrmagic:death/give_exp
execute if entity @s[tag=swordskill10ef_14_beam] as @a[tag=swordskill10attack_14_beam] run function atrmagic:death/give_exp
execute unless score kill atrjobsetting matches 1 run kill @s
scoreboard players reset kill atrjobsetting