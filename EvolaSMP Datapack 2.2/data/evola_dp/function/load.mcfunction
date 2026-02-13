scoreboard objectives add temp_data_holder dummy
scoreboard players set #current_max_health temp_data_holder 0
scoreboard players set #add_health temp_data_holder 0

scoreboard objectives add boosted minecraft.used:minecraft.firework_rocket boosted

scoreboard objectives add Kills playerKillCount
scoreboard objectives add Deaths deathCount

scoreboard objectives add soul_meter dummy
scoreboard objectives add soul_spell_cooldown dummy

forceload add 0 0 0 0

scoreboard objectives add perm_data_holder dummy

execute unless score #onemace_crafted perm_data_holder matches 1 run scoreboard players set #onemace_crafted perm_data_holder 0

scoreboard objectives add player_die deathCount
execute unless score #id_counter perm_data_holder matches 1.. run scoreboard players set #id_counter perm_data_holder 0
scoreboard objectives add player_id dummy