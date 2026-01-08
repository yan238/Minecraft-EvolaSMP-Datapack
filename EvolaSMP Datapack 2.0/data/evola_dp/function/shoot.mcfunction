# https://www.reddit.com/r/MinecraftCommands/wiki/questions/shootfacing/

# summon temporary entity "in front of the player", if the player was standing at 0 0 0
execute positioned 0.0 0 0.0 run summon marker ^ ^ ^5 {Tags:["direction"]}

# summon the projectile entity (e.g. sheep, but can also be an arrow/snowball/etc. 
# When using a projectile, you might want to summon it in front of the player so it doesn't hit the player themselves)
# you might want to summon it at the players eyes as well using anchored eyes
execute anchored eyes run summon sheep ^ ^ ^1 {Tags:["projectile"]}

# copy the markers position tag to the sheeps motion tag
data modify entity @e[type=sheep,tag=projectile,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos

# clean up
tag @e[tag=projectile] remove projectile
kill @e[tag=direction]