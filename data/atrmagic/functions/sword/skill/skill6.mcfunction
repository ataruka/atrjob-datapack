#tagadd
 tag @s add swordskill6attack
 tag @s add atrsword6now
 tag @s add atrswordct6
#damagetagadd
 execute if score pvp atrjobsetting matches 1 at @s positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill6attack,gamemode=!spectator,gamemode=!creative] add swordskill6ef
 execute as @s at @s positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player] add swordskill6ef
#パーティクルと音
 playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1 0
 function atrmagic:particle/sword/skill6
#damage
 data modify storage score_damage: Argument set value {Damage:16.00}
 execute as @e[tag=swordskill6ef] at @s run function score_damage:api/attack
 data remove storage score_damage: Argument
 tag @e[tag=swordskill6ef] remove swordskill6ef
 tag @s remove swordskill6attack
#effect
 summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:4b,Amplifier:127b,Duration:15,ShowParticles:0b}]}
 summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:11b,Amplifier:3b,Duration:20,ShowParticles:0b}]}
#アイテム置き換え
 execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:6b}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"*斬撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1106,atrswordjobskill:6b,atrswordjob:1b,atrct:1b}
 execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:6b}}]}] run item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"*斬撃*","color":"gray","italic":false}',Lore:['[{"text":"クールタイム中です","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1106,atrswordjobskill:6b,atrswordjob:1b,atrct:1b}
#score
 scoreboard players add @s swordskill6now 30
 scoreboard players add @s swordjobCT6 100
