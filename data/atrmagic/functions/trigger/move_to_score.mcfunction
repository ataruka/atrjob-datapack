#リセット
scoreboard players set @s atrjob.XFacing 0
scoreboard players set @s atrjob.ZFacing 0
tag @e remove atrjob.Facing
#tag付与
tag @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=atrjob.forcheck] add atrjob.Facing
tag @s add atrjob.Check
#X軸
execute as @e[tag=atrjob.Facing] store result score $TEMP atrjob.varA run data get entity @s Pos[0] 1000
execute as @e[tag=atrjob.Facing] store result score $TEMP atrjob.varB run data get entity @s Pos[0] 1000
execute as @e[tag=atrjob.Facing] run scoreboard players operation $TEMP atrjob.varB -= @p[tag=atrjob.Check] atrjob.PrevPosX
execute as @e[tag=atrjob.Facing] run scoreboard players operation $TEMP atrjob.varA += $TEMP atrjob.varB
execute as @e[tag=atrjob.Facing] store result entity @s Pos[0] double 0.001 run scoreboard players get $TEMP atrjob.varA
#Z軸
execute as @e[tag=atrjob.Facing] store result score $TEMP atrjob.varA run data get entity @s Pos[2] 1000
execute as @e[tag=atrjob.Facing] store result score $TEMP atrjob.varB run data get entity @s Pos[2] 1000
execute as @e[tag=atrjob.Facing] run scoreboard players operation $TEMP atrjob.varB -= @p[tag=atrjob.Check] atrjob.PrevPosZ
execute as @e[tag=atrjob.Facing] run scoreboard players operation $TEMP atrjob.varA += $TEMP atrjob.varB
execute as @e[tag=atrjob.Facing] store result entity @s Pos[2] double 0.001 run scoreboard players get $TEMP atrjob.varA
#検知用のスコア設定
execute as @s at @s anchored eyes rotated ~ 0 positioned ^10.00001 ^ ^ if entity @e[distance=..10,tag=atrjob.Facing] run scoreboard players set @s atrjob.XFacing -1
execute as @s at @s anchored eyes rotated ~ 0 positioned ^-10.00001 ^ ^ if entity @e[distance=..10,tag=atrjob.Facing] run scoreboard players set @s atrjob.XFacing 1
execute as @s at @s anchored eyes rotated ~ 0 positioned ^ ^ ^10.00001 if entity @e[distance=..10,tag=atrjob.Facing] run scoreboard players set @s atrjob.ZFacing 1
execute as @s at @s anchored eyes rotated ~ 0 positioned ^ ^ ^-10.00001 if entity @e[distance=..10,tag=atrjob.Facing] run scoreboard players set @s atrjob.ZFacing -1
execute as @e[tag=atrjob.Facing,type=minecraft:armor_stand] at @p[tag=atrjob.Check] run tp ~ ~ ~
tag @e remove atrjob.Facing
tag @s remove atrjob.Check
#処理の最後で座標を代入
execute as @s store result score @s atrjob.PrevPosX run data get entity @s Pos[0] 1000
execute as @s store result score @s atrjob.PrevPosZ run data get entity @s Pos[2] 1000