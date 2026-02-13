advancement revoke @s only evola_dp:eat_heart

execute store result score #current_max_health temp_data_holder run attribute @s minecraft:max_health base get
scoreboard players set #add_health temp_data_holder 2
execute store result storage evola_dp:temp health.value int 1 run scoreboard players operation #current_max_health temp_data_holder += #add_health temp_data_holder
function evola_dp:change_max_health with storage evola_dp:temp health