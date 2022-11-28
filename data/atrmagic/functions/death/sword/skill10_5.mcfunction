#ゲームルール設定
 gamerule showDeathMessages false
#tellraw
 tellraw @a [{"selector":"@s"},{"text":"は"},{"selector":"@e[tag=swordskill10attack_4,limit=1,sort=nearest]"},{"text":"に切り刻まれた"}]
#kill
 kill @s
#score
 scoreboard players set kill atrjobsetting 1
#ゲームルール戻す
 gamerule showDeathMessages true