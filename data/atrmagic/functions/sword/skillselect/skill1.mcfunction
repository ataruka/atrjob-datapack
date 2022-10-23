scoreboard players set @s swordjobskill11 1
scoreboard players set @s swordjobskill12 0
scoreboard players set @s swordjobskill13 0
scoreboard players set @s swordjobskill14 0
scoreboard players set @s swordjobskill15 0
scoreboard players set @s swordjobskill16 0
scoreboard players set @s swordjobskill17 0
tellraw @s {"text": "爆裂剣技を選択しました！","color": "red"}
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1 1
function atrmagic:sword/skillselect/skillselect