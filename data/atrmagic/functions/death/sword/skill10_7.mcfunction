#ゲームルール設定
 gamerule showDeathMessages false
#tellraw
 tellraw @a [{"selector":"@s"},{"text":"は","color": "white"},{"selector":"@e[tag=swordskill10attack_7,limit=1,sort=nearest]"},{"text":"にコンボされた","color": "white"}]
#kill
 kill @s
#score
 scoreboard players set kill atrjobsetting 1
#ゲームルール戻す
 gamerule showDeathMessages true