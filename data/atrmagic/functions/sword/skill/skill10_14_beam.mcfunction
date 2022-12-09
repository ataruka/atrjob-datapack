#tagadd
 tag @s add swordskill10attack_14_beam
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_14_beam,gamemode=!spectator,gamemode=!creative] add swordskill10ef_14_beam
 execute if score team atrjobsetting matches 0 positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,type=!player] add swordskill10ef_14_beam
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] if score pvp atrjobsetting matches 1 positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_14_beam,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_14_beam
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] if score pvp atrjobsetting matches 1 positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_14_beam,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_14_beam
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] if score pvp atrjobsetting matches 1 positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_14_beam,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_14_beam
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] if score pvp atrjobsetting matches 1 positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_14_beam,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_14_beam
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] if score pvp atrjobsetting matches 1 positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_14_beam,gamemode=!spectator,gamemode=!creative] add swordskill10ef_14_beam

 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,type=!player,team=!atrjob.blue] add swordskill10ef_14_beam
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,type=!player,team=!atrjob.green] add swordskill10ef_14_beam
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,type=!player,team=!atrjob.red] add swordskill10ef_14_beam
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,type=!player,team=!atrjob.yellow] add swordskill10ef_14_beam
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,type=!player] add swordskill10ef_14_beam
#damage
 data modify storage atrscore_damage: Argument set value {Damage:2.00,AttackType:"water"}
 execute as @s[tag=swordskill10_14_12combo] at @s run function atrmagic:sword/skill/skill10/adddamage_1
 execute as @e[tag=swordskill9ef_14_beam] run scoreboard players set @s atrjob.watertick 100
 execute as @e[tag=swordskill9ef_14_beam] run tag @s add atrjob.water2
 execute as @e[tag=swordskill10ef_14_beam] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
 tag @e[tag=swordskill10ef_14_beam] remove swordskill10ef_14_beam
 tag @s remove swordskill10attack_14_beam
#パーティクル
 particle minecraft:falling_water ~ ~ ~ 0 0 0 0 3 normal
 particle minecraft:dust 0 0.682 1 1 ~ ~ ~ 0 0 0 0 1 force
#再起
 execute if entity @s[distance=..50] positioned ^ ^ ^1.5 if block ^ ^ ^ #atrmagic:no_collision run function atrmagic:sword/skill/skill10_14_beam