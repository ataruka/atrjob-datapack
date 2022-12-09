#ゲームルール設定
 gamerule showDeathMessages false
#tellraw
 tellraw @a [{"selector":"@s"},{"text":"は","color": "white"},{"text":"ペチッされた","color": "white"}]
#kill
 kill @s
#score
 scoreboard players set kill atrjobsetting 1
#ゲームルール戻す
 gamerule showDeathMessages true