recipe give @a *

# /give @p tipped_arrow[potion_contents={custom_effects:[{id:"minecraft:unluck",amplifier:1,duration:1}]},custom_data={explosive:true}] 1execute at @e[nbt={active_effects:[{amplifier:1b,id:"minecraft:unluck"}]}] run summon tnt ~ ~ ~ {fuse:0}
execute at @e[nbt={active_effects:[{amplifier:1b,id:"minecraft:unluck"}]}] run summon tnt ~ ~ ~ {fuse:0, explosion_power:2}
execute as @e[nbt={active_effects:[{amplifier:1b,id:"minecraft:unluck"}]}] run effect clear @s minecraft:unluck
execute at @e[type=arrow,nbt={inGround:true,item:{components:{"minecraft:custom_data":{explosive:true}}}}] run summon tnt ~ ~ ~ {fuse:0,explosion_power:2}
kill @e[type=arrow,nbt={inGround:1b,item:{components:{"minecraft:custom_data":{explosive:true}}}}]

execute as @a[nbt={equipment:{chest:{components:{"minecraft:damage":10,"minecraft:custom_data":{lb_glider:true}}}}}] run function evola_dp:glider_break
execute as @a[scores={boosted=1..},nbt={FallFlying:true,equipment:{chest:{components:{"minecraft:custom_data":{lb_glider:true}}}}}] run function evola_dp:glider_explode
execute as @a[scores={boosted=1..}] run scoreboard players reset @s boosted

# execute as @a if predicate evola_dp:display_soul_meter run title @s actionbar [{text:"Soul Meter: ",bold:true,color:"gray"},{score:{objective:soul_meter,name:"@s"},bold:true,color:"white"},{text:"/100",bold:true,color:"gray"}]
execute as @a if score @s soul_spell_cooldown matches 1.. run scoreboard players remove @s soul_spell_cooldown 1
execute as @a if items entity @s weapon.offhand minecraft:chain_command_block run function evola_dp:spell_in_offhand
execute as @a if items entity @s weapon.offhand minecraft:repeating_command_block run title @s actionbar [{text:"Soul Meter: ",bold:true,color:"gray"},{score:{objective:soul_meter,name:"@s"},bold:true,color:"dark_aqua"},{text:"/99",bold:true,color:"gray"}]
execute as @a if items entity @s weapon.mainhand minecraft:chain_command_block run function evola_dp:show_soul_or_cooldown

# execute as @e[type=minecraft:trident,tag=!pritrident_hit_ground] if predicate evola_dp:pritrident_hit_ground run function evola_dp:pritrident_hit_ground
execute as @e[type=trident,nbt={item:{components:{"minecraft:custom_data":{pritrident:true}}}}] at @s run particle minecraft:nautilus ~ ~ ~ 0.1 0.1 0.1 1 10

attribute @e[type=minecraft:ender_dragon,limit=1,tag=!more_health] minecraft:max_health base set 1000
data modify entity @e[type=minecraft:ender_dragon,limit=1,tag=!more_health] Health set value 1000
tag @e[type=minecraft:ender_dragon] add more_health
execute as @e[type=minecraft:ender_dragon] if data entity @s {HurtTime:9s} if predicate evola_dp:rc_01 at @s run summon minecraft:end_crystal
execute as @e[type=minecraft:dragon_fireball] at @s if entity @a[distance=..10] run execute positioned ~ ~3 ~ summon minecraft:shulker_bullet run function evola_dp:crystal_attack
execute as @e[type=minecraft:end_crystal] at @s run execute as @a[distance=..10] run damage @s 1 minecraft:magic
execute as @e[type=minecraft:end_crystal] at @s run execute as @a[distance=..10] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.3 10 force