#ダメージ補正
scoreboard players operation @s atrjob.Temporaryrng = @s atrjob.damage
scoreboard players operation @s atrjob.Temporaryrng /= #10 atrjobrng
scoreboard players operation @s atrjob.Temporaryrng /= #2 atrjobrng
scoreboard players operation @s atrjob.Temporaryrng *= #3 atrjobrng
scoreboard players operation @s atrjob.damage -= @s atrjob.Temporaryrng
scoreboard players reset @s atrjob.Temporaryrng