#tagadd
 tag @s add swordskill10attack_13
 tag @s add atrsword10_check
 tag @s add atrsword10now_13
 tag @s add atrswordct10
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_13,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13
 execute if score team atrjobsetting matches 0 at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player] add swordskill10ef_13
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_13,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_13
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_13,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_13
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_13,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_13
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_13,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_13
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_13,gamemode=!spectator,gamemode=!creative] add swordskill10ef_13

 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.blue] add swordskill10ef_13
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.green] add swordskill10ef_13
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.red] add swordskill10ef_13
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.yellow] add swordskill10ef_13
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player] add swordskill10ef_13
#パーティクルと音
 playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 0.05 0
 playsound minecraft:item.firecharge.use master @s ~ ~ ~ 2 1
 function atrmagic:particle/sword/skill10/skill10_13_armor
 #斬撃飛ばしのアマスタ召喚
  execute if entity @s[y_rotation=-22.5..22.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[0F,0F],Tags:["atrjob.swordskill10_13","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=22.5..67.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[45F,0F],Tags:["atrjob.swordskill10_13","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=67.5..114.9] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[90F,0F],Tags:["atrjob.swordskill10_13","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=115..157.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[135F,0F],Tags:["atrjob.swordskill10_13","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=157.5..-157.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[180F,0F],Tags:["atrjob.swordskill10_13","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=-157.5..-114.9] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[-135F,0F],Tags:["atrjob.swordskill10_13","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=-115..-67.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[-90F,0F],Tags:["atrjob.swordskill10_13","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=-67.5..-22.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[-45F,0F],Tags:["atrjob.swordskill10_13","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
 execute if entity @s[team=atrjob.blue] run tag @e[limit=1,sort=nearest,tag=atrjob.swordskill10_13,type=armor_stand] add atrjob.teamblue
 execute if entity @s[team=atrjob.green] run tag @e[limit=1,sort=nearest,tag=atrjob.swordskill10_13,type=armor_stand] add atrjob.teamgreen
 execute if entity @s[team=atrjob.red] run tag @e[limit=1,sort=nearest,tag=atrjob.swordskill10_13,type=armor_stand] add atrjob.teamred
 execute if entity @s[team=atrjob.yellow] run tag @e[limit=1,sort=nearest,tag=atrjob.swordskill10_13,type=armor_stand] add atrjob.teamyellow
 execute anchored eyes run tp @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] ^ ^ ^ ~ 0
 scoreboard players set @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] swordskill10_13.armortick 60
 execute as @s[scores={swordskill10_12combo=1..}] at @s run tag @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] add swordskill10_13_12combo
 execute as @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] at @s run tp ^ ^ ^2
 tag @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] remove atrjob.armor_set
#damage
 data modify storage atrscore_damage: Argument set value {Damage:5.00}
 execute as @s[scores={swordskill10_12combo=1..}] at @s run function atrmagic:sword/skill/skill10/adddamage_1
 execute as @s[scores={swordskill10_12combo=1..}] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1.5
 execute as @s[scores={swordskill10_12combo=1..}] at @s run function atrmagic:particle/sword/skill10/skill10_13
 #scoreを引く
  scoreboard players remove @s[scores={swordskill10_12combo=1..}] swordskill10_12combo 1
 execute as @e[tag=swordskill9ef_13] run scoreboard players set @s atrjob.firetick 100
 execute as @e[tag=swordskill9ef_13] run tag @s add atrjob.fire2
 execute as @e[tag=swordskill10ef_13] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
 tag @e[tag=swordskill10ef_13] remove swordskill10ef_13
 tag @s remove swordskill10attack_13
#打ち上げ
 execute at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0,Age:4,Effects:[{Id:25b,Amplifier:1b,Duration:8,ShowParticles:0b},{Id:28b,Amplifier:5b,Duration:140,ShowParticles:0b}]}
#数を指定して当たり判定用のスライムをぶつける
 scoreboard players set @s swordskill10.slime 25
 execute at @s rotated ~ 0 positioned ~ ~ ~ run function atrmagic:sword/skill/skill10/summon_recursive
#アイテム置き換え
 execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:10d}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"斬撃(コンボ)","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1026,atrswordjobskill:10d,atrswordjob:1b,atrct:0b}
#score
 scoreboard players set @s swordskill10re 120
 scoreboard players add @s swordskill10now 6
 scoreboard players add @s swordjobCT10 60
 scoreboard players set @s swordskill10_12combo 0
#発動を記録
 function atrmagic:sword/skill/skill10/log
 scoreboard players set @s swordjobskill10.SC1 13