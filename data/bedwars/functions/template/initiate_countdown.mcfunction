scoreboard players set template bwCntDwn 301
scoreboard players set template bwState 2
scoreboard players reset @a[tag=bwplaying_template] leave_bedwars
scoreboard players reset @a[tag=bwplaying_template] start_bedwars
clear @a[tag=bwplaying_template] shield{bwStartClick:1b}
clear @a[tag=bwplaying_template] shield{bwLeaveClick:1b}


