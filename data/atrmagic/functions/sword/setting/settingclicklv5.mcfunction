playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
scoreboard players enable @s atrtrigger.text
execute as @a[tag=atrswordjob,scores={atrusecoas=1..,swordjobLv=5},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobitem:1b}}}] at @s unless entity @e[tag=swordboss] run tellraw @s [{"text":"-----------------------\n","color":"white","italic":false},{"text":"              経験値\n","color":"green"},{"text":"    [★5]"},{"text":"■■■■■■■■■","color":"gold","italic":false},{"text": "(Max)\n","color": "gold"},{"text": " 貯蔵経験値","color": "green"},{"score":{"name":"@s","objective":"swordjobExp"},"color":"white","italic":false},{"text":" 金林檎消費数","color":"white"},{"score":{"name":"@s","objective":"swordjobGA"},"color":"gold"},{"text":"\n         ゾンビ撃破数","color":"white"},{"score":{"name":"@s","objective":"swordjobZB"},"color":"gold"},{"text":"\n-----------------------\n"},{"text":"         [設定]","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"設定\n","color":"white","italic":false},{"text":"スキルのスキルのオンオフを設定します","color":"gray","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 1"}},{"text":"[ボスに挑戦する]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"ボスに挑戦\n","color":"gold","italic":false},{"text":"自分の限界に挑戦しよう","color":"gray","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 7"}}]
execute as @a[tag=atrswordjob,scores={atrusecoas=1..,swordjobLv=5},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{atrswordjobitem:1b}}}] at @s if entity @e[tag=swordboss] run tellraw @s [{"text":"-----------------------\n","color":"white","italic":false},{"text":"              経験値\n","color":"green"},{"text":"    [★5]"},{"text":"■■■■■■■■■","color":"gold","italic":false},{"text": "(Max)\n","color": "gold"},{"text": " 貯蔵経験値","color": "green"},{"score":{"name":"@s","objective":"swordjobExp"},"color":"white","italic":false},{"text":" 金林檎消費数","color":"white"},{"score":{"name":"@s","objective":"swordjobGA"},"color":"gold"},{"text":"\n         ゾンビ撃破数","color":"white"},{"score":{"name":"@s","objective":"swordjobZB"},"color":"gold"},{"text":"\n-----------------------\n"},{"text":"         [設定]","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"設定\n","color":"white","italic":false},{"text":"スキルのスキルのオンオフを設定します","color":"gray","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger atrtrigger.text set 1"}},{"text":" [ボスに挑戦する]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"*ボスに挑戦*\n","color":"red","italic":false},{"text":"すでに挑戦中です","color":"gray","italic":false}]}}]