#execute as 視線主entity at 視線終端点entity run this

execute in overworld run tp 0-0-0-0-7 0.5 2 0.5
execute in overworld run tp 0-0-0-0-8 0.5 2 0.5
tp 0-0-0-0-9 0 1 0

execute facing entity @s eyes positioned as 0-0-0-0-7 in overworld run tp 0-0-0-0-7 ~ ~ ~ ~ ~
execute as 0-0-0-0-7 at @s facing ^ ^ ^-1 in overworld run tp 0-0-0-0-8 ~ ~0.01 ~ ~ ~

execute if entity @s[predicate=plane:in-overworld] if entity @s[distance=0..] in overworld rotated as 0-0-0-0-7 positioned ^ ^ ^25.6 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^12.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^06.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^03.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^01.6 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.1 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.1 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.05 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.05 rotated as 0-0-0-0-7 positioned ^ ^ ^-25.6 in overworld unless block ~ ~ ~ minecraft:air run tp 0-0-0-0-9 ~ ~ ~
execute if entity @s[predicate=plane:in-nether] if entity @s[distance=0..] in overworld rotated as 0-0-0-0-7 positioned ^ ^ ^25.6 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^12.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^06.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^03.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^01.6 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.1 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.1 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.05 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.05 rotated as 0-0-0-0-7 positioned ^ ^ ^-25.6 in the_nether unless block ~ ~ ~ minecraft:air run tp 0-0-0-0-9 ~ ~ ~
execute if entity @s[predicate=plane:in-end] if entity @s[distance=0..] in overworld rotated as 0-0-0-0-7 positioned ^ ^ ^25.6 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^12.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^06.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^03.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^01.6 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.1 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.1 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.05 if entity @s[distance=..25.6] rotated as 0-0-0-0-7 positioned ^ ^ ^00.05 rotated as 0-0-0-0-7 positioned ^ ^ ^-25.6 in the_end unless block ~ ~ ~ minecraft:air run tp 0-0-0-0-9 ~ ~ ~
execute store result score #x return run data get entity 0-0-0-0-9 Pos[0] 100
execute store result score #y return run data get entity 0-0-0-0-9 Pos[1] 100
execute store result score #z return run data get entity 0-0-0-0-9 Pos[2] 100
#tellraw @p [{"nbt":"Pos","entity":"0-0-0-0-9"}] 

#3 0.5 2 0.5 