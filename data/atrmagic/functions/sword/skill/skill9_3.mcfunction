#tagadd
 tag @s add swordskill9attack_3
 tag @s add atrsword9now
 tag @s add swordskill9_3
#damagetagadd
 #----tickで実行
#パーティクルと音
 #----tickで実行
#damage
 #----tickで実行
#アイテム置き換え
 execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1010,atrswordjobskill:9.4d,atrswordjob:1b,atrct:0b}
 execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d}}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1010,atrswordjobskill:9.4d,atrswordjob:1b,atrct:0b}
#score
 scoreboard players add @s swordskill9now 20
 scoreboard players set @s swordskill9re 30
 scoreboard players set @s swordskill9_ 4