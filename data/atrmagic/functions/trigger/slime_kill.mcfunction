scoreboard players add @s atrjob.slime_Remove 1
execute if entity @s[scores={atrjob.slime_Remove=2..}] at @s run tp @s ~ ~-1000 ~
kill @s[scores={atrjob.slime_Remove=2..}]