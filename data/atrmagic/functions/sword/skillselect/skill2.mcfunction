scoreboard players set @s swordjobskill11 0
scoreboard players set @s swordjobskill12 1
scoreboard players set @s swordjobskill13 0
scoreboard players set @s swordjobskill14 0
scoreboard players set @s swordjobskill15 0
scoreboard players set @s swordjobskill16 0
scoreboard players set @s swordjobskill17 0
tellraw @s {"text": "呪いの刃を選択しました！","color": "green"}
playsound minecraft:entity.ender_dragon.shoot master @s ~ ~ ~ 1 1 1
function atrmagic:sword/skillselect/skillselect