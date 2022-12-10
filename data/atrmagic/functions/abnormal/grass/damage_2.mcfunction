data modify storage atrscore_damage: Argument set value {Damage:10.00,DamageType:"Fire",BypassArmor:true}
function atrmagic:damage/run
execute at @s run playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 1 1
data remove storage atrscore_damage: Argument