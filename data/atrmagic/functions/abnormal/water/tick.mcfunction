
#スコア色々
scoreboard players remove @a[scores={atrjob.watertick=1..}] atrjob.watertick 1
scoreboard players add @a[scores={atrjob.watertick=1..}] atrjob.waterdamagetick 1
#実行
execute as @a[scores={atrjob.waterdamagetick=20..},tag=atrjob.water1,gamemode=!creative,gamemode=!spectator] run effect give @s hunger 2 100 true
execute as @a[scores={atrjob.waterdamagetick=20..},tag=atrjob.water2,gamemode=!creative,gamemode=!spectator] run effect give @s hunger 2 170 true
execute as @a[scores={atrjob.waterdamagetick=20..},tag=atrjob.water3,gamemode=!creative,gamemode=!spectator] run effect give @s hunger 2 255 true
execute as @a[scores={atrjob.watertick=1..},gamemode=!creative,gamemode=!spectator] run effect clear @s regeneration
execute as @a[scores={atrjob.watertick=1..},gamemode=!creative,gamemode=!spectator] run effect clear @s instant_health
execute as @a[scores={atrjob.watertick=1..},gamemode=!creative,gamemode=!spectator] run effect clear @s resistance
execute as @a[scores={atrjob.watertick=1..},gamemode=!creative,gamemode=!spectator] run effect clear @s fire_resistance
#clear
execute as @a[scores={atrjob.waterdamagetick=20..}] run scoreboard players reset @s atrjob.waterdamagetick
execute as @a[scores={atrjob.watertick=..0}] run function atrmagic:abnormal/water/remove
execute as @a[scores={atrjob.watertick=1..},predicate=atrmagic:is_on_fire] run function atrmagic:abnormal/water/remove
execute as @a[scores={atrjob.watertick=1..},predicate=atrmagic:is_running] run function atrmagic:get
execute as @a[scores={atrjob.watertick=1..,atrjobrng=1..5},tag=atrjob.water1] run function atrmagic:abnormal/water/remove
execute as @a[scores={atrjob.watertick=1..,atrjobrng=1..3},tag=atrjob.water2] run function atrmagic:abnormal/water/remove
execute as @a[scores={atrjob.watertick=1..,atrjobrng=1},tag=atrjob.water3] run function atrmagic:abnormal/water/remove
execute as @a[scores={atrjob.watertick=1..,atrjobrng=1..}] run scoreboard players reset @s atrjobrng