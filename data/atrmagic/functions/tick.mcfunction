#常時実行
 # move_to_score用のアマスタ
  kill @e[tag=atrjob.forcheck,type=armor_stand]
  execute as @a at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["atrjob.forcheck"],Marker:1b}
execute as @a at @s run function atrmagic:trigger/move_to_score
function atrmagic:deathreset/tick
function atrmagic:sword/tick
function atrmagic:trigger/tick
function atrmagic:text/tick
function atrmagic:abnormal/tick
function atrjob_advance:tick
function atrmagic:exp/tick
#スライムを消す
 execute as @e[type=magma_cube,tag=atrjob.swordskill.slime] at @s run function atrmagic:trigger/slime_kill
#スタートの実績解除
advancement grant @a only atrmagic:start