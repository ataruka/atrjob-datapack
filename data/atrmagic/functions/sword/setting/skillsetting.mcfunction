scoreboard players reset @s atrtrigger.text
scoreboard players set @s swordjobtext 1
scoreboard players add @s atrusecoas 1
execute as @s[tag=atrswordjob,scores={swordjobLv=0}] at @s run function atrmagic:sword/setting/settingclicklv0
execute as @s[tag=atrswordjob,scores={swordjobLv=1}] at @s run function atrmagic:sword/setting/settingclicklv1
execute as @s[tag=atrswordjob,scores={swordjobLv=2}] at @s run function atrmagic:sword/setting/settingclicklv2
execute as @s[tag=atrswordjob,scores={swordjobLv=3}] at @s run function atrmagic:sword/setting/settingclicklv3
execute as @s[tag=atrswordjob,scores={swordjobLv=4}] at @s run function atrmagic:sword/setting/settingclicklv4
execute as @s[tag=atrswordjob,scores={swordjobLv=5}] at @s run function atrmagic:sword/setting/settingclicklv5
scoreboard players reset @s atrusecoas