function evola_dp:interrupt_focus
scoreboard players set @s soul_spell_cooldown 600
scoreboard players remove @s soul_meter 16
particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.5 100