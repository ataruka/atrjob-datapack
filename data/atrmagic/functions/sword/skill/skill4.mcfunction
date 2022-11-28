tag @s add swordskill4attack
execute if score pvp atrjobsetting matches 1 if score team atrjobsetting matches 0 run tag @a[distance=..8,tag=!swordskill4attack,gamemode=!spectator,gamemode=!creative] add swordskill4ef
execute if score pvp atrjobsetting matches 1 if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] run tag @a[distance=..8,tag=!swordskill4attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill4ef
execute if score pvp atrjobsetting matches 1 if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] run tag @a[distance=..8,tag=!swordskill4attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill4ef
execute if score pvp atrjobsetting matches 1 if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] run tag @a[distance=..8,tag=!swordskill4attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill4ef
execute if score pvp atrjobsetting matches 1 if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] run tag @a[distance=..8,tag=!swordskill4attack,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill4ef
execute if score pvp atrjobsetting matches 1 if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] run tag @a[distance=..8,tag=!swordskill4attack,gamemode=!spectator,gamemode=!creative] add swordskill4ef
execute if score team atrjobsetting matches 0 run tag @e[type=!#atrmagic:non_living,distance=..8,type=!player] add swordskill4ef
execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] run tag @e[type=!#atrmagic:non_living,distance=..8,type=!player,team=!atrjob.yellow] add swordskill4ef
execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] run tag @e[type=!#atrmagic:non_living,distance=..8,type=!player,team=!atrjob.blue] add swordskill4ef
execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] run tag @e[type=!#atrmagic:non_living,distance=..8,type=!player,team=!atrjob.red] add swordskill4ef
execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] run tag @e[type=!#atrmagic:non_living,distance=..8,type=!player,team=!atrjob.green] add swordskill4ef
execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] run tag @e[type=!#atrmagic:non_living,distance=..8,type=!player] add swordskill4ef
tag @s remove swordskill4attack
scoreboard players set @e[tag=swordskill4ef] swordskill4ef 61
playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 2 2 0
particle minecraft:dust 0 0 0 3 ~ ~ ~ 5 5 5 1 1000 force
particle minecraft:sweep_attack ~ ~ ~ 5 5 5 1 250 force
summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:4b,Amplifier:127b,Duration:15,ShowParticles:0b}]}
#アイテム置き換え
 execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4d}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"*峰打ち*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1002,atrswordjobskill:4d,atrswordjob:1b,atrct:1b}
 execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4d}}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"*峰打ち*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1002,atrswordjobskill:4d,atrswordjob:1b,atrct:1b}
scoreboard players add @s swordjobCT4 600
tag @s add atrswordct4