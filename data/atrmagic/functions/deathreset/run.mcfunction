#実行
 #tag
  tag @s remove swordskill4ef
  tag @s remove swordskill4attack
  tag @s remove swordskill6attack
  tag @s remove atrsword6now
  tag @s remove swordskill6ef
  tag @s remove swordskill8ef
  tag @s remove swordskill8attack
  tag @s remove swordskill8_3m
  tag @s remove swordskill8_4m
  tag @s remove swordskill8_5m
  tag @s remove swordskill8_6m
  tag @s remove swordskill8_7m
  tag @s remove swordskill8_8m
  tag @s remove swordskill8_9m
  tag @s remove swordskill8_10m
  tag @s remove swordskill8_15m
  tag @s remove swordskill8_20m
  tag @s remove swordskill8_25m
  tag @s remove swordskill8_30m
  tag @s remove swordskill9_1
  tag @s remove swordskill9_2
  tag @s remove swordskill9_3
  tag @s remove swordskill9_4
  tag @s remove atrsword9now
  tag @s remove swordskill9attack_1
  tag @s remove swordskill9attack_2
  tag @s remove swordskill9attack_3
  tag @s remove swordskill9attack_4
  tag @s remove swordskill9ef_3.0
  tag @s remove swordskill9ef_4.0
  tag @s remove atrjob.fire1
  tag @s remove atrjob.fire2
  tag @s remove atrjob.fire3
  tag @s remove atrjob.water1
  tag @s remove atrjob.water2
  tag @s remove atrjob.water3
  tag @s remove atrjob.thunder1
  tag @s remove atrjob.thunder2
  tag @s remove atrjob.thunder3
  tag @s remove swordskill10ef_11
 #kill
  kill @e[tag=swordskill4ef.armorstand,limit=1,sort=nearest,distance=..10]

 #score
  scoreboard players reset @s swordskill4ef
  scoreboard players reset @s swordskill6now
  scoreboard players reset @s swordskill8damage
  scoreboard players reset @s swordskill8me
  scoreboard players reset @s swordskill8now
  scoreboard players reset @s swordskill9now
  scoreboard players reset @s swordskill9re
  scoreboard players reset @s atrjob.firetick
  scoreboard players reset @s atrjob.firedamagetick
  scoreboard players reset @s atrjob.watertick
  scoreboard players reset @s atrjob.waterdamagetick
  scoreboard players reset @s atrjob.thundertick
  scoreboard players reset @s atrjob.thunderdamagetick
  scoreboard players set @s swordskill9_ 1
  scoreboard players set @s swordskill10re 0
  scoreboard players set @s swordskill10now -1
  scoreboard players set @s swordjobCT4 0
  scoreboard players set @s swordjobCT6 0
  scoreboard players set @s swordjobCT8 0
  scoreboard players set @s swordjobCT9 0
  scoreboard players set @s swordjobCT10 0

 #reset_swordskill10
  function atrmagic:sword/skill/skill10/remove
  scoreboard players set @s swordskill10_12combo 0

 #リセット
  scoreboard players reset @s atrdeathtrigger

 #other
  data remove storage score_damage: Argument
  effect clear @s
  stopsound @s
  execute if entity @s[tag=atrswordjob] run scoreboard players add @s swordjobExp 50
  summon item ~ ~ ~ {Health:50,PickupDelay:0s,Item:{id:"minecraft:apple",Count:1b,tag:{display:{Name:'{"text":"死んでしまった！","color":"white"}',Lore:['{"text":"ああ なんということでしょう","color":"gray","italic":false}','{"text":"あなたは死んでしまいました","color":"gray","italic":false,"underlined":true}','{"text":" "}','[{"text":"お悔みに","color":"gray","italic":false},{"text":"経験値50","color":"dark_green","italic":false,"underlined":true},{"text":"と","color":"gray","italic":false},{"text":"リンゴ","color":"dark_red","italic":false,"underlined":true},{"text":"を"}]','{"text":"ひとつ差し上げます","color":"gray","italic":false}']}}}}
