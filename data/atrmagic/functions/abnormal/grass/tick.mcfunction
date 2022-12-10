
#スコア色々
scoreboard players remove @a[scores={atrjob.grasstick=1..}] atrjob.grasstick 1
#実行-火
execute as @a[scores={atrjob.grasstick=1..},tag=atrjob.grass1,predicate=atrmagic:is_on_fire] run function atrmagic:abnormal/grass/damage_1
execute as @a[scores={atrjob.grasstick=1..},tag=atrjob.grass2,predicate=atrmagic:is_on_fire] run function atrmagic:abnormal/grass/damage_2
execute as @a[scores={atrjob.grasstick=1..},tag=atrjob.grass3,predicate=atrmagic:is_on_fire] run function atrmagic:abnormal/grass/damage_3

execute as @a[scores={atrjob.grasstick=1..},predicate=atrmagic:is_on_fire] run function atrmagic:abnormal/grass/remove

execute as @a[scores={atrjob.grasstick=1..,atrjob.firetick=1..},tag=atrjob.grass1] run function atrmagic:abnormal/grass/damage_1
execute as @a[scores={atrjob.grasstick=1..,atrjob.firetick=1..},tag=atrjob.grass2] run function atrmagic:abnormal/grass/damage_2
execute as @a[scores={atrjob.grasstick=1..,atrjob.firetick=1..},tag=atrjob.grass3] run function atrmagic:abnormal/grass/damage_3

execute as @a[scores={atrjob.grasstick=1..,atrjob.firetick=1..}] run function atrmagic:abnormal/grass/remove
#実行-水
execute as @a[scores={atrjob.grasstick=1..},tag=atrjob.grass1,predicate=atrmagic:in_water] run function atrmagic:abnormal/grass/slow_1
execute as @a[scores={atrjob.grasstick=1..},tag=atrjob.grass2,predicate=atrmagic:in_water] run function atrmagic:abnormal/grass/slow_2
execute as @a[scores={atrjob.grasstick=1..},tag=atrjob.grass3,predicate=atrmagic:in_water] run function atrmagic:abnormal/grass/slow_3

execute as @a[scores={atrjob.grasstick=1..},predicate=atrmagic:in_water] run function atrmagic:abnormal/grass/remove

execute as @a[scores={atrjob.grasstick=1..,atrjob.watertick=1..},tag=atrjob.grass1] run function atrmagic:abnormal/grass/slow_1
execute as @a[scores={atrjob.grasstick=1..,atrjob.watertick=1..},tag=atrjob.grass2] run function atrmagic:abnormal/grass/slow_2
execute as @a[scores={atrjob.grasstick=1..,atrjob.watertick=1..},tag=atrjob.grass3] run function atrmagic:abnormal/grass/slow_3

execute as @a[scores={atrjob.grasstick=1..,atrjob.watertick=1..}] run function atrmagic:abnormal/grass/remove
#実行-雷
execute as @a[scores={atrjob.grasstick=1..,atrjob.thundertick=1..},tag=atrjob.grass1] run function atrmagic:abnormal/grass/thunder_1
execute as @a[scores={atrjob.grasstick=1..,atrjob.thundertick=1..},tag=atrjob.grass2] run function atrmagic:abnormal/grass/thunder_2
execute as @a[scores={atrjob.grasstick=1..,atrjob.thundertick=1..},tag=atrjob.grass3] run function atrmagic:abnormal/grass/thunder_3

execute as @a[scores={atrjob.grasstick=1..,atrjob.thundertick=1..}] run function atrmagic:abnormal/grass/remove
#clear
execute as @a[scores={atrjob.grasstick=..0}] run function atrmagic:abnormal/grass/remove