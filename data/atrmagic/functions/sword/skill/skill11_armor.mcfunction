 tp @s ^ ^ ^1
#tagadd
 tag @s add swordskill11attack
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative] add swordskill11ef
 execute if score team atrjobsetting matches 0 at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player] add swordskill11ef
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative] add swordskill11ef

 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.blue] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.green] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.red] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.yellow] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] at @s positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,tag=!swordskill11attack,distance=..3,type=!player] add swordskill11ef
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s positioned ^1 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative] add swordskill11ef
 execute if score team atrjobsetting matches 0 at @s positioned ^1 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player] add swordskill11ef
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] if score pvp atrjobsetting matches 1 at @s positioned ^1 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] if score pvp atrjobsetting matches 1 at @s positioned ^1 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] if score pvp atrjobsetting matches 1 at @s positioned ^1 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^1 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^1 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative] add swordskill11ef

 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] at @s positioned ^1 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.blue] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] at @s positioned ^1 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.green] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] at @s positioned ^1 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.red] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] at @s positioned ^1 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.yellow] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] at @s positioned ^1 ^ ^ run tag @e[type=!#atrmagic:non_living,tag=!swordskill11attack,distance=..3,type=!player] add swordskill11ef
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s positioned ^-1 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative] add swordskill11ef
 execute if score team atrjobsetting matches 0 at @s positioned ^-1 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player] add swordskill11ef
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] if score pvp atrjobsetting matches 1 at @s positioned ^-1 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] if score pvp atrjobsetting matches 1 at @s positioned ^-1 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] if score pvp atrjobsetting matches 1 at @s positioned ^-1 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^-1 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^-1 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative] add swordskill11ef

 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] at @s positioned ^-1 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.blue] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] at @s positioned ^-1 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.green] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] at @s positioned ^-1 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.red] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] at @s positioned ^-1 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.yellow] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] at @s positioned ^-1 ^ ^ run tag @e[type=!#atrmagic:non_living,tag=!swordskill11attack,distance=..3,type=!player] add swordskill11ef
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s positioned ^2 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative] add swordskill11ef
 execute if score team atrjobsetting matches 0 at @s positioned ^2 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player] add swordskill11ef
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] if score pvp atrjobsetting matches 1 at @s positioned ^2 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] if score pvp atrjobsetting matches 1 at @s positioned ^2 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] if score pvp atrjobsetting matches 1 at @s positioned ^2 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^2 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^2 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative] add swordskill11ef

 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] at @s positioned ^2 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.blue] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] at @s positioned ^2 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.green] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] at @s positioned ^2 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.red] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] at @s positioned ^2 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.yellow] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] at @s positioned ^2 ^ ^ run tag @e[type=!#atrmagic:non_living,tag=!swordskill11attack,distance=..3,type=!player] add swordskill11ef
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s positioned ^-2 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative] add swordskill11ef
 execute if score team atrjobsetting matches 0 at @s positioned ^-2 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player] add swordskill11ef
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] if score pvp atrjobsetting matches 1 at @s positioned ^-2 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] if score pvp atrjobsetting matches 1 at @s positioned ^-2 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] if score pvp atrjobsetting matches 1 at @s positioned ^-2 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^-2 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] if score pvp atrjobsetting matches 1 at @s positioned ^-2 ^ ^ run tag @a[distance=..3,tag=!swordskill11attack,gamemode=!spectator,gamemode=!creative] add swordskill11ef

 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamblue] at @s positioned ^-2 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.blue] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamgreen] at @s positioned ^-2 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.green] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamred] at @s positioned ^-2 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.red] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=atrjob.teamyellow] at @s positioned ^-2 ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,tag=!swordskill11attack,type=!player,team=!atrjob.yellow] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[tag=!atrjob.teamblue,tag=!atrjob.teamgreen,tag=!atrjob.teamred,tag=!atrjob.teamyellow] at @s positioned ^-2 ^ ^ run tag @e[type=!#atrmagic:non_living,tag=!swordskill11attack,distance=..3,type=!player] add swordskill11ef
 scoreboard players operation @s atrjob.Owner0 = @e[tag=swordskill11ef] atrjob.swordskill11.UUID0
 scoreboard players operation @s atrjob.Owner1 = @e[tag=swordskill11ef] atrjob.swordskill11.UUID1
 scoreboard players operation @s atrjob.Owner2 = @e[tag=swordskill11ef] atrjob.swordskill11.UUID2
 scoreboard players operation @s atrjob.Owner3 = @e[tag=swordskill11ef] atrjob.swordskill11.UUID3
 tag @s remove swordskill11attack
#パーティクル
 execute as @s at @s run function atrmagic:particle/sword/skill11_armor
#score
scoreboard players remove @s swordskill11.armortick 1