recipe give @a *

# /give @p tipped_arrow[potion_contents={custom_effects:[{id:"minecraft:unluck",amplifier:1,duration:1}]},custom_data={explosive:true}] 1execute at @e[nbt={active_effects:[{amplifier:1b,id:"minecraft:unluck"}]}] run summon tnt ~ ~ ~ {fuse:0}
execute at @e[nbt={active_effects:[{amplifier:1b,id:"minecraft:unluck"}]}] run summon tnt ~ ~ ~ {fuse:0, explosion_power:2}
execute at @e[type=arrow,nbt={inGround:true,item:{components:{"minecraft:custom_data":{explosive:true}}}}] run summon tnt ~ ~ ~ {fuse:0,explosion_power:2}
kill @e[type=arrow,nbt={inGround:1b,item:{components:{"minecraft:custom_data":{explosive:true}}}}]

execute as @a[nbt={equipment:{chest:{components:{"minecraft:damage":10,"minecraft:custom_data":{lb_glider:true}}}}}] run function evola_dp:glider_break
execute as @a[scores={boosted=1..},nbt={FallFlying:true,equipment:{chest:{components:{"minecraft:custom_data":{lb_glider:true}}}}}] run function evola_dp:glider_explode
execute as @a[scores={boosted=1..}] run scoreboard players reset @s boosted