   execute at @s run loot spawn ~ ~ ~ loot atrmagic:item/wizardjob_lapis
   data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0
   recipe take @s atrmagic:wizard_lapis_recipe
   clear @s knowledge_book 1
   advancement revoke @s only atrmagic:craft/wizardjob_lapis