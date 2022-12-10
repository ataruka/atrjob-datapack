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
 execute as @e[tag=swordskill11ef] unless score @s atrjob.swordskill11.UUID0 matches -2147483648..2147483647 run scoreboard players operation @s atrjob.swordskill11.UUID0 = @e[tag=swordskill11attack] atrjob.Owner0
 execute as @e[tag=swordskill11ef] unless score @s atrjob.swordskill11.UUID1 matches -2147483648..2147483647 run scoreboard players operation @s atrjob.swordskill11.UUID1 = @e[tag=swordskill11attack] atrjob.Owner1
 execute as @e[tag=swordskill11ef] unless score @s atrjob.swordskill11.UUID2 matches -2147483648..2147483647 run scoreboard players operation @s atrjob.swordskill11.UUID2 = @e[tag=swordskill11attack] atrjob.Owner2
 execute as @e[tag=swordskill11ef] unless score @s atrjob.swordskill11.UUID3 matches -2147483648..2147483647 run scoreboard players operation @s atrjob.swordskill11.UUID3 = @e[tag=swordskill11attack] atrjob.Owner3
 execute as @a[tag=swordskill11ef] if score @s atrjob.UUID0 = @e[tag=swordskill11attack,limit=1,sort=nearest] atrjob.Owner0 if score @s atrjob.UUID1 = @e[tag=swordskill11attack,limit=1,sort=nearest] atrjob.Owner1 if score @s atrjob.UUID2 = @e[tag=swordskill11attack,limit=1,sort=nearest] atrjob.Owner2 if score @s atrjob.UUID3 = @e[tag=swordskill11attack,limit=1,sort=nearest] atrjob.Owner3 if score @s atrjob.swordskill11.UUID0 = @e[tag=swordskill11attack,limit=1,sort=nearest] atrjob.Owner0 if score @s atrjob.swordskill11.UUID1 = @e[tag=swordskill11attack,limit=1,sort=nearest] atrjob.Owner1 if score @s atrjob.swordskill11.UUID2 = @e[tag=swordskill11attack,limit=1,sort=nearest] atrjob.Owner2 if score @s atrjob.swordskill11.UUID3 = @e[tag=swordskill11attack,limit=1,sort=nearest] atrjob.Owner3 run tag @s remove swordskill11ef
 tag @s remove swordskill11attack
#パーティクル
 execute as @s at @s run function atrmagic:particle/sword/skill11_armor
#score
scoreboard players remove @s swordskill11.armortick 1