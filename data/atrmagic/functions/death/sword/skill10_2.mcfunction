#ゲームルール設定
 gamerule showDeathMessages false
#tellraw
 tellraw @a [{"selector":"@s"},{"text":"は"},{"selector":"@e[tag=swordskill10attack_2,limit=1,sort=nearest]"},{"text":"にザシュッとやられた"}]
#kill
 kill @s
#score
 scoreboard players set kill atrjobsetting 1
#ゲームルール戻す
 gamerule showDeathMessages true