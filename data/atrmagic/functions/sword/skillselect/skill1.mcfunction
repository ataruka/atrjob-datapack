scoreboard players set @s swordjobskill11 1
scoreboard players set @s swordjobskill12 0
scoreboard players set @s swordjobskill13 0
scoreboard players set @s swordjobskill14 0
scoreboard players set @s swordjobskill15 0
scoreboard players set @s swordjobskill16 0
scoreboard players set @s swordjobskill17 0
tellraw @s {"text": "必中網羅を選択しました！","color": "white"}
playsound minecraft:block.dispenser.launch master @s ~ ~ ~ 2 1 1
function atrmagic:sword/skillselect/skillselect