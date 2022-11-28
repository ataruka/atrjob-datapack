#ゲームルール変更
 gamerule maxEntityCramming 0
# スライムを召喚
 scoreboard players remove @s swordskill10.slime 1
 summon magma_cube ^ ^-0.5 ^ {NoAI:1b,Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:emptyy",Tags:["atrjob.swordskill.slime"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999,ShowParticles:0b}]}
 execute if score @s swordskill10.slime matches 0.. run function atrmagic:sword/skill/skill10/summon_recursive
#2tick後戻す
 schedule function atrmagic:sword/skill/skill10/return_gamerule 2t