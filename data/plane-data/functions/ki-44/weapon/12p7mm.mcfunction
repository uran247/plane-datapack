#12.7mm機銃を使用 ki43
#実行者：機体

#曳光弾化判定
scoreboard players operation #is-bullet vp.reg1 = @s vp.ammunition1
scoreboard players operation #is-tracer vp.reg1 = @s vp.ammunition1
scoreboard players operation #is-bullet vp.reg1 %= #4 vp.Num
scoreboard players operation #is-tracer vp.reg1 %= #8 vp.Num

#召喚
execute if score #is-bullet vp.reg1 matches 0 unless score #is-tracer vp.reg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:[projectile,gun,12p7mm,gun-init,right1,tracer-orange,entity-nohit,offset-base],Duration:20}
execute if score #is-bullet vp.reg1 matches 0 unless score #is-tracer vp.reg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:[projectile,gun,12p7mm,gun-init,left1,tracer-orange,entity-nohit,offset-base],Duration:20}
execute if score #is-bullet vp.reg1 matches 0 unless score #is-tracer vp.reg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:[projectile,gun,12p7mm,gun-init,right2,tracer-orange,entity-nohit,offset-base],Duration:20}
execute if score #is-bullet vp.reg1 matches 0 unless score #is-tracer vp.reg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:[projectile,gun,12p7mm,gun-init,left2,tracer-orange,entity-nohit,offset-base],Duration:20}
execute if score #is-tracer vp.reg1 matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,right1,tracer-orange,entity-nohit,tracer,offset-base,offset-base],Invisible:1}
execute if score #is-tracer vp.reg1 matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,left1,tracer-orange,entity-nohit,tracer,offset-base,offset-base],Invisible:1}
execute if score #is-tracer vp.reg1 matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,right2,tracer-orange,entity-nohit,tracer,offset-base,offset-base],Invisible:1}
execute if score #is-tracer vp.reg1 matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,left2,tracer-orange,entity-nohit,tracer,offset-base,offset-base],Invisible:1}

#スコア付与
scoreboard players set @e[tag=gun-init,distance=..5] vp.speed 100
scoreboard players set @e[tag=gun-init,distance=..5] vp.damage 32
scoreboard players set @e[tag=gun-init,distance=..5,type=armor_stand] vp.max-age 20
scoreboard players operation @e[tag=gun-init,distance=..5] vp.plane-id = @s vp.plane-id
scoreboard players set @e[tag=gun-init,tag=left1,distance=..5] vp.offsetX 200
scoreboard players set @e[tag=gun-init,tag=left1,distance=..5] vp.offsetY 600
scoreboard players set @e[tag=gun-init,tag=left1,distance=..5] vp.offsetZ 3300
scoreboard players set @e[tag=gun-init,tag=left2,distance=..5] vp.offsetX 1740
scoreboard players set @e[tag=gun-init,tag=left2,distance=..5] vp.offsetY -450
scoreboard players set @e[tag=gun-init,tag=left2,distance=..5] vp.offsetZ 2600
scoreboard players set @e[tag=gun-init,tag=right1,distance=..5] vp.offsetX -330
scoreboard players set @e[tag=gun-init,tag=right1,distance=..5] vp.offsetY 600
scoreboard players set @e[tag=gun-init,tag=right1,distance=..5] vp.offsetZ 3300
scoreboard players set @e[tag=gun-init,tag=right2,distance=..5] vp.offsetX -1740
scoreboard players set @e[tag=gun-init,tag=right2,distance=..5] vp.offsetY -450
scoreboard players set @e[tag=gun-init,tag=right2,distance=..5] vp.offsetZ 2600

#発射位置に移動
function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin vp.reg1 = #sin vp.return
scoreboard players operation #cos vp.reg1 = #cos vp.return
execute as @e[tag=gun-init,distance=..5] run function plane-data:util/gun-set-position

#発射したならreload時間設定
execute if entity @e[tag=gun-init,distance=..20] run scoreboard players set @s vp.w1-cooltime 2

#音
playsound minecraft:weapon.gun-7p7m.fire master @a ~ ~ ~ 1 1 1

#発射炎
#execute as @e[tag=gun-init,distance=..10] at @s run particle minecraft:cloud ^ ^ ^ 0.1 0.1 0.1 0.1 1 force

#残弾数減算
scoreboard players remove @s vp.ammunition1 1

#終了処理
tag @e[tag=gun-init,distance=..20] remove gun-init