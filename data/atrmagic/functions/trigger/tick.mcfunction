#MaxHealthなどを100倍で代入
execute as @a at @s store result score @s atrMaxHealth run attribute @s generic.max_health get 100
execute as @a at @s run scoreboard players operation @s atrhalfHealth = @s atrMaxHealth
execute as @a at @s run scoreboard players operation @s atrhalfHealth /= #2 atrmagicrng
execute as @a at @s store result score @s atrhealth run data get entity @s Health 100
#FallDistance(10倍で代入)
execute as @a at @s store result score @s atrjob.falldistance run data get entity @s FallDistance 10

#常時実行
function atrmagic:trigger/use/carrot_on_a_stick
function atrmagic:trigger/has/sword/tick