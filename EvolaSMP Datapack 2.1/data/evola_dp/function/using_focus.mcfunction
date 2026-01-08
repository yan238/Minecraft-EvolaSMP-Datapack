advancement revoke @s only evola_dp:using_focus

particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.3 0.3 0.1 1
execute if score @s soul_meter matches ..32 run return run function evola_dp:interrupt_focus
execute unless score @s soul_spell_cooldown matches ..0 run return run function evola_dp:interrupt_focus
execute if data entity @s {HurtTime:9s} run return run function evola_dp:focus_hurt