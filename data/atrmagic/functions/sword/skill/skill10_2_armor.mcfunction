#tagadd
 tag @s add swordskill10attack_2_armor
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_2_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_2_armor
 execute if score team atrjobsetting matches 0 at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,tag=!swordskill10attack_2_armor,type=!player] add swordskill10ef_2_armor
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_2_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_2_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_2_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_2_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_2_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_2_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_2_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_2_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..1.5,tag=!swordskill10attack_2_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_2_armor

 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,tag=!swordskill10attack_2_armor,type=!player,team=!atrjob.blue] add swordskill10ef_2_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,tag=!swordskill10attack_2_armor,type=!player,team=!atrjob.green] add swordskill10ef_2_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,tag=!swordskill10attack_2_armor,type=!player,team=!atrjob.red] add swordskill10ef_2_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..1.5,tag=!swordskill10attack_2_armor,type=!player,team=!atrjob.yellow] add swordskill10ef_2_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,tag=!swordskill10attack_2_armor,distance=..1.5,type=!player] add swordskill10ef_2_armor
#damage
 data modify storage atrscore_damage: Argument set value {Damage:3.00}
 execute as @e[tag=swordskill10ef_2_armor] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
#音
 execute as @e[tag=swordskill10ef_2_armor] at @s run playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1 0.1

 tag @e[tag=swordskill10ef_2_armor] remove swordskill10ef_2_armor
 tag @s remove swordskill10attack_2_armor
 kill @s