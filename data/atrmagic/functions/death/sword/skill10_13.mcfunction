#ゲームルール設定
 gamerule showDeathMessages false
#tellraw
 tellraw @a [{"selector":"@s"},{"text":"に真っ二つにされた","color": "white"}]
#kill
 kill @s
#score
 scoreboard players set kill atrjobsetting 1
#ゲームルール戻す
 gamerule showDeathMessages true