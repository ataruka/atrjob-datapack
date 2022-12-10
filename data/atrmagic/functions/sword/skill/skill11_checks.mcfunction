#tag
 tag @s add swordskill11_checks
#アイテム置き換え
 item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"必中網羅","color":"white","italic":false}',Lore:['[{"keybind":"key.swapOffhand","color":"gold","italic":false},{"text":"を押して目標をセット","color":"gray","italic":false}]','[{"keybind":"key.use","color":"gold","italic":false},{"text":"を押して発動","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,CustomModelData:1028,atrswordjobskill:11d,atrswordjob:1b,atrct:0b}
#score
 execute as @e[tag=swordskill11ef] if score @s atrjob.swordskill11.UUID0 = @a[tag=swordskill11_checks,limit=1,sort=nearest] atrjob.UUID0 if score @s atrjob.swordskill11.UUID1 = @a[tag=swordskill11_checks,limit=1,sort=nearest] atrjob.UUID1 if score @s atrjob.swordskill11.UUID2 = @a[tag=swordskill11_checks,limit=1,sort=nearest] atrjob.UUID2 if score @s atrjob.swordskill11.UUID3 = @a[tag=swordskill11_checks,limit=1,sort=nearest] atrjob.UUID3 run tag @s add swordskill11efs
 execute if entity @e[tag=swordskill11efs] run function atrmagic:sword/skill/skill11_check
 tag @s remove swordskill11_checks