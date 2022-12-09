#パーティクルと音
 execute as @e[tag=swordskill11efs] at @s run function atrmagic:particle/sword/skill11_hit
#effect
 execute as @e[tag=swordskill11efs] at @s run playsound minecraft:entity.player.swim master @a ~ ~ ~ 2 2
 execute as @e[tag=swordskill11efs] at @s run playsound minecraft:entity.player.hurt_drown master @a ~ ~ ~ 2 2
#damage
 data modify storage atrscore_damage: Argument set value {Damage:4.00,AttackType:"water"}
 execute as @e[tag=swordskill11efs] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
 tag @s remove swordskill11attack_3
 tag @s add swordskill11attack_4

 scoreboard players set @s swordskill11.tick 10