#スコア色々
scoreboard players remove @a[scores={atrjob.firetick=1..}] atrjob.firetick 1
scoreboard players add @a[scores={atrjob.firetick=1..}] atrjob.firedamagetick 1
#実行
execute as @a[scores={atrjob.firedamagetick=20..},tag=atrjob.fire1,gamemode=!creative,gamemode=!spectator] run function atrmagic:abnormal/fire/damage_1
execute as @a[scores={atrjob.firedamagetick=20..},tag=atrjob.fire2,gamemode=!creative,gamemode=!spectator] run function atrmagic:abnormal/fire/damage_2
execute as @a[scores={atrjob.firedamagetick=20..},tag=atrjob.fire3,gamemode=!creative,gamemode=!spectator] run function atrmagic:abnormal/fire/damage_3
#clear
execute as @a[scores={atrjob.firedamagetick=20..}] run scoreboard players reset @s atrjob.firedamagetick
execute as @a[scores={atrjob.firetick=..0}] run function atrmagic:abnormal/fire/remove
execute as @a[predicate=atrmagic:in_water] run function atrmagic:abnormal/fire/remove