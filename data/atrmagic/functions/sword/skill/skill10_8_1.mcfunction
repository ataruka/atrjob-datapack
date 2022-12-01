#tagadd
 tag @s add swordskill10attack_8
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s run tag @a[distance=..4,tag=!swordskill10attack_8,gamemode=!spectator,gamemode=!creative] add swordskill10ef_8
 execute if score team atrjobsetting matches 0 at @s run tag @e[type=!#atrmagic:non_living,distance=..4,type=!player] add swordskill10ef_8
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] if score pvp atrjobsetting matches 1 at @s run tag @a[distance=..4,tag=!swordskill10attack_8,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_8
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] if score pvp atrjobsetting matches 1 at @s run tag @a[distance=..4,tag=!swordskill10attack_8,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_8
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] if score pvp atrjobsetting matches 1 at @s run tag @a[distance=..4,tag=!swordskill10attack_8,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_8
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] if score pvp atrjobsetting matches 1 at @s run tag @a[distance=..4,tag=!swordskill10attack_8,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_8
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] if score pvp atrjobsetting matches 1 at @s run tag @a[distance=..4,tag=!swordskill10attack_8,gamemode=!spectator,gamemode=!creative] add swordskill10ef_8

 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] at @s run tag @e[type=!#atrmagic:non_living,distance=..4,type=!player,team=!atrjob.blue] add swordskill10ef_8
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] at @s run tag @e[type=!#atrmagic:non_living,distance=..4,type=!player,team=!atrjob.green] add swordskill10ef_8
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] at @s run tag @e[type=!#atrmagic:non_living,distance=..4,type=!player,team=!atrjob.red] add swordskill10ef_8
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] at @s run tag @e[type=!#atrmagic:non_living,distance=..4,type=!player,team=!atrjob.yellow] add swordskill10ef_8
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] at @s run tag @e[type=!#atrmagic:non_living,distance=..4,type=!player] add swordskill10ef_8
#damage
 data modify storage atrscore_damage: Argument set value {Damage:6.00}
 execute as @e[tag=swordskill10ef_8] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
 execute as @e[tag=swordskill9ef_8] run scoreboard players set @s atrjob.watertick 200
 execute as @e[tag=swordskill9ef_8] run tag @s add atrjob.water1
 tag @e[tag=swordskill10ef_8] remove swordskill10ef_8
 tag @s remove swordskill10attack_8
#パーティクル
 execute as @s at @s run function atrmagic:particle/sword/skill10/skill10_8
# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAAwCGAnAEaUAsctAtE6QKwDMHTANnpsAHKRQC2AgGZNaIgIykRXIdLAEAdtQC2CZIDDFAAQKNYGNQy6AzknAoA9oU0QkAJkoEUcF3Ax2wADdqbEJ9cAAPJE8wKGiAX3iCK1I0QltEBQA6LgJrCEtXRBi4bGw0GGt9BUoYjAcCiH0YtGsAUTKKqraAR0IQ7CgAZQtvckRpEKrEgF0gA_3
# 円 1
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~0 ~1 ~-1.5 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~0.46353 ~1 ~-1.42658 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~0.88168 ~1 ~-1.21353 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~1.21353 ~1 ~-0.88168 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~1.42658 ~1 ~-0.46353 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~1.5 ~1 ~0 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~1.42658 ~1 ~0.46353 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~1.21353 ~1 ~0.88168 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~0.88168 ~1 ~1.21353 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~0.46353 ~1 ~1.42658 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~0 ~1 ~1.5 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~-0.46353 ~1 ~1.42658 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~-0.88168 ~1 ~1.21353 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~-1.21353 ~1 ~0.88168 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~-1.42658 ~1 ~0.46353 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~-1.5 ~1 ~0 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~-1.42658 ~1 ~-0.46353 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~-1.21353 ~1 ~-0.88168 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~-0.88168 ~1 ~-1.21353 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.467 1 1 ~-0.46353 ~1 ~-1.42658 0 0 0 0 1 force
execute as @s at @s run particle minecraft:dust 0 0.973 0.843 1 ~ ~ ~ 0 0 0 0 10 force

execute as @s at @s run playsound minecraft:item.trident.riptide_3 master @s ~ ~ ~ 2 1
execute as @s at @s run playsound minecraft:ambient.underwater.enter master @s ~ ~ ~ 2 1