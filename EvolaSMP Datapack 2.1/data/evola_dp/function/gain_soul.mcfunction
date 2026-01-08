advancement revoke @s only evola_dp:kill_soul_mob

execute unless score @s soul_meter matches 99.. run scoreboard players add @s soul_meter 1
execute unless score @s soul_spell_cooldown = @s soul_spell_cooldown run scoreboard players set @s soul_spell_cooldown 0
particle minecraft:sculk_soul ^ ^1 ^1 0.1 0.1 0.1 0.1 10 normal