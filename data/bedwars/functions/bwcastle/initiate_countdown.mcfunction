scoreboard players set bwcastle bwCntDwn 301
scoreboard players set bwcastle bwState 2
scoreboard players reset @a[tag=playing_bwcastle] leave_bedwars
scoreboard players reset @a[tag=playing_bwcastle] start_bedwars
clear @a[tag=playing_bwcastle] shield{bwStartClick:1b}
clear @a[tag=playing_bwcastle] shield{bwLeaveClick:1b}
title @a[tag=playing_bwcastle] times 2 10 2
