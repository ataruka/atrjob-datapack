# health
scoreboard objectives add atrHealth health
scoreboard objectives add atrhealth dummy
scoreboard objectives add atrMaxHealth dummy
scoreboard objectives add atrhalfHealth dummy
# MP
scoreboard objectives add atrMP dummy
# kill
scoreboard objectives add atrkillcount minecraft.custom:minecraft.mob_kills
# death-trigger
scoreboard objectives add atrdeathtrigger deathCount
# death
scoreboard objectives add atrdeathcount deathCount
# trigger
scoreboard objectives add atrtrigger.text trigger
# mine
scoreboard objectives add atrminestone minecraft.mined:minecraft.stone
scoreboard objectives add atrminecoal minecraft.mined:minecraft.coal_ore
scoreboard objectives add atrmineiron minecraft.mined:minecraft.iron_ore
scoreboard objectives add atrminedia minecraft.mined:minecraft.diamond_ore
# abnormal(状態異常)
scoreboard objectives add atrjob.firetick dummy
scoreboard objectives add atrjob.watertick dummy
scoreboard objectives add atrjob.thundertick dummy
scoreboard objectives add atrjob.firedamagetick dummy
scoreboard objectives add atrjob.waterdamagetick dummy
scoreboard objectives add atrjob.thunderdamagetick dummy
# damage
scoreboard objectives add atrjob.damage dummy
# 金林檎
scoreboard objectives add swordjobGA minecraft.used:minecraft.golden_apple
# use coas=carrot_on_a_stick
scoreboard objectives add atrusecoas minecraft.used:minecraft.carrot_on_a_stick
# 設定
scoreboard objectives add atrjobsetting dummy
# Swordのスコア色々 SG=設定の略 GA=金林檎 ZB=ゾンビ SC=スキルコンボ CT=クールタイム ef=エフェクトの持続時間 me=measure(距離計測)
scoreboard objectives add atrjob.varA dummy
scoreboard objectives add atrjob.varB dummy
scoreboard objectives add atrjob.PrevPosX dummy
scoreboard objectives add atrjob.PrevPosZ dummy
scoreboard objectives add atrjob.XFacing dummy
scoreboard objectives add atrjob.ZFacing dummy

scoreboard objectives add swordjobLv dummy
scoreboard objectives add swordjobExp dummy
scoreboard objectives add swordjobskill1 dummy
scoreboard objectives add swordjobskill2 dummy
scoreboard objectives add swordjobskill3 dummy
scoreboard objectives add swordjobskill4 dummy
scoreboard objectives add swordjobskill5 dummy
scoreboard objectives add swordjobskill6 dummy
scoreboard objectives add swordjobskill7 dummy
scoreboard objectives add swordjobskill8 dummy
scoreboard objectives add swordjobskill9 dummy
scoreboard objectives add swordjobskill10 dummy
scoreboard objectives add swordjobskill11 dummy
scoreboard objectives add swordjobskill12 dummy
scoreboard objectives add swordjobskill13 dummy
scoreboard objectives add swordjobskill14 dummy
scoreboard objectives add swordjobskill15 dummy
scoreboard objectives add swordjobskill16 dummy
scoreboard objectives add swordjobskill17 dummy
scoreboard objectives add swordjobCT4 dummy
scoreboard objectives add swordskill4ef dummy
scoreboard objectives add swordjobCT6 dummy
scoreboard objectives add swordjobCT8 dummy
scoreboard objectives add swordskill6now dummy
scoreboard objectives add swordskill8now dummy
scoreboard objectives add swordskill8me dummy
scoreboard objectives add swordskill8damage dummy
scoreboard objectives add swordskill9now_4 dummy
scoreboard objectives add swordskill9now dummy
scoreboard objectives add swordskill9re dummy
scoreboard objectives add swordjobCT9 dummy
scoreboard objectives add swordskill9_ dummy
scoreboard objectives add swordjobZB minecraft.killed:minecraft.zombie
scoreboard objectives add swordjobtext dummy

scoreboard objectives add swordjobskill10.SC1 dummy
scoreboard objectives add swordjobskill10.SC2 dummy
scoreboard objectives add swordjobskill10.SC3 dummy
scoreboard objectives add swordjobskill10.SC4 dummy
scoreboard objectives add swordjobskill10.SC5 dummy
scoreboard objectives add swordjobskill10.SC6 dummy
scoreboard objectives add swordjobskill10.SC7 dummy
scoreboard objectives add swordjobskill10.SC8 dummy
scoreboard objectives add swordjobskill10.SC9 dummy
scoreboard objectives add swordjobskill10.SC10 dummy
scoreboard objectives add swordjobCT10 dummy
scoreboard objectives add swordjobCT10_ dummy
scoreboard objectives add swordskill10now dummy
scoreboard objectives add swordskill10re dummy
scoreboard objectives add swordskill10.slime dummy
scoreboard objectives add atrjob.slime_Remove dummy
scoreboard objectives add swordskill10_2.armortick dummy
scoreboard objectives add swordskill10_4.armortick dummy
# MPの自動回復に使用
scoreboard objectives add atrMPtime dummy
# 乱数生成に使用
scoreboard objectives add atrjobrng dummy
# FallDistance
scoreboard objectives add atrjob.falldistance dummy
# HPを表示固定
scoreboard objectives setdisplay belowName atrHealth
# #100のrngスコアを100に設定
scoreboard players set #100 atrmagicrng 100
# #2のrngスコアを2に設定
scoreboard players set #2 atrmagicrng 2
# 開始時にpvpをoff
execute unless score pvp atrjobsetting matches 0.. run scoreboard players set pvp atrjobsetting 0
# 開始時にチーム戦をoff
execute unless score team atrjobsetting matches 0.. run scoreboard players set team atrjobsetting 0
# 常に読み込む
forceload add 10 10 -10 -10
# shulker_box用の常に読み込む
forceload add 20380 20380
# shulker設置
execute unless block 20380 0 20380 shulker_box run setblock 20380 0 20380 shulker_box{Items:[{Slot:0b,id:"minecraft:stick",Count:1b}]}
execute unless block 20380 1 20380 bedrock run setblock 20380 1 20380 bedrock
# 進捗付与
advancement grant @a[scores={swordjobLv=0..}] only atrmagic:sword/swordjob
advancement grant @a[scores={swordjobLv=0..}] only atrmagic:sword/swordjoblv0
advancement grant @a[scores={swordjobLv=1..}] only atrmagic:sword/swordjoblv1
advancement grant @a[scores={swordjobLv=2..}] only atrmagic:sword/swordjoblv2
advancement grant @a[scores={swordjobLv=3..}] only atrmagic:sword/swordjoblv3
advancement grant @a[scores={swordjobLv=4..}] only atrmagic:sword/swordjoblv4
advancement grant @a[scores={swordjobLv=5..}] only atrmagic:sword/swordjoblv5
# チーム作成
team add atrjob.blue "Team青"
team add atrjob.red "Team赤"
team add atrjob.yellow "Team黄"
team add atrjob.green "Team緑"
# チーム設定
#color
team modify atrjob.blue color aqua
team modify atrjob.red color red
team modify atrjob.yellow color yellow
team modify atrjob.green color green
#FF
team modify atrjob.blue friendlyFire false
team modify atrjob.red friendlyFire false
team modify atrjob.yellow friendlyFire false
team modify atrjob.green friendlyFire false
# 色々
tellraw @a "[atrjob]ゲームロード完了!"
#stone_sword [101=sword_iron 102=mine_coal 103=splaer_diamond 104=archer_emerald 105=pharmacist_potion 106=wizard_lapis 107=fighter_gold]
#stone_shovel [101=マルチミサイル(スプラ) 102=マルチミサイル(逆) 103=マルチミサイルの弾(スプラ) 104~110=スパショの弾(スプラ)、skill10_2斬撃、skill10_4斬撃]
#golden_apple [101=job powder]
#carrot_on_a_stick [100=スパショの発射するやつ(残弾0) 101=スパショの発射するやつ(残弾1) 102=スパショの発射するやつ(残弾2) 103=スパショの発射するやつ(残弾3)]