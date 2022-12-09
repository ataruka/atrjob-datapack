#tagadd
 tag @s add atrsword10_check
 tag @s add atrswordct10
 tag @s add swordskill10_12SE
#damagetagadd
 #なし
#パーティクルと音
 playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 2 1
 schedule function atrmagic:sword/skill/skill10_12_se 2t
#damage
 #なし
 #scoreを引く
  scoreboard players remove @s[scores={swordskill10_12combo=1..}] swordskill10_12combo 1
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
 item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"斬撃(コンボ)","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して通常攻撃","color":"gray","italic":false}]','[{"keybind":"key.back","color":"blue","italic":false},{"text":"&","color":"gray","italic":false},{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して後退攻撃","color":"gray","italic":false}]','[{"text":"空中で","color":"gray","italic":false},{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して空中攻撃","color":"gray","italic":false}]','[{"text":"空中で","color":"gray","italic":false},{"keybind":"key.back","color":"blue","italic":false},{"text":"&","color":"gray","italic":false},{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して空中後退","color":"gray","italic":false}]','[{"keybind":"key.swapOffhand","color":"green","italic":false},{"text":"を押して重撃","color":"gray","italic":false}]','[{"keybind":"key.sneak","color":"aqua","italic":false},{"text":"&","color":"gray","italic":false},{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して防御","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1025,atrswordjobskill:10d,atrswordjob:1b,atrct:0b}
#score
 scoreboard players set @s swordskill10re 60
 scoreboard players set @s swordskill10_12combo 15
 scoreboard players add @s swordjobCT10 0
#発動を記録
 function atrmagic:sword/skill/skill10/log
 scoreboard players set @s swordjobskill10.SC1 12