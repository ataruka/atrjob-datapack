# 剣士のスキル1-鋭刃
 execute as @a[tag=atrswordjob,predicate=atrmagic:has_item/have_sword,scores={swordjobskill1=1}] at @s run function atrmagic:sword/skill/skill1
 execute as @a[tag=atrswordjob,predicate=!atrmagic:has_item/have_sword,scores={swordjobskill1=0..}] at @s run attribute @s generic.attack_damage modifier remove 51279ba1-3855-4b82-8996-3b1482416791

# 剣士のスキル2[5]-背水の陣I~背水の陣II
 execute as @a[tag=atrswordjob,scores={swordjobskill2=1}] at @s if score @s atrhealth < @s atrhalfHealth run function atrmagic:sword/skill/skill2
 execute as @a[tag=atrswordjob,scores={swordjobskill2=0..}] at @s if score @s atrhealth > @s atrhalfHealth run attribute @s generic.movement_speed modifier remove 6bee7b27-848a-4afd-92b6-166706dba79a
 execute as @a[tag=atrswordjob,scores={swordjobskill2=0..}] at @s if score @s atrhealth > @s atrhalfHealth run attribute @s generic.attack_damage modifier remove 315e2dcf-ca56-4e1a-b568-9425475200bb

# 剣士のスキル3-静滴
 execute as @a[tag=atrswordjob,predicate=atrmagic:has_item/have_sword,scores={swordjobskill3=1}] at @s run function atrmagic:sword/skill/skill3
 execute as @a[tag=atrswordjob,predicate=!atrmagic:has_item/have_sword,scores={swordjobskill3=0..}] at @s run attribute @s generic.movement_speed modifier remove 68332437-288a-4ddd-a7b6-d67e669e8138

# 剣士のスキル4-峰打ち => atrmagic/function/trigger/use/carrot_on_a_stickここにあります
 #tick
  scoreboard players remove @a[tag=atrswordct4] swordjobCT4 1
  scoreboard players remove @e[tag=swordskill4ef] swordskill4ef 1
  execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:4d,atrct:1b}}}] at @s run title @s actionbar [{"text":"峰打ちクールタイム: あと","color":"white","italic":false},{"score":{"name":"@s","objective":"swordjobCT4"},"color":"gold","italic":false}]
 #effect
  execute as @e[tag=swordskill4ef,type=!player] at @s run data merge entity @s {NoAI:true}
  execute as @e[tag=swordskill4ef,type=!player,scores={swordskill4ef=..0}] at @s run data merge entity @s {NoAI:false}
  execute as @e[tag=swordskill4ef] at @s run particle minecraft:dust 0 0 0 3 ~ ~1 ~ 0.5 0.5 0.5 0 1
  execute as @e[tag=swordskill4ef] at @s run tp @e[tag=swordskill4ef.armorstand,distance=..0.5,sort=nearest,limit=1]
  execute as @a[tag=swordskill4ef] at @s unless entity @e[tag=swordskill4ef.armorstand,distance=..0.5] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swordskill4ef.armorstand"],Invisible:1b}
  execute as @a[tag=swordskill4ef.armorstand] at @s unless entity @e[tag=swordskill4ef,distance=..0.5] run kill @s
  execute as @a[tag=swordskill4ef,scores={swordskill4ef=60}] at @s run execute as @e[tag=swordskill4ef.armorstand] at @s run data modify entity @s Rotation set from entity @a[distance=..0.0,limit=1,sort=nearest] Rotation
 #clear
  execute as @e[scores={swordjobCT4=..0},tag=atrswordct4] at @s run playsound minecraft:block.smithing_table.use master @s ~ ~ ~ 2 1 0
  execute as @e[scores={swordjobCT4=..0},tag=atrswordct4] run tag @s remove atrswordct4
  execute as @e[scores={swordjobCT4=..0}] run scoreboard players reset @s swordjobCT4
  execute as @e[scores={swordskill4ef=..0},tag=swordskill4ef] at @s run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 100 force
  execute as @e[scores={swordskill4ef=..0},tag=swordskill4ef] at @s run kill @e[tag=swordskill4ef.armorstand,distance=..1,limit=5,sort=nearest]
  execute as @e[scores={swordskill4ef=..0},tag=swordskill4ef] run tag @s remove swordskill4ef
  execute as @e[scores={swordskill4ef=..0}] run scoreboard players reset @s swordskill4ef

# 剣士のスキル5-背水の陣II
 #上にあります

# 剣士のスキル6-斬撃 => atrmagic/function/trigger/use/carrot_on_a_stickここにあります
 #tick
  scoreboard players remove @a[tag=atrswordct6] swordjobCT6 1
  scoreboard players remove @a[tag=atrsword6now] swordskill6now 1
  execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:6d,atrct:1b}}}] at @s run title @s actionbar [{"text":"斬撃クールタイム: あと","color":"white","italic":false},{"score":{"name":"@s","objective":"swordjobCT6"},"color":"gold","italic":false}]
 #effect
  execute as @a[tag=atrsword6now] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=#minecraft:arrows,distance=..3,nbt={inGround:0b},tag=!swordskill6now_arrow_end] add swordskill6now_arrow
  execute as @e[tag=swordskill6now_arrow] run data merge entity @s {Motion:[0.0,0.0,0.0]}
  execute as @e[tag=swordskill6now_arrow] at @a[tag=atrsword6now,sort=nearest,limit=1] positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^-0.5 ^0.3 {Tags:["atrsword6_set_Motion"],NoGravity:1b,Marker:1b,Invisible:1b}
  execute as @e[tag=swordskill6now_arrow] run data modify entity @s Motion set from entity @e[tag=atrsword6_set_Motion,limit=1] Pos
  execute as @e[tag=swordskill6now_arrow] run data modify entity @s damage set value 1
  kill @e[tag=atrsword6_set_Motion]
  execute as @e[tag=swordskill6now_arrow] at @s run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
  execute as @e[tag=swordskill6now_arrow,nbt={inGround:0b}] run tag @s add swordskill6now_arrow_end
  execute as @e[tag=swordskill6now_arrow] at @s run tag @s remove swordskill6now_arrow
  execute as @e[tag=swordskill6now_arrow_end,nbt={inGround:1b}] at @s run tag @s remove swordskill6now_arrow_end
 #clear
  execute as @e[scores={swordjobCT6=..0},tag=atrswordct6] at @s run playsound minecraft:block.smithing_table.use master @s ~ ~ ~ 2 1 0
  execute as @e[scores={swordjobCT6=..0},tag=atrswordct6] run tag @s remove atrswordct6
  execute as @e[scores={swordjobCT6=..0}] run scoreboard players reset @s swordjobCT6
  execute as @e[scores={swordskill6now=..0},tag=atrsword6now] run tag @s remove atrsword6now
  execute as @e[scores={swordskill6now=..0}] run scoreboard players reset @s swordskill6now

# 剣士のスキル7-忍耐
 execute as @a[tag=atrswordjob,scores={swordjobskill7=1}] at @s run function atrmagic:sword/skill/skill7
 execute as @a[tag=atrswordjob,scores={swordjobskill7=0}] at @s run attribute @s generic.max_health modifier remove cfe52cd1-4410-4f1f-b695-c78d5474c8ab

# 剣士のスキル8-剣撃渦台 => atrmagic/function/trigger/use/carrot_on_a_stickここにあります
 #tick
  scoreboard players remove @a[tag=atrswordct8] swordjobCT8 1
  scoreboard players add @a[tag=atrsword8now] swordskill8now 1
  execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:8d,atrct:1b}}}] at @s run title @s actionbar [{"text":"剣撃渦台クールタイム: あと","color":"white","italic":false},{"score":{"name":"@s","objective":"swordjobCT8"},"color":"gold","italic":false}]
 #effect
  execute as @a[tag=atrsword8now,scores={swordskill8now=1..20}] run effect clear @s resistance
  execute as @a[tag=atrsword8now,scores={swordskill8now=1..20}] run attribute @s generic.armor modifier add 2f5f542d-161a-42ee-94d2-8a41df455463 "swordskill8 Debuff armor-100%" -1 multiply
  execute as @a[tag=atrsword8now,scores={swordskill8now=1..20}] run attribute @s generic.armor_toughness modifier add fc0e2cb0-3270-4117-916e-acf10ba89e9b "swordskill8 Debuff armor_toughness-100%" -1 multiply
  execute as @a[tag=atrsword8now,scores={swordskill8now=21}] run attribute @s generic.armor modifier remove 2f5f542d-161a-42ee-94d2-8a41df455463
  execute as @a[tag=atrsword8now,scores={swordskill8now=21}] run attribute @s generic.armor_toughness modifier remove fc0e2cb0-3270-4117-916e-acf10ba89e9b
  execute as @a[tag=atrsword8now,scores={swordskill8now=1}] at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:28b,Amplifier:0b,Duration:20,ShowParticles:0b}]}
  execute as @a[tag=atrsword8now,scores={swordskill8now=1}] at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:25b,Amplifier:25b,Duration:5,ShowParticles:0b}]}
  execute as @a[tag=atrsword8now,scores={swordskill8now=1}] at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:4b,Amplifier:127b,Duration:15,ShowParticles:0b}]}
  execute as @a[tag=atrsword8now,scores={swordskill8now=15}] at @s run particle minecraft:flash ~ ~2 ~ 0 0 0 1 2 force
  execute as @a[tag=atrsword8now,scores={swordskill8now=20}] at @s run effect give @s levitation 10 128 true
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..}] at @s unless block ~ ~-1 ~ air run effect clear @s levitation
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..}] at @s unless block ~ ~-2 ~ air run effect clear @s levitation
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..}] run effect clear @s wither
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..}] run effect clear @s poison
  execute as @a[tag=swordskill8.0now] run gamerule fallDamage true
  execute as @a[tag=swordskill8.0now] run tag @s remove swordskill8.0now
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] run tag @s add swordskill8.0now
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..}] at @s unless block ~ ~-1 ~ air run tag @s add swordskill8.0now
  execute as @a[tag=swordskill8.0now] run gamerule fallDamage false
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] run effect clear @s levitation
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:0b}] run effect give @s resistance 3 4 true
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] run effect clear @s resistance
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run playsound minecraft:splatoonseries.supertyakuti_tyakuti master @a ~ ~ ~ 1 1 0.2
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_3m] at @s run particle minecraft:dust 1 0.5 0 10 ~ ~ ~ 3 2 3 3 300 force
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_4m] at @s run particle minecraft:dust 1 0.5 0 10 ~ ~ ~ 4 2 4 1 300 force
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_5m] at @s run particle minecraft:dust 1 0.5 0 10 ~ ~ ~ 5 2 5 1 400 force
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_6m] at @s run particle minecraft:dust 1 0.5 0 10 ~ ~ ~ 6 2 6 1 410 force
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_7m] at @s run particle minecraft:dust 1 0.5 0 10 ~ ~ ~ 7 2 7 1 410 force
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_8m] at @s run particle minecraft:dust 1 0.5 0 10 ~ ~ ~ 8 2 8 1 420 force
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_9m] at @s run particle minecraft:dust 1 0.5 0 10 ~ ~ ~ 9 2 9 1 420 force
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_10m] at @s run particle minecraft:dust 1 0.5 0 10 ~ ~ ~ 10 2 10 1 420 force
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_15m] at @s run particle minecraft:dust 1 0.5 0 10 ~ ~ ~ 15 2 15 1 2000 force
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_20m] at @s run particle minecraft:dust 1 0.5 0 10 ~ ~ ~ 20 2 20 1 2500 force
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_25m] at @s run particle minecraft:dust 1 0.5 0 10 ~ ~ ~ 25 2 25 1 3000 force
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_30m] at @s run particle minecraft:dust 1 0.5 0 10 ~ ~ ~ 30 2 30 1 3500 force
 #damage
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run scoreboard players add @s swordskill8damage 40
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..,swordskill8damage=500..},nbt={OnGround:1b}] at @s run scoreboard players set @s swordskill8damage 500
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s store result storage atrscore_damage: Argument.Damage double 0.2 run scoreboard players get @s swordskill8damage
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @s add swordskill8attack
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_3m] at @s run execute if score pvp atrjobsetting matches 1 run tag @a[distance=..3.5,tag=!swordskill8attack,gamemode=!spectator,gamemode=!creative] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_3m] at @s run tag @e[type=!#atrmagic:non_living,distance=..3.5,type=!player] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_4m] at @s run execute if score pvp atrjobsetting matches 1 run tag @a[distance=..4.5,tag=!swordskill8attack,gamemode=!spectator,gamemode=!creative] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_4m] at @s run tag @e[type=!#atrmagic:non_living,distance=..4.5,type=!player] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_5m] at @s run execute if score pvp atrjobsetting matches 1 run tag @a[distance=..6.5,tag=!swordskill8attack,gamemode=!spectator,gamemode=!creative] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_5m] at @s run tag @e[type=!#atrmagic:non_living,distance=..6.5,type=!player] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_6m] at @s run execute if score pvp atrjobsetting matches 1 run tag @a[distance=..7,tag=!swordskill8attack,gamemode=!spectator,gamemode=!creative] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_6m] at @s run tag @e[type=!#atrmagic:non_living,distance=..7,type=!player] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_7m] at @s run execute if score pvp atrjobsetting matches 1 run tag @a[distance=..8,tag=!swordskill8attack,gamemode=!spectator,gamemode=!creative] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_7m] at @s run tag @e[type=!#atrmagic:non_living,distance=..8,type=!player] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_8m] at @s run execute if score pvp atrjobsetting matches 1 run tag @a[distance=..9,tag=!swordskill8attack,gamemode=!spectator,gamemode=!creative] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_8m] at @s run tag @e[type=!#atrmagic:non_living,distance=..9,type=!player] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_9m] at @s run execute if score pvp atrjobsetting matches 1 run tag @a[distance=..10,tag=!swordskill8attack,gamemode=!spectator,gamemode=!creative] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_9m] at @s run tag @e[type=!#atrmagic:non_living,distance=..10,type=!player] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_10m] at @s run execute if score pvp atrjobsetting matches 1 run tag @a[distance=..11,tag=!swordskill8attack,gamemode=!spectator,gamemode=!creative] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_10m] at @s run tag @e[type=!#atrmagic:non_living,distance=..11,type=!player] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_15m] at @s run execute if score pvp atrjobsetting matches 1 run tag @a[distance=..16.5,tag=!swordskill8attack,gamemode=!spectator,gamemode=!creative] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_15m] at @s run tag @e[type=!#atrmagic:non_living,distance=..16.5,type=!player] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_20m] at @s run execute if score pvp atrjobsetting matches 1 run tag @a[distance=..21.5,tag=!swordskill8attack,gamemode=!spectator,gamemode=!creative] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_20m] at @s run tag @e[type=!#atrmagic:non_living,distance=..21.5,type=!player] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_25m] at @s run execute if score pvp atrjobsetting matches 1 run tag @a[distance=..27,tag=!swordskill8attack,gamemode=!spectator,gamemode=!creative] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_25m] at @s run tag @e[type=!#atrmagic:non_living,distance=..27,type=!player] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_30m] at @s run execute if score pvp atrjobsetting matches 1 run tag @a[distance=..50,tag=!swordskill8attack,gamemode=!spectator,gamemode=!creative] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b},tag=swordskill8_30m] at @s run tag @e[type=!#atrmagic:non_living,distance=..50,type=!player] add swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] run tag @e[team=atrjob.blue] remove swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] run tag @e[team=atrjob.green] remove swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] run tag @e[team=atrjob.red] remove swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] run tag @e[team=atrjob.yellow] remove swordskill8ef
  
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run execute as @e[tag=swordskill8ef,predicate=!atrmagic:effect/invincible] at @s run function atrmagic:damage/run
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s if entity @e[tag=swordskill8ef,predicate=atrmagic:effect/invincible] run data modify storage atrscore_damage: Argument.BypassResistance set value true
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run execute as @e[tag=swordskill8ef,predicate=atrmagic:effect/invincible] at @s run function atrmagic:damage/run
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run data remove storage atrscore_damage: Argument
 #clear
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @e remove swordskill8ef
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @e remove swordskill8attack
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @s remove swordskill8_3m
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @s remove swordskill8_4m
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @s remove swordskill8_5m
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @s remove swordskill8_6m
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @s remove swordskill8_7m
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @s remove swordskill8_8m
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @s remove swordskill8_9m
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @s remove swordskill8_10m
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @s remove swordskill8_15m
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @s remove swordskill8_20m
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @s remove swordskill8_25m
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @s remove swordskill8_30m
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run scoreboard players reset @s swordskill8damage
  execute as @a[tag=atrsword8now,scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run tag @s remove atrsword8now
  execute as @a[scores={swordskill8now=20..},nbt={OnGround:1b}] at @s run scoreboard players reset @s swordskill8now
  execute as @e[scores={swordjobCT8=..0},tag=atrswordct8] at @s run playsound minecraft:splatoonseries.specialcharge master @s ~ ~ ~ 2 1
  execute as @e[scores={swordjobCT8=..0},tag=atrswordct8] run tag @s remove atrswordct8
  execute as @e[scores={swordjobCT8=..0}] run scoreboard players reset @s swordjobCT8
# 剣士のスキル9-連鎖撃 => atrmagic/function/trigger/use/carrot_on_a_stickここにあります
  #tick
   scoreboard players remove @a[tag=atrsword9now] swordskill9now 1
   scoreboard players remove @a[tag=atrsword9now_4] swordskill9now_4 1
   scoreboard players remove @a[tag=atrswordct9] swordjobCT9 1
   scoreboard players remove @a[scores={swordskill9re=1..}] swordskill9re 1
   execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.2d}}}] at @s run title @s actionbar [{"text":"連鎖撃1st: リセットまであと","color":"white","italic":false},{"score":{"name":"@s","objective":"swordskill9re"},"color":"gold","italic":false}]
   execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.3d}}}] at @s run title @s actionbar [{"text":"連鎖撃2st: リセットまであと","color":"white","italic":false},{"score":{"name":"@s","objective":"swordskill9re"},"color":"gold","italic":false}]
   execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9.4d}}}] at @s run title @s actionbar [{"text":"連鎖撃3st: リセットまであと","color":"white","italic":false},{"score":{"name":"@s","objective":"swordskill9re"},"color":"gold","italic":false}]
   execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobskill:9d,atrct:1b}}}] at @s run title @s actionbar [{"text":"連鎖撃クールタイム: あと","color":"white","italic":false},{"score":{"name":"@s","objective":"swordjobCT9"},"color":"gold","italic":false}]
  #effect
   execute as @a[scores={swordskill9now_4=10},tag=swordskill9_4] at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:11b,Amplifier:4b,Duration:10,ShowParticles:0b}]}
   execute as @a[scores={swordskill9now_4=10},tag=swordskill9_4] at @s run effect clear @s slow_falling
   execute as @a[scores={swordskill9now_4=10},tag=swordskill9_4] at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:4b,Amplifier:127b,Duration:10,ShowParticles:0b}]}
   execute as @a[scores={swordskill9now=10},tag=swordskill9_1] at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:4b,Amplifier:127b,Duration:10,ShowParticles:0b}]}
   execute as @a[scores={swordskill9now=10},tag=swordskill9_2] at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:4b,Amplifier:127b,Duration:10,ShowParticles:0b}]}
   execute as @a[scores={swordskill9now_4=..10},tag=swordskill9_4] at @s unless block ~ ~-1 ~ air run effect clear @s levitation
   execute as @a[scores={swordskill9now_4=..10},tag=swordskill9_4] at @s unless block ~ ~-2 ~ air run effect clear @s levitation
   execute as @a[tag=swordskill9.0_4] run gamerule fallDamage true
   execute as @a[tag=swordskill9.0_4] run tag @s remove swordskill9.0_4
   execute as @a[scores={swordskill8now_4=..10},tag=swordskill9_4,nbt={OnGround:1b}] run effect clear @s levitation
   execute as @a[scores={swordskill9now_4=..10},tag=swordskill9_4,nbt={OnGround:1b}] at @s run tag @s add swordskill9.0_4
   execute as @a[scores={swordskill9now_4=..10},tag=swordskill9_4] at @s unless block ~ ~-1 ~ air run tag @s add swordskill9.0_4
   execute as @a[tag=swordskill9.0_4] run gamerule fallDamage false
    #particle_9.3
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=20}] at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:2b,Amplifier:5b,Duration:10,ShowParticles:0b}]}
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=20}] at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:4b,Amplifier:127b,Duration:10,ShowParticles:0b}]}
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1.7
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s run function atrmagic:particle/sword/skill9_3
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s anchored eyes rotated ~ 0 run particle cloud ^ ^3 ^1.5 0 0 0 1 100
    #damage_9.3
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s run execute anchored eyes if score pvp atrjobsetting matches 1 at @s rotated ~ 0 positioned ^ ^ ^2 run tag @a[distance=..2.5,tag=!swordskill9attack_2,gamemode=!spectator,gamemode=!creative] add swordskill9ef_3
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s run execute as @s at @s anchored eyes rotated ~ 0 positioned ^ ^ ^2 run tag @e[type=!#atrmagic:non_living,distance=..2.5,type=!player] add swordskill9ef_3
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s if score team atrjobsetting matches 1 if entity @s[team=atrjob.blue] run tag @e[team=atrjob.blue] remove swordskill9ef_3
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s if score team atrjobsetting matches 1 if entity @s[team=atrjob.green] run tag @e[team=atrjob.green] remove swordskill9ef_3
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s if score team atrjobsetting matches 1 if entity @s[team=atrjob.red] run tag @e[team=atrjob.red] remove swordskill9ef_3
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s if score team atrjobsetting matches 1 if entity @s[team=atrjob.yellow] run tag @e[team=atrjob.yellow] remove swordskill9ef_3
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] run execute as @e[tag=swordskill9ef_3] at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:25b,Amplifier:25b,Duration:6,ShowParticles:0b}]}
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] run execute as @e[tag=swordskill9ef_3] at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:28b,Amplifier:25b,Duration:30,ShowParticles:0b}]}
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:25b,Amplifier:25b,Duration:6,ShowParticles:0b}]}
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:28b,Amplifier:0b,Duration:60,ShowParticles:0b}]}
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s run data modify storage atrscore_damage: Argument set value {Damage:10.00}
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s run execute as @e[tag=swordskill9ef_3] at @s run function atrmagic:damage/run
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s run data remove storage atrscore_damage: Argument
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s run tag @e[tag=swordskill9ef_3] remove swordskill9ef_3
     execute as @a[tag=swordskill9attack_3,scores={swordskill9now=10}] at @s run tag @s remove swordskill9attack_3
   execute as @a[scores={swordskill9re=..0,swordskill9_=2..4}] at @s run playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2
   execute as @a[scores={swordskill9re=..0,swordskill9_=2..4}] at @s run playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2
   execute as @a[scores={swordskill9re=..0,swordskill9_=2..4}] at @s run playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2
   execute as @a[scores={swordskill9re=..0,swordskill9_=2..4}] at @s run playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2
   execute as @a[scores={swordskill9re=..0,swordskill9_=2..4}] at @s run playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2
   execute as @a[scores={swordskill9re=..0,swordskill9_=2..4}] at @s run playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2
  #clear
   execute as @e[scores={swordjobCT9=..0},tag=atrswordct9] at @s run playsound minecraft:block.smithing_table.use master @s ~ ~ ~ 2 1 0
   execute as @a[scores={swordskill9now=..0}] run tag @s remove swordskill9_1
   execute as @a[scores={swordskill9now=..0}] run tag @s remove swordskill9_2
   execute as @a[scores={swordskill9now=..0}] run tag @s remove swordskill9_3
   execute as @a[scores={swordskill9now_4=..10},nbt={OnGround:1b}] run tag @s remove swordskill9_4
   execute as @a[tag=atrsword9now,scores={swordskill9now=..0}] run tag @s remove atrsword9now
   execute as @a[tag=atrsword9now_4,scores={swordskill9now_4=..10},nbt={OnGround:1b}] run tag @s remove atrsword9now_4
   execute as @a[scores={swordskill9now=..0}] run scoreboard players reset @s swordskill9now
   execute as @a[scores={swordskill9now_4=..10},nbt={OnGround:1b}] run scoreboard players reset @s swordskill9now_4
   execute as @a[scores={swordskill9re=..0,swordskill9_=2..4}] run tag @s add atrswordct9
   execute as @a[scores={swordskill9re=..0,swordskill9_=2..4}] run scoreboard players set @s swordjobCT9 200
   execute as @a[scores={swordskill9re=..0,swordskill9_=2..4}] run scoreboard players set @s swordskill9_ 1
   execute as @a[tag=atrswordct9,scores={swordjobCT9=..0}] run tag @s remove atrswordct9
   execute as @a[scores={swordjobCT9=..0}] run scoreboard players reset @s swordjobCT9
   execute as @a[scores={swordskill9re=..0}] run scoreboard players reset @s swordskill9re
# 剣士のスキル10-コンボ => atrmagic/function/trigger/use/carrot_on_a_stickここにあります
  #tick
   scoreboard players remove @a[tag=atrswordct10] swordjobCT10 1
   scoreboard players remove @a[scores={swordskill10now=1..}] swordskill10now 1
   scoreboard players remove @a[scores={swordskill10re=1..}] swordskill10re 1
   scoreboard players remove @e[tag=atrjob.swordskill10_2] swordskill10_2.armortick 1
   scoreboard players remove @e[tag=atrjob.swordskill10_4] swordskill10_4.armortick 1
  #run-1(通常)
  #run-2(後退)
   execute as @e[tag=atrjob.swordskill10_2] run item replace entity @s armor.head with stone_shovel{CustomModelData:111}
   execute as @e[tag=atrjob.swordskill10_2] at @s run function atrmagic:particle/sword/skill10/skill10_2_armor
   execute as @e[tag=atrjob.swordskill10_2] at @s if block ^ ^ ^1.5 #atrmagic:no_collision run tp @s ^ ^ ^1.5 
   execute as @e[tag=atrjob.swordskill10_2] at @s unless block ^ ^ ^1.5 #atrmagic:no_collision run tp @s ~ ~-1000 ~
   execute as @e[tag=atrjob.swordskill10_2] at @s unless block ^ ^ ^1.5 #atrmagic:no_collision run kill @s
   execute as @e[tag=atrjob.swordskill10_2] at @s run function atrmagic:sword/skill/skill10_2_armor
   execute as @e[tag=atrjob.swordskill10_2] at @s if entity @e[distance=..1.5,type=!#atrmagic:non_living] run kill @s
  #run-3(空中)
  #run-4(空中後退)
   execute as @e[tag=atrjob.swordskill10_4] run item replace entity @s armor.head with stone_shovel{CustomModelData:112}
   execute as @e[tag=atrjob.swordskill10_4] at @s run function atrmagic:particle/sword/skill10/skill10_4_armor
   execute as @e[tag=atrjob.swordskill10_4] at @s if block ^ ^ ^1.5 #atrmagic:no_collision run tp @s ^ ^ ^1.5
   execute as @e[tag=atrjob.swordskill10_4] at @s unless block ^ ^ ^1.5 #atrmagic:no_collision run tp @s ~ ~-1000 ~
   execute as @e[tag=atrjob.swordskill10_4] at @s unless block ^ ^ ^1.5 #atrmagic:no_collision run kill @s
   execute as @e[tag=atrjob.swordskill10_4] at @s run function atrmagic:sword/skill/skill10_4_armor
  #run-5(重撃)
   execute as @a[tag=atrsword10now_5,scores={swordskill10now=25}] at @s run function atrmagic:sword/skill/skill10_5_2-4
   execute as @a[tag=atrsword10now_5,scores={swordskill10now=25}] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 2 0
   execute as @a[tag=atrsword10now_5,scores={swordskill10now=25}] at @s run function atrmagic:particle/sword/skill10/skill10_5_2

   execute as @a[tag=atrsword10now_5,scores={swordskill10now=20}] at @s run function atrmagic:sword/skill/skill10_5_2-4
   execute as @a[tag=atrsword10now_5,scores={swordskill10now=20}] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 2 0
   execute as @a[tag=atrsword10now_5,scores={swordskill10now=20}] at @s run function atrmagic:particle/sword/skill10/skill10_5_3

   execute as @a[tag=atrsword10now_5,scores={swordskill10now=15}] at @s run function atrmagic:sword/skill/skill10_5_2-4
   execute as @a[tag=atrsword10now_5,scores={swordskill10now=15}] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 2 0
   execute as @a[tag=atrsword10now_5,scores={swordskill10now=15}] at @s run function atrmagic:particle/sword/skill10/skill10_5_4

   execute as @a[tag=atrsword10now_5,scores={swordskill10now=0}] at @s run function atrmagic:sword/skill/skill10_5_5
   execute as @a[tag=atrsword10now_5,scores={swordskill10now=0}] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1 0
   execute as @a[tag=atrsword10now_5,scores={swordskill10now=0}] at @s run function atrmagic:particle/sword/skill10/skill10_5_5
  #run-6(しゃがみ防御)
   execute as @a[tag=atrsword10now_6,scores={swordskill10now=0..},nbt=!{ActiveEffects:[{Id:10}]}] at @s run effect give @s regeneration 3 1 true
   execute as @a[tag=atrsword10now_6,scores={swordskill10now=0..},nbt=!{ActiveEffects:[{Id:11}]}] at @s run effect give @s resistance 3 1 true
  #clear
    #1(通常)
     tag @a[tag=atrsword10now_1,scores={swordskill10now=..0}] remove atrsword10now_1
    #2(後退)
     tag @a[tag=atrsword10now_2,scores={swordskill10now=..0}] remove atrsword10now_2
    #3(空中)
     tag @a[tag=atrsword10now_3,scores={swordskill10now=..0}] remove atrsword10now_3
    #4(空中後退)
     tag @a[tag=atrsword10now_4,scores={swordskill10now=..0}] remove atrsword10now_4
    #5(重撃)
     tag @a[tag=atrsword10now_5,scores={swordskill10now=..0}] remove atrsword10now_5
    #6(しゃがみ防御)
     tag @a[tag=atrsword10now_6,scores={swordskill10now=..0}] remove atrsword10now_6
   scoreboard players reset @a[scores={swordskill10now=..0}] swordskill10now
    #コンボ戻る
     execute as @a[scores={swordskill10re=..0}] run function atrmagic:sword/skill/skill10/remove
     execute as @a[scores={swordskill10re=..0}] at @s run playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2
     execute as @a[scores={swordskill10re=..0}] at @s run playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2
     execute as @a[scores={swordskill10re=..0}] at @s run playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2
     execute as @a[scores={swordskill10re=..0}] at @s run playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2
     execute as @a[scores={swordskill10re=..0}] at @s run playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2
     execute as @a[scores={swordskill10re=..0}] at @s run playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2
     scoreboard players reset @a[scores={swordskill10re=..0}] swordskill10re
   tag @a[tag=atrswordct10,scores={swordjobCT10=..0}] remove atrswordct10
   scoreboard players reset @a[scores={swordjobCT10=..0}] swordjobCT10
    #2(後退)
     kill @e[tag=atrjob.swordskill10_2,scores={swordskill10_2.armortick=..0}]
    #4(空中後退)
     kill @e[tag=atrjob.swordskill10_4,scores={swordskill10_4.armortick=..0}]
   
#execute as @a[scores={atrjob.ZFacing=1}] run say 前に進んでるよー
#execute as @a[scores={atrjob.ZFacing=-1}] run say 後ろに進んでるよー