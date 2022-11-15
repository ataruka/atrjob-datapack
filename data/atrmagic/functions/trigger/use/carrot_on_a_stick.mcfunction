#剣士の設定用アイテムの使用コマンド
execute as @a[tag=atrswordjob,scores={atrusecoas=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobitem:1b}}}] at @s run function atrmagic:sword/setting/skillsetting

#剣士のスキル4-峰打ち
execute as @a[tag=atrswordjob,tag=!atrswordct4,tag=!swordskill4ef,scores={atrusecoas=1..,swordjobskill4=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4d,atrct:0b}}}] at @s run function atrmagic:sword/skill/skill4
execute as @a[tag=atrswordjob,tag=!atrswordct4,tag=!swordskill4ef,scores={atrusecoas=1..,swordjobskill4=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4d,atrct:0b}}]}] at @s run function atrmagic:sword/skill/skill4

#剣士のスキル6-斬撃
execute as @a[tag=atrswordjob,tag=!atrswordct6,tag=!swordskill4ef,scores={atrusecoas=1..,swordjobskill6=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:6d,atrct:0b}}}] at @s run function atrmagic:sword/skill/skill6
execute as @a[tag=atrswordjob,tag=!atrswordct6,tag=!swordskill4ef,scores={atrusecoas=1..,swordjobskill6=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:6d,atrct:0b}}]}] at @s run function atrmagic:sword/skill/skill6

#剣士のスキル8-剣撃渦台
execute as @a[tag=atrswordjob,tag=!atrswordct8,tag=!swordskill4ef,scores={atrusecoas=1..,swordjobskill8=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:8d,atrct:0b}}}] at @s run function atrmagic:sword/skill/skill8
execute as @a[tag=atrswordjob,tag=!atrswordct8,tag=!swordskill4ef,scores={atrusecoas=1..,swordjobskill8=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:8d,atrct:0b}}]}] at @s run function atrmagic:sword/skill/skill8

#剣士のスキル9-連鎖撃
execute as @a[tag=atrswordjob,tag=!atrswordct9,tag=!swordskill4ef,tag=!atrsword9now,scores={atrusecoas=1..,swordjobskill9=1,swordskill9_=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:0b}}}] at @s run function atrmagic:sword/skill/skill9
execute as @a[tag=atrswordjob,tag=!atrswordct9,tag=!swordskill4ef,tag=!atrsword9now,scores={atrusecoas=1..,swordjobskill9=1,swordskill9_=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:0b}}]}] at @s run function atrmagic:sword/skill/skill9

execute as @a[tag=atrswordjob,tag=!atrswordct9,tag=!swordskill4ef,tag=!atrsword9now,scores={atrusecoas=1..,swordjobskill9=1,swordskill9_=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d,atrct:0b}}}] at @s run function atrmagic:sword/skill/skill9_2
execute as @a[tag=atrswordjob,tag=!atrswordct9,tag=!swordskill4ef,tag=!atrsword9now,scores={atrusecoas=1..,swordjobskill9=1,swordskill9_=2},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d,atrct:0b}}]}] at @s run function atrmagic:sword/skill/skill9_2

execute as @a[tag=atrswordjob,tag=!atrswordct9,tag=!atrsword9now,scores={atrusecoas=1..,swordjobskill9=1,swordskill9_=3},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d,atrct:0b}}}] at @s run function atrmagic:sword/skill/skill9_3
execute as @a[tag=atrswordjob,tag=!atrswordct9,tag=!swordskill4ef,tag=!atrsword9now,scores={atrusecoas=1..,swordjobskill9=1,swordskill9_=3},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d,atrct:0b}}]}] at @s run function atrmagic:sword/skill/skill9_3

execute as @a[tag=atrswordjob,tag=!atrswordct9,tag=!atrsword9now,scores={atrusecoas=1..,swordjobskill9=1,swordskill9_=4},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d,atrct:0b}}}] at @s run function atrmagic:sword/skill/skill9_4
execute as @a[tag=atrswordjob,tag=!atrswordct9,tag=!swordskill4ef,tag=!atrsword9now,scores={atrusecoas=1..,swordjobskill9=1,swordskill9_=4},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d,atrct:0b}}]}] at @s run function atrmagic:sword/skill/skill9_4

#リセット
scoreboard players reset * atrusecoas