#剣士になる
execute as @a[tag=!atrswordjob,nbt={Inventory:[{Slot:-106b,id:"minecraft:stone_sword",tag:{atrmagicdata:1b}}]}] at @s run function atrmagic:sword/get

#剣士のアイテムkill
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjob:1b}}}]

#剣士の設定用アイテム常時所持
execute as @a[tag=!atrswordjob,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobitem:1b}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobitem:1b}
execute as @a[tag=atrswordjob,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobitem:1b}}]}] at @s run give @s carrot_on_a_stick{display:{Name:'{"text":"設定","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して情報と設定","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1000,atrswordjobitem:1b,atrswordjob:1b}

#剣士のスキル発動用アイテム常時所持(スキル4、メインハンド、オフハンド)
execute as @a[tag=atrswordjob,tag=atrswordct4,scores={swordjobskill4=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"*峰打ち*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1002,atrswordjobskill:4d,atrswordjob:1b,atrct:1b} 
execute as @a[tag=atrswordjob,tag=!atrswordct4,scores={swordjobskill4=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4d,atrct:1b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"峰打ち","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1001,atrswordjobskill:4d,atrswordjob:1b,atrct:0b}

execute as @a[tag=atrswordjob,tag=atrswordct4,scores={swordjobskill4=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"*峰打ち*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1002,atrswordjobskill:4d,atrswordjob:1b,atrct:1b} 
execute as @a[tag=atrswordjob,tag=!atrswordct4,scores={swordjobskill4=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4d,atrct:1b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"峰打ち","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1001,atrswordjobskill:4d,atrswordjob:1b,atrct:0b}

execute as @a[tag=!atrswordjob,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4d}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:4d}
execute as @a[tag=atrswordjob,scores={swordjobskill4=0},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4d}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:4d}
execute as @a[tag=atrswordjob,tag=!atrswordct4,scores={swordjobskill4=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4d,atrct:1b}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:4d,atrct:1b}
execute as @a[tag=atrswordjob,tag=atrswordct4,scores={swordjobskill4=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4d,atrct:0b}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:4d,atrct:0b}
execute as @a[tag=atrswordjob,tag=!atrswordct4,scores={swordjobskill4=1},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4d,atrct:0b}}]}] at @s run give @s carrot_on_a_stick{display:{Name:'{"text":"峰打ち","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1001,atrswordjobskill:4d,atrswordjob:1b,atrct:0b}
execute as @a[tag=atrswordjob,tag=atrswordct4,scores={swordjobskill4=1},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4d,atrct:1b}}]}] at @s run give @s carrot_on_a_stick{display:{Name:'{"text":"*峰打ち*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1002,atrswordjobskill:4d,atrswordjob:1b,atrct:1b}

#剣士のスキル発動用アイテム常時所持(スキル6、メインハンド、オフハンド)
execute as @a[tag=atrswordjob,tag=atrswordct6,scores={swordjobskill6=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:6d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"*斬撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1004,atrswordjobskill:6d,atrswordjob:1b,atrct:1b}
execute as @a[tag=atrswordjob,tag=!atrswordct6,scores={swordjobskill6=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:6d,atrct:1b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"斬撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1003,atrswordjobskill:6d,atrswordjob:1b,atrct:0b}

execute as @a[tag=atrswordjob,tag=atrswordct6,scores={swordjobskill6=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:6d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"*斬撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1004,atrswordjobskill:6d,atrswordjob:1b,atrct:1b}
execute as @a[tag=atrswordjob,tag=!atrswordct6,scores={swordjobskill6=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:6d,atrct:1b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"斬撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1003,atrswordjobskill:6d,atrswordjob:1b,atrct:0b}

execute as @a[tag=!atrswordjob,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:6d}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:6d}
execute as @a[tag=atrswordjob,scores={swordjobskill6=0},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:6d}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:6d}
execute as @a[tag=atrswordjob,tag=!atrswordct6,scores={swordjobskill6=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:6d,atrct:1b}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:6d,atrct:1b}
execute as @a[tag=atrswordjob,tag=atrswordct6,scores={swordjobskill6=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:6d,atrct:0b}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:6d,atrct:0b}
execute as @a[tag=atrswordjob,tag=!atrswordct6,scores={swordjobskill6=1},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:6d,atrct:0b}}]}] at @s run give @s carrot_on_a_stick{display:{Name:'{"text":"斬撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1003,atrswordjobskill:6d,atrswordjob:1b,atrct:0b}
execute as @a[tag=atrswordjob,tag=atrswordct6,scores={swordjobskill6=1},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:6d,atrct:1b}}]}] at @s run give @s carrot_on_a_stick{display:{Name:'{"text":"*斬撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1004,atrswordjobskill:6d,atrswordjob:1b,atrct:1b}

#剣士のスキル発動用アイテム常時所持(スキル8、メインハンド、オフハンド)
execute as @a[tag=atrswordjob,tag=atrswordct8,scores={swordjobskill8=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:8d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"*剣撃渦台*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1006,atrswordjobskill:8d,atrswordjob:1b,atrct:1b}
execute as @a[tag=atrswordjob,tag=!atrswordct8,scores={swordjobskill8=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:8d,atrct:1b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"剣撃渦台","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1005,atrswordjobskill:8d,atrswordjob:1b,atrct:0b}

execute as @a[tag=atrswordjob,tag=atrswordct8,scores={swordjobskill8=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:8d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"*剣撃渦台*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1006,atrswordjobskill:8d,atrswordjob:1b,atrct:1b}
execute as @a[tag=atrswordjob,tag=!atrswordct8,scores={swordjobskill8=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:8d,atrct:1b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"剣撃渦台","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1005,atrswordjobskill:8d,atrswordjob:1b,atrct:0b}

execute as @a[tag=!atrswordjob,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:8d}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:8d}
execute as @a[tag=atrswordjob,scores={swordjobskill8=0},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:8d}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:8d}
execute as @a[tag=atrswordjob,tag=!atrswordct8,scores={swordjobskill8=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:8d,atrct:1b}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:8d,atrct:1b}
execute as @a[tag=atrswordjob,tag=atrswordct8,scores={swordjobskill8=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:8d,atrct:0b}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:8d,atrct:0b}
execute as @a[tag=atrswordjob,tag=!atrswordct8,scores={swordjobskill8=1},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:8d,atrct:0b}}]}] at @s run give @s carrot_on_a_stick{display:{Name:'{"text":"剣撃渦台","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1005,atrswordjobskill:8d,atrswordjob:1b,atrct:0b}
execute as @a[tag=atrswordjob,tag=atrswordct8,scores={swordjobskill8=1},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:8d,atrct:1b}}]}] at @s run give @s carrot_on_a_stick{display:{Name:'{"text":"*剣撃渦台*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1006,atrswordjobskill:8d,atrswordjob:1b,atrct:1b}

#剣士のスキル発動用アイテム常時所持(スキル9、メインハンド、オフハンド)
 #メインハンド
  #---1にする
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:1b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1007,atrswordjobskill:9d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1007,atrswordjobskill:9d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1007,atrswordjobskill:9d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1007,atrswordjobskill:9d,atrswordjob:1b,atrct:0b}
  #---2にする
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:1b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1008,atrswordjobskill:9.2d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1008,atrswordjobskill:9.2d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1008,atrswordjobskill:9.2d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1008,atrswordjobskill:9.2d,atrswordjob:1b,atrct:0b}
  #---3にする
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=3},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:1b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1009,atrswordjobskill:9.3d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=3},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1009,atrswordjobskill:9.3d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=3},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1009,atrswordjobskill:9.3d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=3},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1009,atrswordjobskill:9.3d,atrswordjob:1b,atrct:0b}
  #---4にする
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=4},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:1b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1010,atrswordjobskill:9.4d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=4},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1010,atrswordjobskill:9.4d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=4},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1010,atrswordjobskill:9.4d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=4},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1010,atrswordjobskill:9.4d,atrswordjob:1b,atrct:0b}
  #---クールタイム中にする
   execute as @a[tag=atrswordjob,tag=atrswordct9,scores={swordjobskill9=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"*連鎖撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1011,atrswordjobskill:9d,atrswordjob:1b,atrct:1b}
   execute as @a[tag=atrswordjob,tag=atrswordct9,scores={swordjobskill9=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"*連鎖撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1011,atrswordjobskill:9d,atrswordjob:1b,atrct:1b}
   execute as @a[tag=atrswordjob,tag=atrswordct9,scores={swordjobskill9=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"*連鎖撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1011,atrswordjobskill:9d,atrswordjob:1b,atrct:1b}
   execute as @a[tag=atrswordjob,tag=atrswordct9,scores={swordjobskill9=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d,atrct:0b}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"*連鎖撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1011,atrswordjobskill:9d,atrswordjob:1b,atrct:1b}
 #オフハンド
  #---1にする
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:1b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1007,atrswordjobskill:9d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1007,atrswordjobskill:9d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1007,atrswordjobskill:9d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1007,atrswordjobskill:9d,atrswordjob:1b,atrct:0b}
  #---2にする
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=2},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:1b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1008,atrswordjobskill:9.2d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=2},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1008,atrswordjobskill:9.2d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=2},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1008,atrswordjobskill:9.2d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=2},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1008,atrswordjobskill:9.2d,atrswordjob:1b,atrct:0b}
  #---3にする
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=3},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:1b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1009,atrswordjobskill:9.3d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=3},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1009,atrswordjobskill:9.3d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=3},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1009,atrswordjobskill:9.3d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=3},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1009,atrswordjobskill:9.3d,atrswordjob:1b,atrct:0b}
  #---4にする
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=4},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:1b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1010,atrswordjobskill:9.4d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=4},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1010,atrswordjobskill:9.4d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=4},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1010,atrswordjobskill:9.4d,atrswordjob:1b,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=4},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1010,atrswordjobskill:9.4d,atrswordjob:1b,atrct:0b}
  #---クールタイム中にする
   execute as @a[tag=atrswordjob,tag=atrswordct9,scores={swordjobskill9=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"*連鎖撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1011,atrswordjobskill:9d,atrswordjob:1b,atrct:1b}
   execute as @a[tag=atrswordjob,tag=atrswordct9,scores={swordjobskill9=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"*連鎖撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1011,atrswordjobskill:9d,atrswordjob:1b,atrct:1b}
   execute as @a[tag=atrswordjob,tag=atrswordct9,scores={swordjobskill9=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"*連鎖撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1011,atrswordjobskill:9d,atrswordjob:1b,atrct:1b}
   execute as @a[tag=atrswordjob,tag=atrswordct9,scores={swordjobskill9=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d,atrct:0b}}]}] at @s run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"*連鎖撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1011,atrswordjobskill:9d,atrswordjob:1b,atrct:1b}
 #インベントリ
  #---全
   execute as @a[tag=!atrswordjob,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:9d}
   execute as @a[tag=!atrswordjob,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:9.2d}
   execute as @a[tag=!atrswordjob,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:9.3d}
   execute as @a[tag=!atrswordjob,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:9.4d}
   execute as @a[tag=atrswordjob,scores={swordjobskill9=0},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:9d}
   execute as @a[tag=atrswordjob,scores={swordjobskill9=0},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:9.2d}
   execute as @a[tag=atrswordjob,scores={swordjobskill9=0},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:9.3d}
   execute as @a[tag=atrswordjob,scores={swordjobskill9=0},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:9.4d}
  #---clear_1
   execute as @a[tag=atrswordjob,tag=atrswordct9,scores={swordjobskill9=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:0b}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:9d,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:0b}}]}] at @s unless score @s swordskill9_ matches 1 run clear @s carrot_on_a_stick{atrswordjobskill:9d,atrct:0b}
  #---clear_2
   execute as @a[tag=atrswordjob,tag=atrswordct9,scores={swordjobskill9=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d,atrct:0b}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:9.2d,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d,atrct:0b}}]}] at @s unless score @s swordskill9_ matches 2 run clear @s carrot_on_a_stick{atrswordjobskill:9.2d,atrct:0b}
  #---clear_3
   execute as @a[tag=atrswordjob,tag=atrswordct9,scores={swordjobskill9=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d,atrct:0b}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:9.3d,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d,atrct:0b}}]}] at @s unless score @s swordskill9_ matches 3 run clear @s carrot_on_a_stick{atrswordjobskill:9.3d,atrct:0b}
  #---clear_4
   execute as @a[tag=atrswordjob,tag=atrswordct9,scores={swordjobskill9=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d,atrct:0b}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:9.4d,atrct:0b}
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d,atrct:0b}}]}] at @s unless score @s swordskill9_ matches 4 run clear @s carrot_on_a_stick{atrswordjobskill:9.4d,atrct:0b}
  #---clear_クールタイム中
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:1b}}]}] at @s run clear @s carrot_on_a_stick{atrswordjobskill:9d,atrct:1b}
  #---give_1
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=1},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:0b}}]}] at @s run give @s carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1007,atrswordjobskill:9d,atrswordjob:1b,atrct:0b}
  #---give_2
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=2},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d,atrct:0b}}]}] at @s run give @s carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1008,atrswordjobskill:9.2d,atrswordjob:1b,atrct:0b}
  #---give_3
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=3},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d,atrct:0b}}]}] at @s run give @s carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1008,atrswordjobskill:9.3d,atrswordjob:1b,atrct:0b}
  #---give_4
   execute as @a[tag=atrswordjob,tag=!atrswordct9,scores={swordjobskill9=1,swordskill9_=4},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d,atrct:0b}}]}] at @s run give @s carrot_on_a_stick{display:{Name:'{"text":"連鎖撃","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1010,atrswordjobskill:9.4d,atrswordjob:1b,atrct:0b}
  #---give_クールタイム中
   execute as @a[tag=atrswordjob,tag=atrswordct9,scores={swordjobskill9=1},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:1b}}]}] at @s run give @s carrot_on_a_stick{display:{Name:'{"text":"*連鎖撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1011,atrswordjobskill:9d,atrswordjob:1b,atrct:1b}