#tagadd
 tag @s add swordskill10attack_14
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^1.5 run tag @a[distance=..2.5,tag=!swordskill10attack_14,gamemode=!spectator,gamemode=!creative] add swordskill10ef_14
 execute if score team atrjobsetting matches 0 at @s anchored eyes positioned ^ ^ ^1.5 run tag @e[type=!#atrmagic:non_living,distance=..2.5,type=!player] add swordskill10ef_14
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^1.5 run tag @a[distance=..2.5,tag=!swordskill10attack_14,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^1.5 run tag @a[distance=..2.5,tag=!swordskill10attack_14,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^1.5 run tag @a[distance=..2.5,tag=!swordskill10attack_14,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^1.5 run tag @a[distance=..2.5,tag=!swordskill10attack_14,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^1.5 run tag @a[distance=..2.5,tag=!swordskill10attack_14,gamemode=!spectator,gamemode=!creative] add swordskill10ef_14

 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] at @s anchored eyes positioned ^ ^ ^1.5 run tag @e[type=!#atrmagic:non_living,distance=..2.5,type=!player,team=!atrjob.blue] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] at @s anchored eyes positioned ^ ^ ^1.5 run tag @e[type=!#atrmagic:non_living,distance=..2.5,type=!player,team=!atrjob.green] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] at @s anchored eyes positioned ^ ^ ^1.5 run tag @e[type=!#atrmagic:non_living,distance=..2.5,type=!player,team=!atrjob.red] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] at @s anchored eyes positioned ^ ^ ^1.5 run tag @e[type=!#atrmagic:non_living,distance=..2.5,type=!player,team=!atrjob.yellow] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] at @s anchored eyes positioned ^ ^ ^1.5 run tag @e[type=!#atrmagic:non_living,distance=..2.5,type=!player] add swordskill10ef_14
#パーティクルと音
 playsound minecraft:ambient.underwater.exit master @a ~ ~ ~ 2 1.8
 playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 2 2
#damage
 data modify storage atrscore_damage: Argument set value {Damage:2.00,AttackType:"water"}
 execute as @s[tag=swordskill10_14_12combo] at @s run function atrmagic:sword/skill/skill10/adddamage_1
 execute as @e[tag=swordskill10ef_14] run scoreboard players set @s atrjob.watertick 100
 execute as @e[tag=swordskill10ef_14] run tag @s add atrjob.water2
 execute as @e[tag=swordskill10ef_14] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
 tag @e[tag=swordskill10ef_14] remove swordskill10ef_14
 tag @s remove swordskill10attack_14
#ビーム
 function atrmagic:sword/skill/skill10_14_beam