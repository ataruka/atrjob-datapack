#tagadd
 tag @s add swordskill9attack_2
 tag @s add atrsword9now
 tag @s add swordskill9_2
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2.5 run tag @a[distance=..3,tag=!swordskill9attack_2,gamemode=!spectator,gamemode=!creative] add swordskill9ef_2
 execute if score team atrjobsetting matches 0 at @s anchored eyes positioned ^ ^ ^2.5 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player] add swordskill9ef_2
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2.5 run tag @a[distance=..3,tag=!swordskill9attack_2,gamemode=!spectator,gamemode=!creative,team=atrjob.blue] add swordskill9ef_2
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2.5 run tag @a[distance=..3,tag=!swordskill9attack_2,gamemode=!spectator,gamemode=!creative,team=atrjob.green] add swordskill9ef_2
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2.5 run tag @a[distance=..3,tag=!swordskill9attack_2,gamemode=!spectator,gamemode=!creative,team=atrjob.red] add swordskill9ef_2
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2.5 run tag @a[distance=..3,tag=!swordskill9attack_2,gamemode=!spectator,gamemode=!creative,team=atrjob.yellow] add swordskill9ef_2
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2.5 run tag @a[distance=..3,tag=!swordskill9attack_2,gamemode=!spectator,gamemode=!creative] add swordskill9ef_2

 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] at @s anchored eyes positioned ^ ^ ^2.5 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.blue] add swordskill9ef_2
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] at @s anchored eyes positioned ^ ^ ^2.5 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.green] add swordskill9ef_2
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] at @s anchored eyes positioned ^ ^ ^2.5 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.red] add swordskill9ef_2
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] at @s anchored eyes positioned ^ ^ ^2.5 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.yellow] add swordskill9ef_2
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] at @s anchored eyes positioned ^ ^ ^2.5 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player] add swordskill9ef_2
#パーティクルと音
 playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1 0
 function atrmagic:particle/sword/skill9_2
#damage
 data modify storage atrscore_damage: Argument set value {Damage:10.00}
 execute as @e[tag=swordskill9ef_2] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
 tag @e[tag=swordskill9ef_2] remove swordskill9ef_2
 tag @s remove swordskill9attack_2
#アイテム置き換え
 execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1009,atrswordjobskill:9.3d,atrswordjob:1b,atrct:0b}
 execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d}}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1009,atrswordjobskill:9.3d,atrswordjob:1b,atrct:0b}
#score
 scoreboard players add @s swordskill9now 11
 scoreboard players set @s swordskill9re 60
 scoreboard players set @s swordskill9_ 3