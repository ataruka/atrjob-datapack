   execute at @s run loot spawn ~ ~ ~ loot atrmagic:item/archerjob_emerald
   data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0
   recipe take @s atrmagic:adventure_diamond_recipe
   clear @s knowledge_book 1
   advancement revoke @s only atrmagic:craft/adventurejob_diamond