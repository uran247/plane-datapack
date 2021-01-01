#> plane-data:f4u-1/f4u1-position
#
# plane-seatの位置を調整する
#
# @input
#   executer @e[tag=plane-root]
#
# @within plane:position/position

#> private
# @private
    #declare score_holder #summoned-bomb #爆弾の召喚に成功したかどうかのフラグ
    #declare score_holder #summoned-rocket #ロケットの召喚に成功したかどうかのフラグ
    #declare score_holder #plane-id #実行者のplane-id

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^0.2 ^ ^-2.5
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^0.2 ^-0.4 ^1

#爆弾装備タグがついていて爆弾が0なら召喚
execute store result score @s[tag=has-bomb] vp.reg1 if entity @e[tag=target-parts,tag=plane-bomb]
execute as @s[tag=has-bomb,scores={vp.reg1=0}] if score @s vp.ammunition2 = @s vp.max-ammo2 at @s store success score #summoned-bomb vp.reg1 run function plane-data:f4u-1/summon/f4u1-bomb
execute if score #summoned-bomb vp.reg1 matches 1.. as @e[tag=f4u1,tag=plane-bomb,tag=!dropping,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts
execute if score #summoned-bomb vp.reg1 matches 1.. run tag @s add need-calc-offset
scoreboard players set #summoned-bomb vp.reg1 0

#ロケット装備タグがついていて爆弾が0なら召喚
execute store result score @s[tag=has-rocket] vp.reg1 if entity @e[tag=target-parts,tag=plane-rocket]
execute as @s[tag=has-rocket,scores={vp.reg1=0}] if score @s vp.ammunition3 = @s vp.max-ammo3 at @s store success score #summoned-rocket vp.reg1 run function plane-data:f4u-1/summon/f4u1-rocket
execute if score #summoned-rocket vp.reg1 matches 1.. as @e[tag=f4u1,tag=plane-rocket,tag=!rocket-moving,distance=..10] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts
execute if score #summoned-rocket vp.reg1 matches 1.. run tag @s add need-calc-offset
scoreboard players set #summoned-rocket vp.reg1 0
