#tagadd
 tag @s add swordskill10attack_5
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_5,gamemode=!spectator,gamemode=!creative] add swordskill10ef_5
 execute if score team atrjobsetting matches 0 at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player] add swordskill10ef_5
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_5,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_5
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_5,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_5
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_5,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_5
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_5,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_5
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_5,gamemode=!spectator,gamemode=!creative] add swordskill10ef_5

 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.blue] add swordskill10ef_5
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.green] add swordskill10ef_5
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.red] add swordskill10ef_5
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.yellow] add swordskill10ef_5
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player] add swordskill10ef_5
#damage
 data modify storage atrscore_damage: Argument set value {Damage:3.00}
 execute as @e[tag=swordskill10ef_5] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
 tag @e[tag=swordskill10ef_5] remove swordskill10ef_5
 tag @s remove swordskill10attack_5