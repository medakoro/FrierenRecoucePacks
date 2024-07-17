execute as @e[type=interaction,tag=zoltraak_beam_main] at @s run tp @s ^ ^ ^1
execute as @e[type=interaction,tag=zoltraak_beam_main] at @s run summon tnt ~ ~ ~
execute as @e[type=interaction,tag=zoltraak_beam_main] at @s run particle sweep_attack ~ ~ ~ 5 5 5 0.9 100


#召喚時初回のみ
#ゾルトラーク有効距離(Blocks)
scoreboard players set @e[tag=!summoned,type=interaction,tag=zoltraak_beam_main] zoltraak_block 130
tag @e[tag=!summoned,type=interaction,tag=zoltraak_beam_main] add summoned

scoreboard players remove @e[type=interaction,tag=zoltraak_beam_main] zoltraak_block 1


execute as @e[type=interaction,tag=zoltraak_beam_main,tag=summoned,scores={zoltraak_block=..0}] at @s run kill @s