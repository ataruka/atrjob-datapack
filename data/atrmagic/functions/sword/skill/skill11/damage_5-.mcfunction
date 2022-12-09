#パーティクルと音
 execute as @e[tag=swordskill11efs] at @s run function atrmagic:particle/sword/skill11_hit
#effect
 execute as @e[tag=swordskill11efs] at @s run playsound minecraft:entity.player.swim master @a ~ ~ ~ 2 2
 execute as @e[tag=swordskill11efs] at @s run playsound minecraft:entity.player.hurt_drown master @a ~ ~ ~ 2 2
#damage
 data modify storage atrscore_damage: Argument set value {Damage:3.00,AttackType:"water"}
 execute as @e[tag=swordskill11efs] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
 scoreboard players remove @s swordskill11.number 1
 tag @s remove swordskill11attack_5-
 tag @s[scores={swordskill11.number=1..}] add swordskill11attack_5-

 execute if score @s swordskill11.number matches 1.. run scoreboard players set @s swordskill11.tick 5
 execute unless score @s swordskill11.number matches 1.. run tag @s remove swordskill11attack_5-
 execute unless score @s swordskill11.number matches 1.. run tag @e[tag=swordskill11efs] remove swordskill11ef
 execute unless score @s swordskill11.number matches 1.. run tag @e[tag=swordskill11efs] remove swordskill11efs
 execute unless score @s swordskill11.number matches 1.. run scoreboard players reset @s swordskill11.number