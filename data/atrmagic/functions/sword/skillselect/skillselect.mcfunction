playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
scoreboard players set @s swordjobtext 3
scoreboard players reset @s atrtrigger.text
scoreboard players enable @s atrtrigger.text
tellraw @s {"text":"-----------------------\n            スキル設定\n-----------------------"}
execute as @a[scores={swordjobLv=5..,swordjobskill11=1}] at @s run tellraw @s [{"text":"[爆裂剣技]","color":"white"},{"text":" 選択済み","color":"gray"}]
execute as @a[scores={swordjobLv=5..,swordjobskill11=0}] at @s run tellraw @s [{"text":"[爆裂剣技]","color":"white"},{"text":" 選択する","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 30"}}]
execute as @a[scores={swordjobLv=5..,swordjobskill12=0}] at @s run tellraw @s [{"text":"[双六案内]","color":"white"},{"text":" 選択する","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 31"}}]
execute as @a[scores={swordjobLv=5..,swordjobskill12=1}] at @s run tellraw @s [{"text":"[双六案内]","color":"white"},{"text":" 選択済み","color":"gray"}]
execute as @a[scores={swordjobLv=5..,swordjobskill13=0}] at @s run tellraw @s [{"text":"[敏俊突進]","color":"white"},{"text":" 選択する","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 32"}}]
execute as @a[scores={swordjobLv=5..,swordjobskill13=1}] at @s run tellraw @s [{"text":"[敏俊突進]","color":"white"},{"text":" 選択済み","color":"gray"}]
execute as @a[scores={swordjobLv=5..,swordjobskill14=0}] at @s run tellraw @s [{"text":"[神剣舞斬]","color":"white"},{"text":" 選択する","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 33"}}]
execute as @a[scores={swordjobLv=5..,swordjobskill14=1}] at @s run tellraw @s [{"text":"[神剣舞斬]","color":"white"},{"text":" 選択済み","color":"gray"}]
execute as @a[scores={swordjobLv=5..,swordjobskill15=0}] at @s run tellraw @s [{"text":"[ジョジョの奇妙な冒険第4部から登場！スタープラチナ・ザ・ワールド]","color":"white"},{"text":" 選択する","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 34"}}]
execute as @a[scores={swordjobLv=5..,swordjobskill15=1}] at @s run tellraw @s [{"text":"[ジョジョの奇妙な冒険第4部から！スタープラチナ・ザ・ワールド]","color":"white"},{"text":" 選択済み","color":"gray"}]
execute as @a[scores={swordjobLv=5..,swordjobskill16=0}] at @s run tellraw @s [{"text":"[原神から登場！無双の一太刀]","color":"white"},{"text":" 選択する","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 35"}}]
execute as @a[scores={swordjobLv=5..,swordjobskill16=1}] at @s run tellraw @s [{"text":"[原神から登場！無双の一太刀]","color":"white"},{"text":" 選択済み","color":"gray"}]
execute as @a[scores={swordjobLv=5..,swordjobskill17=0}] at @s run tellraw @s [{"text":"[スプラトゥーン2から！マルチミサイル]","color":"white"},{"text":" 選択する","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 36"}}]
execute as @a[scores={swordjobLv=5..,swordjobskill17=1}] at @s run tellraw @s [{"text":"[スプラトゥーン2から！マルチミサイル]","color":"white"},{"text":" 選択済み","color":"gray"}]
tellraw @s [{"text":"\n[戻る]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 37"}}]
tellraw @s {"text":"-----------------------"}