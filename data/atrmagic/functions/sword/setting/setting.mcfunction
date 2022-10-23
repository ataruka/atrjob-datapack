playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
scoreboard players reset @s atrtrigger.text
scoreboard players enable @s atrtrigger.text
tellraw @s {"text":"-----------------------\n            スキル設定\n-----------------------"}
execute as @s[scores={swordjobLv=0..,swordjobskill1=1}] at @s run tellraw @s [{"text":"[鋭刃]","color":"white"},{"text":" オフにする","color":"gray","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 9"}}]
execute as @s[scores={swordjobLv=0..,swordjobskill1=0}] at @s run tellraw @s [{"text":"[鋭刃]","color":"white"},{"text":" オンにする","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 10"}}]
execute as @s[scores={swordjobLv=0..,swordjobskill2=1}] at @s run tellraw @s [{"text":"[背水の陣I]","color":"white"},{"text":" オフにする","color":"gray","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 11"}}]
execute as @s[scores={swordjobLv=0..,swordjobskill2=0}] at @s run tellraw @s [{"text":"[背水の陣I]","color":"white"},{"text":" オンにする","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 12"}}]

execute as @s[scores={swordjobLv=1..,swordjobskill3=1}] at @s run tellraw @s [{"text":"[静滴]","color":"white"},{"text":" オフにする","color":"gray","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 13"}}]
execute as @s[scores={swordjobLv=1..,swordjobskill3=0}] at @s run tellraw @s [{"text":"[静滴]","color":"white"},{"text":" オンにする","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 14"}}]
execute as @s[scores={swordjobLv=1..,swordjobskill4=1}] at @s run tellraw @s [{"text":"[峰打ち]","color":"white"},{"text":" オフにする","color":"gray","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 15"}}]
execute as @s[scores={swordjobLv=1..,swordjobskill4=0}] at @s run tellraw @s [{"text":"[峰打ち]","color":"white"},{"text":" オンにする","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 16"}}]

execute as @s[scores={swordjobLv=2..,swordjobskill5=1}] at @s run tellraw @s [{"text":"[背水の陣II※背水の陣Iがオフの場合機能しません]","color":"white"},{"text":" オフにする","color":"gray","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 17"}}]
execute as @s[scores={swordjobLv=2..,swordjobskill5=0}] at @s run tellraw @s [{"text":"[背水の陣II※背水の陣Iがオフの場合機能しません]","color":"white"},{"text":" オンにする","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 18"}}]
execute as @s[scores={swordjobLv=2..,swordjobskill6=1}] at @s run tellraw @s [{"text":"[斬撃]","color":"white"},{"text":" オフにする","color":"gray","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 19"}}]
execute as @s[scores={swordjobLv=2..,swordjobskill6=0}] at @s run tellraw @s [{"text":"[斬撃]","color":"white"},{"text":" オンにする","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 20"}}]

execute as @s[scores={swordjobLv=3..,swordjobskill7=1}] at @s run tellraw @s [{"text":"[忍耐]","color":"white"},{"text":" オフにする","color":"gray","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 21"}}]
execute as @s[scores={swordjobLv=3..,swordjobskill7=0}] at @s run tellraw @s [{"text":"[忍耐]","color":"white"},{"text":" オンにする","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 22"}}]
execute as @s[scores={swordjobLv=3..,swordjobskill9=1}] at @s run tellraw @s [{"text":"[連鎖撃]","color":"white"},{"text":" オフにする","color":"gray","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 25"}}]
execute as @s[scores={swordjobLv=3..,swordjobskill9=0}] at @s run tellraw @s [{"text":"[連鎖撃]","color":"white"},{"text":" オンにする","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 26"}}]

execute as @s[scores={swordjobLv=4..,swordjobskill8=1}] at @s run tellraw @s [{"text":"[剣撃渦台]","color":"white"},{"text":" オフにする","color":"gray","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 23"}}]
execute as @s[scores={swordjobLv=4..,swordjobskill8=0}] at @s run tellraw @s [{"text":"[剣撃渦台]","color":"white"},{"text":" オンにする","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 24"}}]

execute as @s[scores={swordjobLv=5..,swordjobskill10=1}] at @s run tellraw @s [{"text":"[斬撃コンボ※斬撃がオフの場合機能しません]","color":"white"},{"text":" オフにする","color":"gray","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 27"}}]
execute as @s[scores={swordjobLv=5..,swordjobskill10=0}] at @s run tellraw @s [{"text":"[斬撃コンボ※斬撃がオフの場合機能しません]","color":"white"},{"text":" オンにする","color":"green","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 28"}}]
tellraw @s [{"text":"\n[戻る]","color":"white","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 8"}}]
execute as @s[scores={swordjobLv=5..}] at @s run tellraw @s [{"text":"\n[職業専用スキル選択へ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 29"}}]
tellraw @s {"text":"-----------------------"}