advancement revoke @s only evola_dp:finished_focus

particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.3 0.3 0.5 500
tag @s add schedule_give_focus
function evola_dp:give_focus
scoreboard players remove @s soul_meter 33
scoreboard players set @s soul_spell_cooldown 1200
effect give @s absorption 1800 4