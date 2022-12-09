#tagadd
 tag @s add swordskill11sensor
 tag @s add atrswordre11
 tag @s add atrswordct11
 execute as @e[tag=swordskill11ef] if score @s atrjob.swordskill11.UUID0 = @a[tag=swordskill11sensor,limit=1,sort=nearest] atrjob.UUID0 if score @s atrjob.swordskill11.UUID1 = @a[tag=swordskill11sensor,limit=1,sort=nearest] atrjob.UUID1 if score @s atrjob.swordskill11.UUID2 = @a[tag=swordskill11sensor,limit=1,sort=nearest] atrjob.UUID2 if score @s atrjob.swordskill11.UUID3 = @a[tag=swordskill11sensor,limit=1,sort=nearest] atrjob.UUID3 run tag @s remove swordskill11ef
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill11sensor,gamemode=!spectator,gamemode=!creative] add swordskill11ef
 execute if score team atrjobsetting matches 0 at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player] add swordskill11ef
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill11sensor,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill11sensor,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill11sensor,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill11sensor,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill11sensor,gamemode=!spectator,gamemode=!creative] add swordskill11ef

 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.blue] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.green] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.red] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.yellow] add swordskill11ef
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player] add swordskill11ef
#パーティクルと音
 playsound minecraft:block.note_block.bell master @s ~ ~ ~ 2 2
 playsound minecraft:block.note_block.bell master @s ~ ~ ~ 2 2
 playsound minecraft:block.note_block.bell master @s ~ ~ ~ 2 2
#damage
 #なし
#衝撃波を飛ばす
  execute if entity @s[y_rotation=-22.5..22.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[0F,0F],Tags:["atrjob.swordskill11","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=22.5..67.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[45F,0F],Tags:["atrjob.swordskill11","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=67.5..114.9] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[90F,0F],Tags:["atrjob.swordskill11","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=115..157.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[135F,0F],Tags:["atrjob.swordskill11","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=157.5..-157.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[180F,0F],Tags:["atrjob.swordskill11","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=-157.5..-114.9] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[-135F,0F],Tags:["atrjob.swordskill11","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=-115..-67.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[-90F,0F],Tags:["atrjob.swordskill11","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=-67.5..-22.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[-45F,0F],Tags:["atrjob.swordskill11","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
 execute if entity @s[team=atrjob.blue] run tag @e[limit=1,sort=nearest,tag=atrjob.swordskill11,type=armor_stand] add atrjob.teamblue
 execute if entity @s[team=atrjob.green] run tag @e[limit=1,sort=nearest,tag=atrjob.swordskill11,type=armor_stand] add atrjob.teamgreen
 execute if entity @s[team=atrjob.red] run tag @e[limit=1,sort=nearest,tag=atrjob.swordskill11,type=armor_stand] add atrjob.teamred
 execute if entity @s[team=atrjob.yellow] run tag @e[limit=1,sort=nearest,tag=atrjob.swordskill11,type=armor_stand] add atrjob.teamyellow
 execute anchored eyes run tp @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] ^ ^ ^ ~ ~
 scoreboard players operation @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] atrjob.Owner0 = @s atrjob.UUID0
 scoreboard players operation @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] atrjob.Owner1 = @s atrjob.UUID1
 scoreboard players operation @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] atrjob.Owner2 = @s atrjob.UUID2
 scoreboard players operation @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] atrjob.Owner3 = @s atrjob.UUID3
 scoreboard players set @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] swordskill11.armortick 20
 execute as @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] at @s run function atrmagic:sword/skill/skill11_armor
 tag @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] remove atrjob.armor_set

 scoreboard players operation @s atrjob.UUID0 = @e[tag=swordskill11ef] atrjob.swordskill11.UUID0
 scoreboard players operation @s atrjob.UUID1 = @e[tag=swordskill11ef] atrjob.swordskill11.UUID1
 scoreboard players operation @s atrjob.UUID2 = @e[tag=swordskill11ef] atrjob.swordskill11.UUID2
 scoreboard players operation @s atrjob.UUID3 = @e[tag=swordskill11ef] atrjob.swordskill11.UUID3
 tag @s remove swordskill11sensor
#アイテム置き換え
 setblock 20380 0 20380 air replace
 setblock 20380 0 20380 shulker_box{Items:[{Slot:0b,id:"minecraft:stick",Count:1b}]}
 data modify storage atrjob.item Item set from entity @s SelectedItem
 execute unless data storage atrjob.item Item{} run data modify storage atrjob.item Item set value {Slot:0b,id:"minecraft:air",Count:1b}
 data remove storage atrjob.item Item.Slot
 data modify block 20380 0 20380 Items[0] set from storage atrjob.item Item
 loot spawn ~ ~ ~ mine 20380 0 20380 debug_stick
 data remove storage atrjob.item Item
 tp @e[type=item,limit=1,sort=nearest] @s
 data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0
 data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
 execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:11d}}]}] run item replace entity @s weapon.offhand with air
 item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"斬撃(コンボ)","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1028,atrswordjobskill:11d,atrswordjob:1b,atrct:0b}
#score
 scoreboard players set @s swordskill11re 160
 scoreboard players set @s swordjobCT11 25