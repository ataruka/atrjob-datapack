tag @s add swordskill4attack
execute if score pvp atrjobsetting matches 1 run tag @a[distance=..5,tag=!swordskill4attack,gamemode=!spectator,gamemode=!creative] add swordskill4ef
execute as @s at @s run tag @e[type=!#atrmagic:non_living,distance=..5,type=!player] add swordskill4ef
tag @s remove swordskill4attack
scoreboard players add @e[tag=swordskill4ef] swordskill4ef 60
playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 2 2 0
particle minecraft:dust 0 0 0 3 ~ ~ ~ 5 5 5 1 1000 force
particle minecraft:sweep_attack ~ ~ ~ 5 5 5 1 250 force
effect give @a[tag=swordskill4ef,scores={swordskill4ef=60}] slowness 3 125 true
effect give @a[tag=swordskill4ef,scores={swordskill4ef=60}] jump_boost 3 127 true
effect give @a[tag=swordskill4ef,scores={swordskill4ef=60}] weakness 3 125 true
summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:4b,Amplifier:127b,Duration:15,ShowParticles:0b}]}
#アイテム置き換え
 execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4b}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"*峰打ち*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1104,atrswordjobskill:4b,atrswordjob:1b,atrct:1b}
 execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4b}}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"*峰打ち*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1104,atrswordjobskill:4b,atrswordjob:1b,atrct:1b}
scoreboard players add @s swordjobCT4 600
tag @s add atrswordct4