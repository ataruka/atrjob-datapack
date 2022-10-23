#---1.スキル設定画面開く
execute as @a[scores={atrtrigger.text=1}] at @s run function atrmagic:sword/setting/setting
#---2.職業レベルアップ(0=>1)
execute as @a[scores={atrtrigger.text=2}] at @s run function atrmagic:sword/uplv/uplv1
execute as @a[scores={atrtrigger.text=2}] at @s run function atrmagic:sword/setting/skillsetting
#---3.職業レベルアップ(1=>2)
execute as @a[scores={atrtrigger.text=3}] at @s run function atrmagic:sword/uplv/uplv2
execute as @a[scores={atrtrigger.text=3}] at @s run function atrmagic:sword/setting/skillsetting
#---4.職業レベルアップ(2=>3)
execute as @a[scores={atrtrigger.text=4}] at @s run function atrmagic:sword/uplv/uplv3
execute as @a[scores={atrtrigger.text=4}] at @s run function atrmagic:sword/setting/skillsetting
#---5.職業レベルアップ(3=>4)
execute as @a[scores={atrtrigger.text=5}] at @s run function atrmagic:sword/uplv/uplv4
execute as @a[scores={atrtrigger.text=5}] at @s run function atrmagic:sword/setting/skillsetting
#---6.職業レベルアップミッション、ボスを倒せ!(4=>5に挑む)
execute as @a[scores={atrtrigger.text=6}] at @s run function atrmagic:sword/uplv/lvup5boss
#---7.職業ボスを倒せ!(ボスに挑む)
execute as @a[scores={atrtrigger.text=7}] at @s run function atrmagic:sword/uplv/boss
#---8.スキル選択画面から戻る
execute as @a[scores={atrtrigger.text=8}] at @s run function atrmagic:sword/setting/skillsetting
#---9.スキル1off
execute as @a[scores={atrtrigger.text=9}] at @s run function atrmagic:sword/setting/skill1_off
#---10.スキル1on
execute as @a[scores={atrtrigger.text=10}] at @s run function atrmagic:sword/setting/skill1_on
#---11.スキル2off
execute as @a[scores={atrtrigger.text=11}] at @s run function atrmagic:sword/setting/skill2_off
#---12.スキル2on
execute as @a[scores={atrtrigger.text=12}] at @s run function atrmagic:sword/setting/skill2_on
#---13.スキル3off
execute as @a[scores={atrtrigger.text=13}] at @s run function atrmagic:sword/setting/skill3_off
#---14.スキル3on
execute as @a[scores={atrtrigger.text=14}] at @s run function atrmagic:sword/setting/skill3_on
#---15.スキル4off
execute as @a[scores={atrtrigger.text=15}] at @s run function atrmagic:sword/setting/skill4_off
#---16.スキル4on
execute as @a[scores={atrtrigger.text=16}] at @s run function atrmagic:sword/setting/skill4_on
#---17.スキル5off
execute as @a[scores={atrtrigger.text=17}] at @s run function atrmagic:sword/setting/skill5_off
#---18.スキル5on
execute as @a[scores={atrtrigger.text=18}] at @s run function atrmagic:sword/setting/skill5_on
#---19.スキル6off
execute as @a[scores={atrtrigger.text=19}] at @s run function atrmagic:sword/setting/skill6_off
#---20.スキル6on
execute as @a[scores={atrtrigger.text=20}] at @s run function atrmagic:sword/setting/skill6_on
#---21.スキル7off
execute as @a[scores={atrtrigger.text=21}] at @s run function atrmagic:sword/setting/skill7_off
#---22.スキル7on
execute as @a[scores={atrtrigger.text=22}] at @s run function atrmagic:sword/setting/skill7_on
#---23.スキル8off
execute as @a[scores={atrtrigger.text=23}] at @s run function atrmagic:sword/setting/skill8_off
#---24.スキル8on
execute as @a[scores={atrtrigger.text=24}] at @s run function atrmagic:sword/setting/skill8_on
#---25.スキル9off
execute as @a[scores={atrtrigger.text=25}] at @s run function atrmagic:sword/setting/skill9_off
#---26.スキル9on
execute as @a[scores={atrtrigger.text=26}] at @s run function atrmagic:sword/setting/skill9_on
#---27.スキル10off
execute as @a[scores={atrtrigger.text=27}] at @s run function atrmagic:sword/setting/skill10_off
#---28.スキル10on
execute as @a[scores={atrtrigger.text=28}] at @s run function atrmagic:sword/setting/skill10_on
#---29.選択スキル設定画面開く
execute as @a[scores={atrtrigger.text=29}] at @s run function atrmagic/sword/skillselect/skillselect
#---30.選択スキル1にする
execute as @a[scores={atrtrigger.text=30}] at @s run function atrmagic:sword/skillselect/skill1
#---31.選択スキル2にする
execute as @a[scores={atrtrigger.text=31}] at @s run function atrmagic:sword/skillselect/skill2
#---32.選択スキル3にする
execute as @a[scores={atrtrigger.text=32}] at @s run function atrmagic:sword/skillselect/skill3
#---33.選択スキル4にする
execute as @a[scores={atrtrigger.text=33}] at @s run function atrmagic:sword/skillselect/skill4
#---34.選択スキル5にする
execute as @a[scores={atrtrigger.text=34}] at @s run function atrmagic:sword/skillselect/skill5
#---35.選択スキル6にする
execute as @a[scores={atrtrigger.text=35}] at @s run function atrmagic:sword/skillselect/skill6
#---36.選択スキル7にする
execute as @a[scores={atrtrigger.text=36}] at @s run function atrmagic:sword/skillselect/skill7
