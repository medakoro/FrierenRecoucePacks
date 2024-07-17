#CMDTag:nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}
execute as @a[nbt={SelectedItem:{tag:{CustomModelData:1}}},scores={sneak_time=1..}] at @s run tag @s add sneaking
execute as @a[scores={sneak_time=0}] at @s run tag @s remove sneaking
execute as @a[nbt=!{SelectedItem:{tag:{CustomModelData:1}}}] at @s run tag @s remove sneaking
scoreboard players set @a sneak_time 0
#チャージ時間
execute as @a[tag=sneaking,scores={charge=..99}] at @s run scoreboard players add @s charge10 5
execute as @a[scores={charge10=10..}] run scoreboard players add @s charge 1
execute as @a[scores={charge10=10..}] run scoreboard players set @s charge10 0
execute as @a[tag=sneaking] at @s run particle portal ~ ~ ~ 0.5 0.5 0.5 0.5 250
execute as @a[tag=!sneaking,scores={charge=0..}] at @s run scoreboard players remove @s charge 1