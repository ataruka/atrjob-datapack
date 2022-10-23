#ゲームルール設定
 gamerule showDeathMessages false
#tellraw
 tellraw @a [{"selector":"@s"},{"text":"は"},{"selector":"@e[tag=swordskill8attack,limit=1,sort=nearest]"},{"text":"の落下の衝撃波で粉砕された"}]
#kill
 kill @s
#score
 scoreboard players set kill atrjobsetting 1
#ゲームルール戻す
 gamerule showDeathMessages true