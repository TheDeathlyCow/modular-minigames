

# arena tick functions
function spleef:splfhockey/tick
function spleef:splfmall/tick

# single add 1 to start spleef call
scoreboard players add @a[scores={start_spleef=1}] start_spleef 1

scoreboard players reset @a[scores={leave_spleef=1..}] leave_spleef
