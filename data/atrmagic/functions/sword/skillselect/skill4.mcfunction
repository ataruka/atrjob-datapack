scoreboard players set @s swordjobskill11 0
scoreboard players set @s swordjobskill12 0
scoreboard players set @s swordjobskill13 0
scoreboard players set @s swordjobskill14 1
scoreboard players set @s swordjobskill15 0
scoreboard players set @s swordjobskill16 0
scoreboard players set @s swordjobskill17 0
tellraw @s {"text": "神剣舞斬を選択しました！","color": "gold"}
playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 1 1
function atrmagic:sword/skillselect/skillselect