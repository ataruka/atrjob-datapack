kill @e[tag=atrjob.swordskill10_14]
  execute if entity @s[y_rotation=-22.5..22.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[0F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=22.5..67.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[45F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=67.5..114.9] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[90F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=115..157.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[135F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=157.5..-157.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[180F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=-157.5..-114.9] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[-135F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=-115..-67.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[-90F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
  execute if entity @s[y_rotation=-67.5..-22.4] anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^1.2 {Rotation:[-45F,0F],Tags:["atrjob.swordskill10_14","atrjob.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
 execute anchored eyes run tp @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] ^ ^ ^1.2 ~ 0
 scoreboard players operation @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] swordskill10_14.armortick = @s swordskill10now
 tag @e[limit=1,sort=nearest,tag=atrjob.armor_set,type=armor_stand] remove atrjob.armor_set