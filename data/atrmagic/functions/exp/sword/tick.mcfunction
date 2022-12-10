#expシステム
 #tick
  scoreboard players add @a[tag=atrswordjob] swordjobExptick 1
 #give_exp
  scoreboard players add @a[tag=atrswordjob,scores={atrjob.killcount=1..}] swordjobExp 10
  scoreboard players add @a[tag=atrswordjob,scores={atrjob.minedia=1..}] swordjobExp 80
  scoreboard players add @a[tag=atrswordjob,scores={atrjob.mineiron=1..}] swordjobExp 20
  scoreboard players add @a[tag=atrswordjob,scores={swordjobExptick=20..}] swordjobExp 1
  scoreboard players add @a[tag=atrswordjob,scores={atrjob.damage_dealt=1..},predicate=atrmagic:has_item/have_sword] swordjobExp 1
 #clear
  scoreboard players remove @a[tag=atrswordjob,scores={atrjob.killcount=1..}] atrjob.killcount 1
  scoreboard players remove @a[tag=atrswordjob,scores={atrjob.minedia=1..}] atrjob.minedia 1
  scoreboard players remove @a[tag=atrswordjob,scores={atrjob.mineiron=1..}] atrjob.mineiron 1
  scoreboard players reset @a[tag=atrswordjob,scores={atrjob.damage_dealt=1..}] atrjob.damage_dealt
  scoreboard players reset @a[tag=atrswordjob,scores={swordjobExptick=20..}] swordjobExptick
