advancement revoke @s only evola_dp:craft_onemace

execute if score #onemace_crafted perm_data_holder matches 0 run return run scoreboard players set #onemace_crafted perm_data_holder 1

tellraw @s {text:"The OneMace has already been crafted!",color:"red"}
clear @s minecraft:mace[custom_data~{onemace:true}] 1
give @s minecraft:heavy_core 2
give @s minecraft:enchanting_table 4
give @s minecraft:breeze_rod