#tagadd
 tag @s add swordskill10attack_4_armor
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_4_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_4_armor
 execute if score team atrjobsetting matches 0 at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,type=!player] add swordskill10ef_4_armor
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_4_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_4_armor
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_4_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_4_armor
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_4_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_4_armor
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_4_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_4_armor
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_4_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_4_armor

 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,type=!player,team=!atrjob.blue] add swordskill10ef_4_armor
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,type=!player,team=!atrjob.green] add swordskill10ef_4_armor
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,type=!player,team=!atrjob.red] add swordskill10ef_4_armor
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,type=!player,team=!atrjob.yellow] add swordskill10ef_4_armor
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,type=!player] add swordskill10ef_4_armor
#damage
 data modify storage atrscore_damage: Argument set value {Damage:3.00}
 execute as @e[tag=swordskill10ef_4_armor] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
 tag @e[tag=swordskill10ef_4_armor] remove swordskill10ef_4_armor
 tag @s remove swordskill10attack_4_armor