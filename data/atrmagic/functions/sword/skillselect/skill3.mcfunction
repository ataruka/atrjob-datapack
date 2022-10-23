scoreboard players set @s swordjobskill11 0
scoreboard players set @s swordjobskill12 0
scoreboard players set @s swordjobskill13 1
scoreboard players set @s swordjobskill14 0
scoreboard players set @s swordjobskill15 0
scoreboard players set @s swordjobskill16 0
scoreboard players set @s swordjobskill17 0
tellraw @s {"text": "敏俊突進を選択しました！","color": "gray"}
playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 1 2 1
function atrmagic:sword/skillselect/skillselect