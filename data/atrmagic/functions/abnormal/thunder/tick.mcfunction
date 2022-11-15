
#スコア色々
scoreboard players remove @a[scores={atrjob.thundertick=1..}] atrjob.thundertick 1
scoreboard players add @a[scores={atrjob.thundertick=1..}] atrjob.thunderdamagetick 1
#実行
execute as @a[scores={atrjob.thunderdamagetick=20..},tag=atrjob.thunder1,gamemode=!creative,gamemode=!spectator] run attribute @s generic.armor modifier add ad4ebbae-3cd7-4f4a-97e3-640aa16a7a23 "状態異常[雷] 防御点-2" -2 add
execute as @a[scores={atrjob.thunderdamagetick=20..},tag=atrjob.thunder2,gamemode=!creative,gamemode=!spectator] run attribute @s generic.armor modifier add 50ee4042-8d60-483b-bdd6-7c5a63768726 "状態異常[雷] 防御点-7" -7 add
execute as @a[scores={atrjob.thunderdamagetick=20..},tag=atrjob.thunder3,gamemode=!creative,gamemode=!spectator] run attribute @s generic.armor modifier add a79821e1-1bca-4ac2-900d-0eb76c3c534c "状態異常[雷] 防御点-13" -13 add
execute as @a[scores={atrjob.thunderdamagetick=20..},tag=atrjob.thunder3,gamemode=!creative,gamemode=!spectator] run attribute @s generic.armor_toughness modifier add da06ebc5-58d6-498c-937f-4b2386fc197e "状態異常[雷] 防具強度-3" -3 add
execute as @a[tag=!atrjob.thunder1] run attribute @s generic.armor modifier remove ad4ebbae-3cd7-4f4a-97e3-640aa16a7a23
execute as @a[tag=!atrjob.thunder2] run attribute @s generic.armor modifier remove 50ee4042-8d60-483b-bdd6-7c5a63768726
execute as @a[tag=!atrjob.thunder3] run attribute @s generic.armor modifier remove a79821e1-1bca-4ac2-900d-0eb76c3c534c
execute as @a[tag=!atrjob.thunder3] run attribute @s generic.armor_toughness modifier remove da06ebc5-58d6-498c-937f-4b2386fc197e
#clear
execute as @a[scores={atrjob.thunderdamagetick=20..}] run scoreboard players reset @s atrjob.thunderdamagetick
execute as @a[scores={atrjob.thundertick=..0}] run function atrmagic:abnormal/thunder/remove