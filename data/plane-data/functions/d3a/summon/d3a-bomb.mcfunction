#d3aの爆弾召喚
#実行者：機体
#使用可能タグ target-parts d3a-position-executer

#### 60kg爆弾1個目召喚 ####
execute if entity @s[tag=60kg,tag=normal] run summon armor_stand ~ ~ ~ {Tags:["d3a-bomb-right","d3a",d3a-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,60kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:76,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=d3a-bomb-right,tag=d3a-init] vp.offsetX -4620
scoreboard players set @e[tag=d3a-bomb-right,tag=d3a-init] vp.offsetY -580
scoreboard players set @e[tag=d3a-bomb-right,tag=d3a-init] vp.offsetZ 800
scoreboard players set @e[tag=d3a-bomb-right,tag=d3a-init] vp.damage 300
scoreboard players set @e[tag=d3a-bomb-right,tag=d3a-init] vp.acc-cor -1
scoreboard players set @e[tag=d3a-bomb-right,tag=d3a-init] vp.pitch-spd-cor -2
scoreboard players set @e[tag=d3a-bomb-right,tag=d3a-init] vp.yaw-spd-cor -2
scoreboard players operation @e[tag=d3a-bomb-right,tag=d3a-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=d3a-bomb-right,tag=d3a-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=d3a-bomb-right,tag=d3a-init] remove d3a-init


#### 60kg爆弾2個目召喚 ####
execute if entity @s[tag=60kg,tag=normal] run summon armor_stand ~ ~ ~ {Tags:["d3a-bomb-left","d3a",d3a-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,60kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:76,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=d3a-bomb-left,tag=d3a-init] vp.offsetX 4670
scoreboard players set @e[tag=d3a-bomb-left,tag=d3a-init] vp.offsetY -580
scoreboard players set @e[tag=d3a-bomb-left,tag=d3a-init] vp.offsetZ 800
scoreboard players set @e[tag=d3a-bomb-left,tag=d3a-init] vp.damage 300
scoreboard players set @e[tag=d3a-bomb-left,tag=d3a-init] vp.acc-cor -1
scoreboard players set @e[tag=d3a-bomb-left,tag=d3a-init] vp.pitch-spd-cor -2
scoreboard players set @e[tag=d3a-bomb-left,tag=d3a-init] vp.yaw-spd-cor -2
scoreboard players operation @e[tag=d3a-bomb-left,tag=d3a-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=d3a-bomb-left,tag=d3a-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=d3a-bomb-left,tag=d3a-init] remove d3a-init

#### 250kg爆弾1個目召喚 ####
execute if entity @s[tag=250kg,tag=normal] run summon armor_stand ~ ~ ~ {Tags:["d3a-bomb-center","d3a",d3a-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,250kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:77,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=d3a-bomb-center,tag=d3a-init] vp.offsetX 75
scoreboard players set @e[tag=d3a-bomb-center,tag=d3a-init] vp.offsetY -1250
scoreboard players set @e[tag=d3a-bomb-center,tag=d3a-init] vp.offsetZ 800
scoreboard players set @e[tag=d3a-bomb-center,tag=d3a-init] vp.damage 1250
scoreboard players set @e[tag=d3a-bomb-center,tag=d3a-init] vp.acc-cor -3
scoreboard players set @e[tag=d3a-bomb-center,tag=d3a-init] vp.pitch-spd-cor -10
scoreboard players set @e[tag=d3a-bomb-center,tag=d3a-init] vp.yaw-spd-cor -7
scoreboard players operation @e[tag=d3a-bomb-center,tag=d3a-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=d3a-bomb-center,tag=d3a-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=d3a-bomb-center,tag=d3a-init] remove d3a-init

#残弾スコア付与
scoreboard players set @s vp.ammunition2 3
