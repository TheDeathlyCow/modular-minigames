scoreboard players set bwpirates bwCntDwn 301
scoreboard players set bwpirates bwState 2
scoreboard players reset @a[tag=playing_bwpirates] leave_bedwars
scoreboard players reset @a[tag=playing_bwpirates] start_bedwars
clear @a[tag=playing_bwpirates] shield{bwStartClick:1b}
clear @a[tag=playing_bwpirates] shield{bwLeaveClick:1b}
title @a[tag=playing_bwpirates] times 2 10 2
