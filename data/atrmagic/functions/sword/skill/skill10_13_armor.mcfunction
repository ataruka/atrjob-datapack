#tagadd
 tag @s add swordskill10attack_13_armor
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 0 at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player] add swordskill10ef_13_armor
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13_armor

 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.blue] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.green] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.red] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.yellow] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,tag=!swordskill10attack_13_armor,distance=..2,type=!player] add swordskill10ef_13_armor
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^1 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 0 at @s positioned ^ ^ ^1 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player] add swordskill10ef_13_armor
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^1 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^1 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^1 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^1 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^1 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13_armor

 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] at @s positioned ^ ^ ^1 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.blue] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] at @s positioned ^ ^ ^1 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.green] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] at @s positioned ^ ^ ^1 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.red] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] at @s positioned ^ ^ ^1 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.yellow] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] at @s positioned ^ ^ ^1 run tag @e[type=!#atrmagic:non_living,tag=!swordskill10attack_13_armor,distance=..2,type=!player] add swordskill10ef_13_armor
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-1 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 0 at @s positioned ^ ^ ^-1 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player] add swordskill10ef_13_armor
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-1 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-1 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-1 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-1 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-1 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13_armor

 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] at @s positioned ^ ^ ^-1 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.blue] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] at @s positioned ^ ^ ^-1 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.green] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] at @s positioned ^ ^ ^-1 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.red] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] at @s positioned ^ ^ ^-1 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.yellow] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] at @s positioned ^ ^ ^-1 run tag @e[type=!#atrmagic:non_living,tag=!swordskill10attack_13_armor,distance=..2,type=!player] add swordskill10ef_13_armor
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-2 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 0 at @s positioned ^ ^ ^-2 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player] add swordskill10ef_13_armor
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-2 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-2 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-2 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-2 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-2 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13_armor

 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] at @s positioned ^ ^ ^-2 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.blue] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] at @s positioned ^ ^ ^-2 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.green] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] at @s positioned ^ ^ ^-2 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.red] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] at @s positioned ^ ^ ^-2 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.yellow] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] at @s positioned ^ ^ ^-2 run tag @e[type=!#atrmagic:non_living,tag=!swordskill10attack_13_armor,distance=..2,type=!player] add swordskill10ef_13_armor
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^2 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 0 at @s positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player] add swordskill10ef_13_armor
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^2 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^2 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^2 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^2 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^2 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13_armor

 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] at @s positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.blue] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] at @s positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.green] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] at @s positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.red] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] at @s positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.yellow] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] at @s positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,tag=!swordskill10attack_13_armor,distance=..2,type=!player] add swordskill10ef_13_armor
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^3 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 0 at @s positioned ^ ^ ^3 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player] add swordskill10ef_13_armor
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^3 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^3 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^3 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^3 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^3 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13_armor

 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] at @s positioned ^ ^ ^3 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.blue] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] at @s positioned ^ ^ ^3 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.green] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] at @s positioned ^ ^ ^3 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.red] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] at @s positioned ^ ^ ^3 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.yellow] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] at @s positioned ^ ^ ^3 run tag @e[type=!#atrmagic:non_living,tag=!swordskill10attack_13_armor,distance=..2,type=!player] add swordskill10ef_13_armor
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-3 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 0 at @s positioned ^ ^ ^-3 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player] add swordskill10ef_13_armor
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-3 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-3 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-3 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-3 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^-3 run tag @a[distance=..2,tag=!swordskill10attack_13_armor,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13_armor

 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] at @s positioned ^ ^ ^-3 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.blue] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] at @s positioned ^ ^ ^-3 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.green] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] at @s positioned ^ ^ ^-3 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.red] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] at @s positioned ^ ^ ^-3 run tag @e[type=!#atrmagic:non_living,distance=..2,tag=!swordskill10attack_13_armor,type=!player,team=!atrjob.yellow] add swordskill10ef_13_armor
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] at @s positioned ^ ^ ^-3 run tag @e[type=!#atrmagic:non_living,tag=!swordskill10attack_13_armor,distance=..2,type=!player] add swordskill10ef_13_armor
 
#damage
 data modify storage atrscore_damage: Argument set value {Damage:12.00,DamageType:"Fire",AttackType:"fire"}
 execute as @s[tag=swordskill10_13_12combo] at @s run function atrmagic:sword/skill/skill10/adddamage_1
 execute as @e[tag=swordskill9ef_13_armor] run scoreboard players set @s atrjob.firetick 100
 execute as @e[tag=swordskill9ef_13_armor] run tag @s add atrjob.fire2
 execute as @e[tag=swordskill10ef_13_armor] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
#音
 execute as @e[tag=swordskill10ef_13_armor] at @s run playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1 0.1
 tag @e[tag=swordskill10ef_13_armor] remove swordskill10ef_13_armor
 tag @s remove swordskill10attack_13_armor
 scoreboard players reset @s swordskill10_13.attacktick