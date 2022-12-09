#tagadd
 tag @s add swordskill10attack_10
 tag @s add atrsword10_check
 tag @s add atrsword10now_10
 tag @s add atrswordct10
#tp
 execute as @s at @s run function atrmagic:sword/skill/skill10_10_tp
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..3,tag=!swordskill10attack_10,gamemode=!spectator,gamemode=!creative] add swordskill10ef_10
 execute if score team atrjobsetting matches 0 at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player] add swordskill10ef_10
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..3,tag=!swordskill10attack_10,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_10
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..3,tag=!swordskill10attack_10,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_10
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..3,tag=!swordskill10attack_10,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_10
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..3,tag=!swordskill10attack_10,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_10
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^ run tag @a[distance=..3,tag=!swordskill10attack_10,gamemode=!spectator,gamemode=!creative] add swordskill10ef_10

 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.blue] add swordskill10ef_10
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.green] add swordskill10ef_10
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.red] add swordskill10ef_10
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.yellow] add swordskill10ef_10
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player] add swordskill10ef_10
#パーティクルと音
 playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 2 1
 playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 2 1
 playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 2 1
 playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 2 1
 playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 2 1
 playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 2 1
 playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 2 1
 playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 2 1
#damage
 data modify storage atrscore_damage: Argument set value {Damage:8.00}
 execute as @s[scores={swordskill10_12combo=1..}] at @s run function atrmagic:sword/skill/skill10/adddamage_1
 execute as @s[scores={swordskill10_12combo=1..}] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1.5
 execute as @s[scores={swordskill10_12combo=1..}] at @s run function atrmagic:particle/sword/skill10/skill10_12
 #scoreを引く
  scoreboard players remove @s[scores={swordskill10_12combo=1..}] swordskill10_12combo 1
 execute as @e[tag=swordskill10ef_10] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
 tag @e[tag=swordskill10ef_10] remove swordskill10ef_10
 tag @s remove swordskill10attack_10
#effect
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
 execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:10d}}]}] run item replace entity @s weapon.offhand with air
 item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"斬撃(コンボ)","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して通常攻撃","color":"gray","italic":false}]','[{"keybind":"key.back","color":"blue","italic":false},{"text":"&","color":"gray","italic":false},{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して後退攻撃","color":"gray","italic":false}]','[{"text":"空中で","color":"gray","italic":false},{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して空中攻撃","color":"gray","italic":false}]','[{"text":"空中で","color":"gray","italic":false},{"keybind":"key.back","color":"blue","italic":false},{"text":"&","color":"gray","italic":false},{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して空中後退","color":"gray","italic":false}]','[{"keybind":"key.swapOffhand","color":"green","italic":false},{"text":"を押して重撃","color":"gray","italic":false}]','[{"keybind":"key.sneak","color":"aqua","italic":false},{"text":"&","color":"gray","italic":false},{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して防御","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1023,atrswordjobskill:10d,atrswordjob:1b,atrct:0b}
#score
 scoreboard players set @s swordskill10re 260
 scoreboard players set @s swordskill10now_10 200
 scoreboard players add @s swordskill10now 20
 scoreboard players add @s swordjobCT10 20
#発動を記録
 function atrmagic:sword/skill/skill10/log
 scoreboard players set @s swordjobskill10.SC1 10