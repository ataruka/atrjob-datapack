#パーティクルと音
 execute as @e[tag=swordskill11efs] at @s run function atrmagic:particle/sword/skill11_hit
#effect
 execute as @e[tag=swordskill11efs] at @s run playsound minecraft:entity.player.swim master @a ~ ~ ~ 2 2
 execute as @e[tag=swordskill11efs] at @s run playsound minecraft:entity.player.hurt_drown master @a ~ ~ ~ 2 2
#damage
 data modify storage atrscore_damage: Argument set value {Damage:4.00,AttackType:"water"}
 execute as @e[tag=swordskill11efs] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
 tag @s remove swordskill11attack_4
 tag @s[scores={swordskill11.number=1..}] add swordskill11attack_5-
 execute as @s[scores={swordskill11.number=..0}] at @s run tag @e[tag=swordskill11efs] remove swordskill11ef
 execute as @s[scores={swordskill11.number=..0}] at @s run tag @e[tag=swordskill11efs] remove swordskill11efs
 execute if score @s swordskill11.number matches 1.. run scoreboard players set @s swordskill11.tick 15