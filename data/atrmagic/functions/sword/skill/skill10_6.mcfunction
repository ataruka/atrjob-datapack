#tagadd
 tag @s add atrsword10_check
 tag @s add atrsword10now_6
 tag @s add atrswordct10
#damagetagadd
 #なし
#パーティクルと音
 playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1 0
 particle dust 1 1 1 1 ~ ~1 ~ 0.5 0.5 0.5 1 30 force
#damage
 #なし
#effect
 summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:2b,Amplifier:2b,Duration:60,ShowParticles:0b}]}
#アイテム置き換え
 execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:10d}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"斬撃(コンボ)","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して通常攻撃","color":"gray","italic":false}]','[{"keybind":"key.back","color":"blue","italic":false},{"text":"&","color":"gray","italic":false},{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して後退攻撃","color":"gray","italic":false}]','[{"text":"空中で","color":"gray","italic":false},{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して空中攻撃","color":"gray","italic":false}]','[{"text":"空中で","color":"gray","italic":false},{"keybind":"key.back","color":"blue","italic":false},{"text":"&","color":"gray","italic":false},{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して空中後退","color":"gray","italic":false}]','[{"keybind":"key.swapOffhand","color":"green","italic":false},{"text":"を押して重撃","color":"gray","italic":false}]','[{"keybind":"key.sneak","color":"aqua","italic":false},{"text":"&","color":"gray","italic":false},{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して防御","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1018,atrswordjobskill:10d,atrswordjob:1b,atrct:0b}
#score
 scoreboard players set @s swordskill10re 120
 scoreboard players add @s swordskill10now 60
 scoreboard players add @s swordjobCT10 60
#発動を記録
 function atrmagic:sword/skill/skill10/log
 scoreboard players set @s swordjobskill10.SC1 1