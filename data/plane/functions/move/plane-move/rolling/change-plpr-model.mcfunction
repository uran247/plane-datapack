#> plane:move/plane-move/rolling/change-plpr-model
#
# プロペラの停止稼働モデル切り替え
#
# @input
#   execute @e[tag=plane-root]
#
# @within
#   function plane:move/plane-move/rolling

execute if score @s vp.speed >= @s vp.prop-stop-min if score @s vp.speed <= @s vp.prop-stop-max as @e[tag=target-parts,tag=model-changeable] store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get @s vp.parking-cmd
execute if score @s vp.speed >= @s vp.prop-strt-min if score @s vp.speed <= @s vp.prop-strt-max as @e[tag=target-parts,tag=model-changeable] store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get @s vp.rolling-cmd
