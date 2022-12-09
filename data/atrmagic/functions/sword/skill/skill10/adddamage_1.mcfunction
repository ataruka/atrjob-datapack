#Damageの値を100倍でスコアに代入
execute store result score @s atrjob.damage run data get storage atrscore_damage: Argument.Damage 100
#Damageを補正
scoreboard players add @s[scores={swordskill10_12combo=1..}] atrjob.damage 200
#補正後を100分の一で代入
execute store result storage atrscore_damage: Argument.Damage double 0.01 run scoreboard players get @s atrjob.damage
#リセット
scoreboard players reset @s atrjob.damage