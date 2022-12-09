#tag
 tag @s add swordskill11_checks
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
 item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"必中網羅","color":"white","italic":false}',Lore:['[{"keybind":"key.swapOffhand","color":"gold","italic":false},{"text":"を押して目標をセット","color":"gray","italic":false}]','[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1028,atrswordjobskill:11d,atrswordjob:1b,atrct:0b}
#score
 execute as @e[tag=swordskill11ef] if score @s atrjob.swordskill11.UUID0 = @a[tag=swordskill11_checks,limit=1,sort=nearest] atrjob.UUID0 if score @s atrjob.swordskill11.UUID1 = @a[tag=swordskill11_checks,limit=1,sort=nearest] atrjob.UUID1 if score @s atrjob.swordskill11.UUID2 = @a[tag=swordskill11_checks,limit=1,sort=nearest] atrjob.UUID2 if score @s atrjob.swordskill11.UUID3 = @a[tag=swordskill11_checks,limit=1,sort=nearest] atrjob.UUID3 run tag @s add swordskill11efs
 execute if entity @e[tag=swordskill11efs] run function atrmagic:sword/skill/skill11_check
 tag @s remove swordskill11_checks