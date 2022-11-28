#tagadd
 tag @s add swordskill10attack_4
 tag @s add atrsword10_check
 tag @s add atrsword10now_4
 tag @s add atrswordct10
#damagetagadd
 execute if score team atrjobsetting matches 0 if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_4,gamemode=!spectator,gamemode=!creative] add swordskill10ef_4
 execute if score team atrjobsetting matches 0 at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player] add swordskill10ef_4
#チーム戦のtag付与
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_4,gamemode=!spectator,gamemode=!creative,team=!atrjob.blue] add swordskill10ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_4,gamemode=!spectator,gamemode=!creative,team=!atrjob.green] add swordskill10ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_4,gamemode=!spectator,gamemode=!creative,team=!atrjob.red] add swordskill10ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_4,gamemode=!spectator,gamemode=!creative,team=!atrjob.yellow] add swordskill10ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] if score pvp atrjobsetting matches 1 at @s anchored eyes positioned ^ ^ ^2 run tag @a[distance=..3,tag=!swordskill10attack_4,gamemode=!spectator,gamemode=!creative] add swordskill10ef_4

 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.blue] add swordskill10ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.green] add swordskill10ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.red] add swordskill10ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player,team=!atrjob.yellow] add swordskill10ef_4
 execute if score team atrjobsetting matches 1 if entity @s[team=!atrjob.blue,team=!atrjob.green,team=!atrjob.red,team=!atrjob.yellow] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..3,type=!player] add swordskill10ef_4
#パーティクルと音
 playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1 0
 function atrmagic:particle/sword/skill10/skill10_2
#damage
 data modify storage atrscore_damage: Argument set value {Damage:4.00}
 execute as @e[tag=swordskill10ef_4] at @s run function atrmagic:damage/run
 data remove storage atrscore_damage: Argument
 tag @e[tag=swordskill10ef_4] remove swordskill10ef_4
 #斬撃飛ばしのアマスタ召喚
 execute anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Marker:1b,Invisible:1b,Tags:["atrjob.swordskill10_4"]}
 execute if entity @s[team=atrjob.blue] run team join atrjob.blue @e[limit=1,sort=nearest,tag=atrjob.swordskill10_4,type=armor_stand]
 execute if entity @s[team=atrjob.green] run team join atrjob.green @e[limit=1,sort=nearest,tag=atrjob.swordskill10_4,type=armor_stand]
 execute if entity @s[team=atrjob.red] run team join atrjob.red @e[limit=1,sort=nearest,tag=atrjob.swordskill10_4,type=armor_stand]
 execute if entity @s[team=atrjob.yellow] run team join atrjob.yellow @e[limit=1,sort=nearest,tag=atrjob.swordskill10_4,type=armor_stand]
 execute as @e[limit=1,sort=nearest,tag=atrjob.swordskill10_4,type=armor_stand] at @s rotated as @a[limit=1,sort=nearest,tag=swordskill10attack_4] run tp @s ~ ~ ~ ~ 0
 scoreboard players set @e[limit=1,sort=nearest,tag=atrjob.swordskill10_4,type=armor_stand] swordskill10_4.armortick 20
 execute as @e[limit=1,sort=nearest,tag=atrjob.swordskill10_4,type=armor_stand] at @s run tp ^ ^ ^2
 tag @s remove swordskill10attack_4
#打ち上げ
 execute at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0,Age:4,Effects:[{Id:25b,Amplifier:1b,Duration:8,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:30,ShowParticles:0b}]}
#数を指定して当たり判定用のスライムをぶつける
 scoreboard players set @s swordskill10.slime 35
 execute at @s rotated ~ 0 positioned ~ ~ ~ run function atrmagic:sword/skill/skill10/summon_recursive
#アイテム置き換え
 execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:10d}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"斬撃(コンボ)","color":"white","italic":false}',Lore:['[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1017,atrswordjobskill:10d,atrswordjob:1b,atrct:0b}
#score
 scoreboard players set @s swordskill10re 76
 scoreboard players add @s swordskill10now 6
 scoreboard players add @s swordjobCT10 16
#発動を記録
 function atrmagic:sword/skill/skill10/log
 scoreboard players set @s swordjobskill10.SC1 4