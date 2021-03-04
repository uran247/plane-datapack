#> plane:weapon/util/summon-rocket
#
# @input 
#   executer @e[tag=plane-root]
#   position @s
#   storage minecraft:plane-datapack temporary.weapon
#
# @public

#> private
#
# @private
    #declare tag rocket-init #初期化中の爆弾であることを示す

#爆弾召喚
summon armor_stand ~ ~ ~ {Tags:[weapon-init,plane,has-offset,has-model,plane-parts,entity-nohit,rocket-init,plane-rocket],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:0}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:256}

#データセット
execute store result score @e[type=armor_stand,tag=rocket-init,distance=..1,limit=1] vp.offsetX run data get storage minecraft:plane-datapack temporary.weapon.offset[0] 1000
execute store result score @e[type=armor_stand,tag=rocket-init,distance=..1,limit=1] vp.offsetY run data get storage minecraft:plane-datapack temporary.weapon.offset[1] 1000
execute store result score @e[type=armor_stand,tag=rocket-init,distance=..1,limit=1] vp.offsetZ run data get storage minecraft:plane-datapack temporary.weapon.offset[2] 1000
execute store result score @e[type=armor_stand,tag=rocket-init,distance=..1,limit=1] vp.damage run data get storage minecraft:plane-datapack temporary.weapon.damage
execute store result score @e[type=armor_stand,tag=rocket-init,distance=..1,limit=1] vp.acc-cor run data get storage minecraft:plane-datapack temporary.weapon.acc-cor
execute store result score @e[type=armor_stand,tag=rocket-init,distance=..1,limit=1] vp.pitch-spd-cor run data get storage minecraft:plane-datapack temporary.weapon.pitch-cor
execute store result score @e[type=armor_stand,tag=rocket-init,distance=..1,limit=1] vp.yaw-spd-cor run data get storage minecraft:plane-datapack temporary.weapon.yaw-cor
data modify entity @e[type=armor_stand,tag=rocket-init,distance=..1,limit=1] Tags append from storage minecraft:plane-datapack temporary.weapon.weight
data modify entity @e[type=armor_stand,tag=rocket-init,distance=..1,limit=1] Tags append from storage minecraft:plane-datapack temporary.weapon.type
execute store result entity @e[type=armor_stand,tag=rocket-init,distance=..1,limit=1] HandItems[0].tag.CustomModelData int 1 run data get storage minecraft:plane-datapack temporary.weapon.cmd

#初期化タグ削除
tag @e[type=armor_stand,tag=rocket-init,distance=..1,limit=1] remove rocket-init