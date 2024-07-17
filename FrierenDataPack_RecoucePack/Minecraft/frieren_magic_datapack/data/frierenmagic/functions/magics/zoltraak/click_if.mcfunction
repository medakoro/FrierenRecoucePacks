#リロード完了&クリック検知
execute as @a[scores={carrot_click=1..,charge=100}] at @s run function frierenmagic:magics/zoltraak/summon_zoltraak_beam
item replace entity @a[scores={carrot_click=1..,charge=100}] weapon.mainhand with minecraft:carrot_on_a_stick{CustomModelData:1,display:{Name:"\"Frieren's Magic Wand\""},Enchantments:[{}]}
execute as @a[scores={carrot_click=1..,charge=100}] at @s run playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 0.5 1
execute as @a[scores={carrot_click=1..,charge=100}] at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 1
execute as @a[scores={carrot_click=1..,charge=100}] at @s run playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 0.5 0.45
execute as @a[scores={carrot_click=1..,charge=100}] at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 0.3
execute as @a[scores={carrot_click=1..,charge=100}] at @s run playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 0.5 0.1
execute as @a[scores={carrot_click=1..,charge=100}] at @s run playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 0.5 0.3
execute as @a[scores={carrot_click=1..,charge=100}] at @s run particle campfire_signal_smoke ~ ~ ~ 0.1 0.1 0.1 1 1000
execute as @a[scores={carrot_click=1..,charge=100}] at @s run particle campfire_signal_smoke ~ ~ ~ 0.1 0.1 0.1 1 1000
execute as @a[scores={carrot_click=1..,charge=100}] at @s run particle campfire_signal_smoke ~ ~ ~ 0.1 0.1 0.1 1 1000
execute as @a[scores={carrot_click=1..,charge=100}] at @s run particle campfire_signal_smoke ~ ~ ~ 0.1 0.1 0.1 1 1000
execute as @a[scores={carrot_click=1..,charge=100}] at @s run particle campfire_signal_smoke ~ ~ ~ 0.1 0.1 0.1 1 1000

execute as @a[scores={carrot_click=1..,charge=100}] at @s run summon interaction ^ ^ ^3 {Invisible:0b,Tags:[zoltraak_beam_main],Glowing:1b,NoGravity:1b,Invulnerable:1b}
execute as @a[scores={carrot_click=1..,charge=100}] at @s anchored eyes run tp @e[tag=zoltraak_beam_main] ^ ^ ^3 ~ ~



#end
execute as @a[scores={carrot_click=1..}] at @s run scoreboard players set @s carrot_click 0