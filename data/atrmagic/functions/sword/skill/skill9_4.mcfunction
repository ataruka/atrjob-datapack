#tagadd
 tag @s add swordskill9attack_4
 tag @s add atrswordct9
 tag @s add atrsword9now_4
 tag @s add swordskill9_4
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..6,tag=!swordskill9attack_4,gamemode=!spectator,gamemode=!creative] add swordskill9ef_4
 execute if score team atrjobsetting matches 0 at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..6,type=!player] add swordskill9ef_4
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..6,tag=!swordskill9attack_4,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill9ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..6,tag=!swordskill9attack_4,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill9ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..6,tag=!swordskill9attack_4,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill9ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..6,tag=!swordskill9attack_4,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill9ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..6,tag=!swordskill9attack_4,gamemode=!spectator,gamemode=!creative] add swordskill9ef_4

 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..6,type=!player,team=!atrjob.blue] add swordskill9ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..6,type=!player,team=!atrjob.green] add swordskill9ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..6,type=!player,team=!atrjob.red] add swordskill9ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..6,type=!player,team=!atrjob.yellow] add swordskill9ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..6,type=!player] add swordskill9ef_4
#tagにtagを付与
 tag @e[tag=swordskill9ef_4] add swordskill9ef_4.0
#パーティクルと音
 playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 2 0
 playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 1
 execute rotated ~ 0 run function atrmagic:particle/sword/skill9_4
#effect
 effect give @s levitation 3 128 true
#damage
 data modify storage atrscore_damage: Argument set value {Damage:20.00,DamageType:"Fire"}
 execute as @e[tag=swordskill9ef_4] at @s run function atrmagic:damage/run
 execute as @e[tag=swordskill9ef_4] run scoreboard players set @s atrjob.firetick 240
 execute as @e[tag=swordskill9ef_4] run tag @s add atrjob.fire1
 data remove storage atrscore_damage: Argument
 tag @e[tag=swordskill9ef_4] remove swordskill9ef_4
 tag @s remove swordskill9attack_4
#アイテム置き換え
 execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"*連鎖撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1011,atrswordjobskill:9d,atrswordjob:1b,atrct:1b}
 execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d}}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"*連鎖撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1011,atrswordjobskill:9d,atrswordjob:1b,atrct:1b}
#score
 scoreboard players set @s swordskill9now_4 11
 scoreboard players set @s swordjobCT9 600
 scoreboard players set @s swordskill9_ 1
 scoreboard players reset @s swordskill9re