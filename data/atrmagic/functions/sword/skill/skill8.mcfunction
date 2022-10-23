#tagadd
 tag @s add atrsword8now
 tag @s add atrswordct8
#score-早めに
 scoreboard players set @s swordskill8me 0
#パーティクルと音
 playsound minecraft:splatoonseries.supertyakuti_start master @a ~ ~ ~ 1 1
 execute as @s at @s run function atrmagic:sword/skill/skill8_measure
#damage
 execute store result score @s swordskill8damage run scoreboard players get @s swordskill8me
 scoreboard players reset @s swordskill8me
#アイテム置き換え
 execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:8b}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"*剣撃渦台*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1108,atrswordjobskill:8b,atrswordjob:1b,atrct:1b}
 execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:8b}}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"*剣撃渦台*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1108,atrswordjobskill:8b,atrswordjob:1b,atrct:1b}
#score
 scoreboard players add @s swordjobCT8 600
