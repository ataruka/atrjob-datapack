#tagadd
 tag @s add swordskill10attack_14
 tag @s add atrsword10_check
 tag @s add atrsword10now_14
 tag @s add atrswordct10
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^1.5 run tag @a[distance=..2.5,tag=!swordskill10attack_14,gamemode=!spectator,gamemode=!creative] add swordskill10ef_14
 execute if score team atrjobsetting matches 0 at @s anchored eyes positioned ^ ^ ^1.5 run tag @e[type=!#atrmagic:non_living,distance=..2.5,type=!player] add swordskill10ef_14
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^1.5 run tag @a[distance=..2.5,tag=!swordskill10attack_14,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^1.5 run tag @a[distance=..2.5,tag=!swordskill10attack_14,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^1.5 run tag @a[distance=..2.5,tag=!swordskill10attack_14,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^1.5 run tag @a[distance=..2.5,tag=!swordskill10attack_14,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^1.5 run tag @a[distance=..2.5,tag=!swordskill10attack_14,gamemode=!spectator,gamemode=!creative] add swordskill10ef_14

 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] at @s anchored eyes positioned ^ ^ ^1.5 run tag @e[type=!#atrmagic:non_living,distance=..2.5,type=!player,team=!atrjob.blue] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] at @s anchored eyes positioned ^ ^ ^1.5 run tag @e[type=!#atrmagic:non_living,distance=..2.5,type=!player,team=!atrjob.green] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] at @s anchored eyes positioned ^ ^ ^1.5 run tag @e[type=!#atrmagic:non_living,distance=..2.5,type=!player,team=!atrjob.red] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] at @s anchored eyes positioned ^ ^ ^1.5 run tag @e[type=!#atrmagic:non_living,distance=..2.5,type=!player,team=!atrjob.yellow] add swordskill10ef_14
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] at @s anchored eyes positioned ^ ^ ^1.5 run tag @e[type=!#atrmagic:non_living,distance=..2.5,type=!player] add swordskill10ef_14
#パーティクルと音
 playsound minecraft:ambient.underwater.exit master @a ~ ~ ~ 2 1.8
 playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 2 2
 function atrmagic:particle/sword/skill10/skill10_14
#damage
 data modify storage atrscore_damage: Argument set value {Damage:2.00,AttackType:"water"}
 execute as @s[scores={swordskill10_12combo=1..}] at @s run function atrmagic:sword/skill/skill10/adddamage_1
 execute as @s[scores={swordskill10_12combo=1..}] at @s run tag @s add swordskill10_14_12combo
 #scoreを引く
  scoreboard players remove @s[scores={swordskill10_12combo=1..}] swordskill10_12combo 1
 execute as @e[tag=swordskill10ef_14] run scoreboard players set @s atrjob.watertick 100
 execute as @e[tag=swordskill10ef_14] run tag @s add atrjob.water2
 execute as @e[tag=swordskill10ef_14] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
 tag @e[tag=swordskill10ef_14] remove swordskill10ef_14
#見た目
  execute if entity @s[y_rotation=-22.5..22.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[0F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=22.5..67.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[45F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=67.5..114.9] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[90F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=115..157.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[135F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=157.5..-157.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[180F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=-157.5..-114.9] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[-135F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=-115..-67.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[-90F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=-67.5..-22.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[-45F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
 execute anchored eyes run tp @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] ^ ^ ^1.2 ~ 0
 scoreboard players set @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] swordskill10_14.armortick 20
 tag @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] remove atrjob.armor_set
 tag @s remove swordskill10attack_14
#ビーム
 execute anchored eyes run function atrmagic:sword/skill/skill10_14_beam
#アイテム置き換え
 execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:10d}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"斬撃(コンボ)","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1027,atrswordjobskill:10d,atrswordjob:1b,atrct:0b}
#score
 scoreboard players set @s swordskill10re 120
 scoreboard players add @s swordskill10now 20
 scoreboard players add @s swordjobCT10 60
#発動を記録
 function atrmagic:sword/skill/skill10/log
 scoreboard players set @s swordjobskill10.SC1 14