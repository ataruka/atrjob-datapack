#tagadd
 tag @s add swordskill11attack
 tag @s add atrswordct11
 tag @s remove atrswordre11
#パーティクルと音
 playsound minecraft:entity.player.swim master @s ~ ~ ~ 2 2
 execute as @e[tag=swordskill11efs] at @s run playsound minecraft:entity.player.swim master @a ~ ~ ~ 2 2
 execute as @e[tag=swordskill11efs] at @s run playsound minecraft:entity.player.hurt_drown master @a ~ ~ ~ 2 2
 execute as @e[tag=swordskill11efs] at @s run function atrmagic:particle/sword/skill11_hit
#数える
 execute store result score @s swordskill11.number if entity @e[tag=swordskill11efs]
 scoreboard players remove @s swordskill11.number 1
#damage
 data modify storage atrscore_damage: Argument set value {Damage:5.00,AttackType:"water"}
 execute as @e[tag=swordskill11efs] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
 tag @s remove swordskill11attack
 tag @s add swordskill11attack_2
#アイテム置き換え
 item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"*必中網羅*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1029,atrswordjobskill:11d,atrswordjob:1b,atrct:1b}
#score
 scoreboard players reset @s swordskill11re
 scoreboard players set @s swordjobCT11 1200
 scoreboard players set @s swordskill11.tick 20