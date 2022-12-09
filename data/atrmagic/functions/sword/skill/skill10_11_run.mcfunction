#tagadd
 tag @s add swordskill10attack_11
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..8,tag=!swordskill10attack_11,gamemode=!spectator,gamemode=!creative] add swordskill10ef_11
 execute if score team atrjobsetting matches 0 at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..8,type=!player] add swordskill10ef_11
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..8,tag=!swordskill10attack_11,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_11
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..8,tag=!swordskill10attack_11,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_11
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..8,tag=!swordskill10attack_11,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_11
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..8,tag=!swordskill10attack_11,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_11
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..8,tag=!swordskill10attack_11,gamemode=!spectator,gamemode=!creative] add swordskill10ef_11

 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..8,type=!player,team=!atrjob.blue] add swordskill10ef_11
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..8,type=!player,team=!atrjob.green] add swordskill10ef_11
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..8,type=!player,team=!atrjob.red] add swordskill10ef_11
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..8,type=!player,team=!atrjob.yellow] add swordskill10ef_11
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..8,type=!player] add swordskill10ef_11
#damage
 data modify storage atrscore_damage: Argument set value {Damage:30.00,AttackType:"physics"}
 effect clear @s resistance
 effect clear @s slowness
 execute unless entity @e[tag=swordskill10ef_11] run tag @s add swordskill10ef_11
 execute as @e[tag=swordskill10ef_11,limit=3,sort=nearest] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
 tag @e[tag=swordskill10ef_11] remove swordskill10ef_11
 tag @s remove swordskill10ef_11
 tag @s remove swordskill10attack_11