#atrscore_damageをscore_damageに書き込む
data modify storage score_damage: Argument set from storage atrscore_damage: Argument
#Damageの値を100倍でスコアに代入
execute store result score @s atrjob.damage run data get storage score_damage: Argument.Damage 100
#属性によってDamageを補正
execute if data storage score_damage: Argument{AttackType:"grass"} if entity @s[tag=atrcatjob] run function atrmagic:damage/grass_protection/catjob_
execute if data storage score_damage: Argument{AttackType:"fire"} if entity @s[tag=atrswordjob] run function atrmagic:damage/fire_protection/swordjob_ 
execute if data storage score_damage: Argument{AttackType:"water"}
execute if data storage score_damage: Argument{AttackType:"thunder"}
execute if data storage score_damage: Argument{AttackType:"physics"}
#Damageを補正
scoreboard players remove @s[tag=atrtest.2] atrjob.damage 200
scoreboard players remove @s[tag=atrsword10now_6] atrjob.damage 200
scoreboard players set @s[scores={atrjob.damage=..0}] atrjob.damage 10
#補正後を100分の一で代入
execute store result storage score_damage: Argument.Damage double 0.01 run scoreboard players get @s atrjob.damage
#実行
function score_damage:api/attack
#リセット
data remove storage score_damage: Argument