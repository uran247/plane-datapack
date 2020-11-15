#d4y2の爆弾召喚
#実行者：機体
#使用可能タグ target-parts d4y2-position-executer

#### 60kg爆弾1個目召喚 ####
execute if entity @s[tag=60kg-normal] run summon armor_stand ~ ~ ~ {Tags:["d4y2-bomb-right","d4y2",d4y2-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,60kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:76,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
#スコアセット
scoreboard players set @e[tag=d4y2-bomb-right,tag=d4y2-init] vp.offsetX -3100
scoreboard players set @e[tag=d4y2-bomb-right,tag=d4y2-init] vp.offsetY -800
scoreboard players set @e[tag=d4y2-bomb-right,tag=d4y2-init] vp.offsetZ 3000
scoreboard players set @e[tag=d4y2-bomb-right,tag=d4y2-init] vp.damage 300
scoreboard players set @e[tag=d4y2-bomb-right,tag=d4y2-init] vp.acc-cor -1
scoreboard players set @e[tag=d4y2-bomb-right,tag=d4y2-init] vp.pitch-spd-cor -2
scoreboard players set @e[tag=d4y2-bomb-right,tag=d4y2-init] vp.yaw-spd-cor -2
scoreboard players operation @e[tag=d4y2-bomb-right,tag=d4y2-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=d4y2-bomb-right,tag=d4y2-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=d4y2-bomb-right,tag=d4y2-init] remove d4y2-init


#### 60kg爆弾2個目召喚 ####
execute if entity @s[tag=60kg-normal] run summon armor_stand ~ ~ ~ {Tags:["d4y2-bomb-left","d4y2",d4y2-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,60kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:76,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=d4y2-bomb-left,tag=d4y2-init] vp.offsetX 3100
scoreboard players set @e[tag=d4y2-bomb-left,tag=d4y2-init] vp.offsetY -800
scoreboard players set @e[tag=d4y2-bomb-left,tag=d4y2-init] vp.offsetZ 3000
scoreboard players set @e[tag=d4y2-bomb-left,tag=d4y2-init] vp.damage 300
scoreboard players set @e[tag=d4y2-bomb-left,tag=d4y2-init] vp.acc-cor -1
scoreboard players set @e[tag=d4y2-bomb-left,tag=d4y2-init] vp.pitch-spd-cor -2
scoreboard players set @e[tag=d4y2-bomb-left,tag=d4y2-init] vp.yaw-spd-cor -2
scoreboard players operation @e[tag=d4y2-bomb-left,tag=d4y2-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=d4y2-bomb-left,tag=d4y2-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=d4y2-bomb-left,tag=d4y2-init] remove d4y2-init

#### 250kg爆弾1個目召喚 ####
execute if entity @s[tag=250kg-normal] run summon armor_stand ~ ~ ~ {Tags:["d4y2-bomb-center","d4y2",d4y2-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,250kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:77,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.offsetX 0
scoreboard players set @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.offsetY -800
scoreboard players set @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.offsetZ 3000
scoreboard players set @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.damage 1250
scoreboard players set @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.acc-cor -3
scoreboard players set @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.pitch-spd-cor -10
scoreboard players set @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.yaw-spd-cor -10
scoreboard players operation @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=d4y2-bomb-center,tag=d4y2-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=d4y2-bomb-center,tag=d4y2-init] remove d4y2-init

#### 500kg爆弾1個目召喚 ####
execute if entity @s[tag=500kg-normal] run summon armor_stand ~ ~ ~ {Tags:["d4y2-bomb-center","d4y2",d4y2-init,plane,has-offset,has-model,plane-bomb,plane-parts,entity-nohit,500kg,bomb-normal],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:105,Unbreakable:1}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}
scoreboard players set @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.offsetX 0
scoreboard players set @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.offsetY -800
scoreboard players set @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.offsetZ 3000
scoreboard players set @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.damage 2500
scoreboard players set @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.acc-cor -6
scoreboard players set @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.pitch-spd-cor -20
scoreboard players set @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.yaw-spd-cor -20
scoreboard players operation @e[tag=d4y2-bomb-center,tag=d4y2-init] vp.plane-id = @s vp.plane-id
execute as @e[tag=d4y2-bomb-center,tag=d4y2-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id
tag @e[tag=d4y2-bomb-center,tag=d4y2-init] remove d4y2-init

#残弾スコア付与
scoreboard players set @s[tag=60kg-normal] vp.ammunition2 3
scoreboard players set @s[tag=!60kg-normal] vp.ammunition2 1
scoreboard players set #return vp.return 1
