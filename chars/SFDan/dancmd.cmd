; ______________________________
;| Dan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< COMMAND FILE >=======================================
;==============================================================================================

;===================< BUTTON REMAPPING >===================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;===================< DEFAULT VALUES >===================

[Defaults]
command.time = 15
command.buffer.time = 1


;===================< COMMANDS >===================

[Command]
name = "D"
command = D
time = 1

[Command]
name = "DF"
command = DF
time = 1

[Command]
name = "F"
command = F
time = 1

[Command]
name = "UF"
command = UF
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "UB"
command = UB
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "DB"
command = DB
time = 1

[Command]
name = "$D"
command = $D
time = 1

[Command]
name = "$F"
command = $F
time = 1

[Command]
name = "$U"
command = $U
time = 1

[Command]
name = "$B"
command = $B
time = 1

[Command]
name = "/D"
command = /D
time = 1

[Command]
name = "/DF"
command = /DF
time = 1

[Command]
name = "/F"
command = /F
time = 1

[Command]
name = "/UF"
command = /UF
time = 1

[Command]
name = "/U"
command = /U
time = 1

[Command]
name = "/UB"
command = /UB
time = 1

[Command]
name = "/B"
command = /B
time = 1

[Command]
name = "/DB"
command = /DB
time = 1

[Command]
name = "/$D"
command = /$D
time = 1

[Command]
name = "/$F"
command = /$F
time = 1

[Command]
name = "/$U"
command = /$U
time = 1

[Command]
name = "/$B"
command = /$B
time = 1

[Command]
name = "~D"
command = ~D
time = 1

[Command]
name = "~DF"
command = ~DF
time = 1

[Command]
name = "~F"
command = ~F
time = 1

[Command]
name = "~UF"
command = ~UF
time = 1

[Command]
name = "~U"
command = ~U
time = 1

[Command]
name = "~UB"
command = ~UB
time = 1

[Command]
name = "~B"
command = ~B
time = 1

[Command]
name = "~DB"
command = ~DB
time = 1

[Command]
name = "~$D"
command = ~$D
time = 1

[Command]
name = "~$F"
command = ~$F
time = 1

[Command]
name = "~$U"
command = ~$U
time = 1

[Command]
name = "~$B"
command = ~$B
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "/a"
command = /a
time = 1

[Command]
name = "/b"
command = /b
time = 1

[Command]
name = "/c"
command = /c
time = 1

[Command]
name = "/x"
command = /x
time = 1

[Command]
name = "/y"
command = /y
time = 1

[Command]
name = "/z"
command = /z
time = 1

[Command]
name = "/s"
command = /s
time = 1

[Command]
name = "~a"
command = ~a
time = 1

[Command]
name = "~b"
command = ~b
time = 1

[Command]
name = "~c"
command = ~c
time = 1

[Command]
name = "~x"
command = ~x
time = 1

[Command]
name = "~y"
command = ~y
time = 1

[Command]
name = "~z"
command = ~z
time = 1

[Command]
name = "~s"
command = ~s
time = 1


;===================< REQUIRED >===================

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "FF" 
command = F, F
time = 10

[Command]
name = "BB" 
command = B, B
time = 10

[Command]
name = "recovery"
command = x
time = 1

[Command]
name = "recovery"
command = y
time = 1

[Command]
name = "recovery"
command = z
time = 1


;====================< CHECKS >====================

[Command]
name = "rlsdir"
command = ~$F
time = 1

[Command]
name = "rlsdir"
command = ~$B
time = 1

[Command]
name = "rlsdir"
command = ~$U
time = 1

[Command]
name = "rlsdir"
command = ~$D
time = 1


;====================< OTHER >====================

[Command]
name = "counter_p"
command = F, x + y
time = 8

[Command]
name = "counter_p"
command = F, x + z
time = 8

[Command]
name = "counter_p"
command = F, y + z
time = 8

[Command]
name = "counter_k"
command = F, a + b
time = 8

[Command]
name = "counter_k"
command = F, a + c
time = 8

[Command]
name = "counter_k"
command = F, b + c
time = 8


;==================================================================================================
;==========================================< STATE -1 >============================================
;==================================================================================================

[Statedef -1]

[State -1, Guard Cancel]
type = selfstate
value = 750
triggerall = !AIlevel
triggerall = command = "counter_p" || command = "counter_k"
triggerall = roundstate = 2 && power >= 1000 && statetype != A && !var(20) && !var(53)
trigger1 = stateno = 150 || stateno = 152
trigger2 = (stateno = 151 || stateno = 153) && time < 8

[State -1, Roll Recovery]
type = selfstate
value = 5220
triggerall = !AIlevel
triggerall = command = "a" || command = "b" || command = "c"
triggerall = roundstate = 2 && alive
trigger1 = !ctrl
trigger1 = (stateno = 5040 || stateno = 5050) && vel y > 0

[State -1, Chouhatsu Shinwa End]
type = changestate
value = 4101
trigger1 = var(53) < 0
trigger1 = !ishelper
trigger1 = statetype != A && movetype != H

[State -1, Roll Forward]
type = changestate
value = 720
triggerall = !AIlevel
triggerall = map(cmd_ax)
triggerall = roundstate = 2 && statetype != A
trigger1 = ifelse(map(cmd_reverse), command = "/$B", command = "/$F")
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = changestate
value = 725
triggerall = !AIlevel
triggerall = map(cmd_ax)
triggerall = roundstate = 2 && statetype != A
trigger1 = ifelse(map(cmd_reverse), command = "/$F", command = "/$B")
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Dodge]
type = changestate
value = 710
triggerall = !AIlevel
triggerall = map(cmd_ax)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Otoko Michi]
type = changestate
value = 4000
triggerall = !AIlevel
triggerall = map(cmd_otoko)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && var(20) <= 60
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && stateno != 4000)
trigger3 = (stateno = [200, 499])

[State -1, Hishou Buraiken]
type = changestate
value = 3200
triggerall = !AIlevel
triggerall = map(cmd_214214k)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A && power >= 2000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && stateno != 3200)

[State -1, Gadou Shoukouken]
type = changestate
value = 3400
triggerall = !AIlevel
triggerall = map(cmd_236236pp)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A && power >= 2000 && var(20) <= 60
triggerall = !map(projflag)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && stateno != 3400)

[State -1, Chou Dankuu Kyaku]
type = changestate
value = 3500
triggerall = !AIlevel
triggerall = map(cmd_41236kk)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && stateno != 3500)

[State -1, Kouryuu Rekka]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = map(cmd_236236k)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && stateno != 3100)

[State -1, Shinkuu Gadouken]
type = changestate
value = 3000
triggerall = !AIlevel
triggerall = map(cmd_236236p)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = !map(projflag)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && stateno != 3000)

[State -1, Chouhatsu Shinwa]
type = changestate
value = 4100
triggerall = !AIlevel
triggerall = map(cmd_214214s)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && stateno != 4100)

[State -1, Chouhatsu Densetsu]
type = changestate
value = 3300
triggerall = !AIlevel
triggerall = map(cmd_236236s)
triggerall = roundstate = 2 && statetype != A && (power >= 1000 || var(53)) && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && stateno != 3300)

[State -1, EX Kouryuuken]
type = changestate
value = 1110
triggerall = !AIlevel
triggerall = map(cmd_623pp)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Kuuchuu Dankuukyaku]
type = changestate
value = 1260
triggerall = !AIlevel
triggerall = map(cmd_root214kk)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype = A && (var(3) != [1, 2]) && power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Dankuukyaku]
type = changestate
value = 1210
triggerall = !AIlevel
triggerall = map(cmd_214kk)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Gadouken]
type = changestate
value = 1010
triggerall = !AIlevel
triggerall = map(cmd_236pp)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
triggerall = !map(projflag)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Saikyouryuu Bougyo]
type = changestate
value = ifelse(statetype = S, 1510, ifelse(statetype = C, 1511, 1512))
triggerall = !AIlevel
triggerall = map(cmd_mashpp)
triggerall = roundstate = 2
triggerall = power >= 500 && var(20) <= 60
trigger1 = !var(53)
trigger1 = stateno = [150, 155]

[State -1, EX Taunt]
type = changestate
value = 1150
triggerall = !AIlevel
triggerall = map(cmd_22s)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Zuki]
type = changestate
value = 1600
triggerall = !AIlevel
triggerall = map(cmd_214214p)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Kouryuuken]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = map(cmd_623p)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Air Dankuukyaku]
type = changestate
value = 1250
triggerall = !AIlevel
triggerall = map(cmd_root214k)
triggerall = roundstate = 2 && statetype = A
triggerall = !var(53) && (var(3) != [1, 2])
trigger1 = ctrl
trigger2 = var(6)

[State -1, Dankuu Kyaku]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = map(cmd_214k)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Gadouken]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = map(cmd_236p)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A
triggerall = !map(projflag)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Premium Sign]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = map(cmd_236k)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Rolling Taunt]
type = changestate
value = 503
triggerall = !AIlevel
triggerall = map(cmd_236s)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Rolling Taunt]
type = changestate
value = 504
triggerall = !AIlevel
triggerall = map(cmd_214s)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Saikyouryuu Bougyo]
type = changestate
value = ifelse(statetype = S, 1500, ifelse(statetype = C, 1501, 1502))
triggerall = !AIlevel
triggerall = map(cmd_mashp)
triggerall = roundstate = 2
triggerall = !var(53)
trigger1 = stateno = [150, 155]

[State -1, Air Throw]
type = changestate
value = 850
triggerall = !AIlevel
triggerall = command = "holdfwd" || command = "holdback"
triggerall = map(cmd_pthrow)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype = A
trigger1 = ctrl

[State -1, Throw]
type = changestate
value = 800
triggerall = !AIlevel
triggerall = command = "holdfwd" || command = "holdback"
triggerall = map(cmd_pthrow) || map(cmd_kthrow)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype = S
trigger1 = ctrl

[State -1, Custom Combo]
type = changestate
value = ifelse(statetype = A, 765, 760)
triggerall = !AIlevel
triggerall = map(cmd_cz)
triggerall = roundstate = 2 && power >= 2000 && !var(20)
triggerall = !var(53)
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Power Charge]
type = changestate
value = 740
triggerall = !AIlevel
triggerall = command = "/b" && command = "/y"
triggerall = roundstate = 2 && statetype != A
triggerall = power < const(data.power) && power < powermax && !var(20)
trigger1 = ctrl || (stateno = [100, 101])

[State -1, CHK]
type = changestate
value = 450
triggerall = !AIlevel
triggerall = map(cmd_c)
triggerall = command = "holddown" && statetype != A
triggerall = !var(53)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)
trigger3 = stateno = 500 || stateno = 501
trigger3 = prevstateno = [200, 699]
trigger3 = time <= 5

[State -1, CHP]
type = changestate
value = 420
triggerall = !AIlevel
triggerall = map(cmd_z)
triggerall = command = "holddown" && statetype != A
triggerall = !var(53)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)
trigger3 = stateno = 500 || stateno = 501
trigger3 = prevstateno = [200, 699]
trigger3 = time <= 5

[State -1, SHK]
type = changestate
value = 250
triggerall = !AIlevel
triggerall = map(cmd_c)
triggerall = command != "holddown" && statetype != A
triggerall = !var(53)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)
trigger3 = stateno = 500 || stateno = 501
trigger3 = prevstateno = [200, 699]
trigger3 = time <= 5

[State -1, SHP]
type = changestate
value = 220
triggerall = !AIlevel
triggerall = map(cmd_z)
triggerall = command != "holddown" && statetype != A
triggerall = !var(53)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)
trigger3 = stateno = 500 || stateno = 501
trigger3 = prevstateno = [200, 699]
trigger3 = time <= 5

[State -1, CMK]
type = changestate
value = 440
triggerall = !AIlevel
triggerall = map(cmd_b)
triggerall = command = "holddown" && statetype != A
triggerall = !var(53)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)
trigger3 = stateno = 500 || stateno = 501
trigger3 = prevstateno = [200, 699]
trigger3 = time <= 5

[State -1, CMP]
type = changestate
value = 410
triggerall = !AIlevel
triggerall = map(cmd_y)
triggerall = command = "holddown" && statetype != A
triggerall = !var(53)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)
trigger3 = stateno = 500 || stateno = 501
trigger3 = prevstateno = [200, 699]
trigger3 = time <= 5

[State -1, SMK]
type = changestate
value = 240
triggerall = !AIlevel
triggerall = map(cmd_b)
triggerall = command != "holddown" && statetype != A
triggerall = !var(53)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)
trigger3 = stateno = 500 || stateno = 501
trigger3 = prevstateno = [200, 699]
trigger3 = time <= 5

[State -1, SMP]
type = changestate
value = 210
triggerall = !AIlevel
triggerall = map(cmd_y)
triggerall = command != "holddown" && statetype != A
triggerall = !var(53)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)
trigger3 = stateno = 500 || stateno = 501
trigger3 = prevstateno = [200, 699]
trigger3 = time <= 5

[State -1, CLK]
type = changestate
value = 430
triggerall = !AIlevel
triggerall = map(cmd_a)
triggerall = command = "holddown" && statetype != A
triggerall = !var(53)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 400) && time >= 5
trigger3 = var(4)
trigger4 = stateno = 500 || stateno = 501
trigger4 = prevstateno = [200, 699]
trigger4 = time <= 5

[State -1, CLP]
type = changestate
value = 400
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = command = "holddown" && statetype != A
triggerall = !var(53)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 400) && time >= 5
trigger3 = var(4)
trigger4 = stateno = 500 || stateno = 501
trigger4 = prevstateno = [200, 699]
trigger4 = time <= 5

[State -1, SLK]
type = changestate
value = 230
triggerall = !AIlevel
triggerall = map(cmd_a)
triggerall = command != "holddown" && statetype != A
triggerall = !var(53)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 400) && time >= 5
trigger3 = var(4)
trigger4 = stateno = 500 || stateno = 501
trigger4 = prevstateno = [200, 699]
trigger4 = time <= 5

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = command != "holddown" && statetype != A
triggerall = !var(53)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 400) && time >= 5
trigger3 = var(4)
trigger4 = stateno = 500 || stateno = 501
trigger4 = prevstateno = [200, 699]
trigger4 = time <= 5

[State -1, AHK]
type = changestate
value = 650
triggerall = !AIlevel
triggerall = map(cmd_c)
triggerall = !var(53) && statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, AHP]
type = changestate
value = 620
triggerall = !AIlevel
triggerall = map(cmd_z)
triggerall = !var(53) && statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, AMK]
type = changestate
value = 640
triggerall = !AIlevel
triggerall = map(cmd_b)
triggerall = !var(53) && statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, AMP]
type = changestate
value = 610
triggerall = !AIlevel
triggerall = map(cmd_y)
triggerall = !var(53) && statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, ALK]
type = changestate
value = 630
triggerall = !AIlevel
triggerall = map(cmd_a)
triggerall = !var(53) && statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, ALP]
type = changestate
value = 600
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = !var(53) && statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Forward Dash]
type = changestate
value = 102
triggerall = !AIlevel
triggerall = map(cmd_66)
triggerall = roundstate = 2 && statetype = S
trigger1 = ctrl

[State -1, Back Dash]
type = changestate
value = 105
triggerall = !AIlevel
triggerall = map(cmd_44)
triggerall = roundstate = 2 && statetype = S
trigger1 = ctrl || stateno = 101

[State -1, Air Taunt]
type = changestate
value = 502
triggerall = !AIlevel
triggerall = map(cmd_s)
triggerall = roundstate = 2 && statetype = A
triggerall = !var(53)
trigger1 = ctrl
trigger2 = var(6)

[State -1, Crouching Taunt]
type = changestate
value = 501
triggerall = !AIlevel
triggerall = map(cmd_s)
triggerall = command = "holddown"
triggerall = roundstate = 2 && statetype != A
triggerall = !var(53)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)
trigger2 = prevstateno != [500, 501]

[State -1, Standing Taunt]
type = changestate
value = 500
triggerall = !AIlevel
triggerall = map(cmd_s)
triggerall = command != "holddown"
triggerall = roundstate = 2 && statetype != A
triggerall = !var(53)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)
trigger2 = prevstateno != [500, 501]

[State -1, Chouhatsu Shinwa Special Taunt]
type = changestate
value = 515
triggerall = var(53)
triggerall = command = "start"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = stateno = [510, 511]
trigger3 = (stateno = [513, 514]) && animelemtime(16) >= 0

[State -1, Chouhatsu Shinwa Rolling Taunt]
type = changestate
value = ifelse(command = "holdback", 514, 513)
triggerall = var(53)
triggerall = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command = "holddown"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = stateno = 510
trigger3 = stateno = 511 || (stateno = [513, 514])
trigger3 = (var(11) != 1 && command = "x") || (var(11) != 2 && command = "y") || (var(11) != 3 && command = "z")
trigger4 = stateno = 511 || (stateno = [513, 514])
trigger4 = (var(11) != 4 && command = "a") || (var(11) != 5 && command = "b") || (var(11) != 6 && command = "c")

[State -1, Chouhatsu Shinwa Crouching Taunt]
type = changestate
value = 511
triggerall = var(53)
triggerall = (command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c")
triggerall = command = "holddown"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = stateno = 510
trigger3 = stateno = 511 || (stateno = [513, 514])
trigger3 = (var(11) != 1 && command = "x") || (var(11) != 2 && command = "y") || (var(11) != 3 && command = "z")
trigger4 = stateno = 511 || (stateno = [513, 514])
trigger4 = (var(11) != 4 && command = "a") || (var(11) != 5 && command = "b") || (var(11) != 6 && command = "c")

[State -1, Chouhatsu Shinwa Standing Taunt]
type = changestate
value = 510
triggerall = var(53)
triggerall = (command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c")
triggerall = command != "holddown"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = stateno = 511
trigger3 = (stateno = [513, 514]) && animelemtime(16) >= 0
trigger4 = stateno = 510
trigger4 = (var(11) != 1 && command = "x") || (var(11) != 2 && command = "y") || (var(11) != 3 && command = "z")
trigger5 = stateno = 510
trigger5 = (var(11) != 4 && command = "a") || (var(11) != 5 && command = "b") || (var(11) != 6 && command = "c")

[State -1, Chouhatsu Shinwa Air Taunt]
type = changestate
value = 512
triggerall = var(53)
triggerall = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
triggerall = roundstate = 2 && statetype = A
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Chouhatsu Shinwa Jump]
type = changestate
value = 40
triggerall = var(53)
triggerall = command = "holdup"
triggerall = roundstate = 2 && statetype != A
trigger1 = (stateno = [510, 514])


;==================================================================================================
;============================================< A.I. >==============================================
;==================================================================================================

[State -1, AI Guarding Tranquilizer]
type = assertspecial
trigger1 = AIlevel
trigger1 = stateno = [120, 155]
flag = noinput
flag2 = nohardcodedkeys

[State -1, AI Jump Less]
type = assertspecial
trigger1 = AIlevel
trigger1 = random < 750
flag = nojump

[State -1, AI Crouch Fix]
type = assertinput
triggerall = AIlevel
trigger1 = stateno = 10
trigger2 = stateno = 11
trigger2 = random < 950
flag = D

[State -1, Otoko Michi]
type = changestate
value = 4000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && !var(20)
triggerall = !var(53)
triggerall = p2statetype = S || p2statetype = C
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [150, 155])
triggerall = (life <= enemynear, life) && (enemynear, life <= 500)
trigger1 = ctrl
trigger1 = (map(p2bodydistx) = [0, 80]) && (enemynear, vel y >= 0) && (p2dist y = [-64, 8])
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Forward Dash]
type = changestate
value = 102
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = p2movetype != A && map(p2bodydistx) >= 160
trigger1 = ctrl && (stateno != [100, 106])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Back Dash]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = ctrl && (stateno != [100, 106])
triggerall = var(20) <= 150 && !var(26)
triggerall = backedgedist >= 80
trigger1 = (enemynear, movetype = A) && (map(p2bodydistx) = [80, 120]) && (enemynear, vel x = [-12, 2])
trigger1 = random < (ifelse((enemynear, hitdefattr = SC, AT), 150, 50) * (AIlevel ** 2 / 64.0))
trigger2 = (map(p2bodydistx) = [0, 80]) && backedgebodydist >= 80
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -6 && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, roll / dodge]
type = changestate
value = ifelse((backedgebodydist > 40 && random < 200), 725, ifelse(random < 600, 720, 710))
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype = S && ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, movetype = A && map(p2bodydistx) < 80

[State -1, Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && map(p2bodydistx) < 160 && enemynear, hitdefattr = SC, AT

[State -1, Roll Fireballs]
type = changestate
value = 720
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = numenemy = 1
trigger1 = map(p2bodydistx) >= 120
trigger1 = enemynear, time >= 10 || p2movetype != A
trigger1 = inguarddist && !(enemynear, hitdefattr = SCA, AA, AT)
trigger1 = ifelse(map(p2bodydistx) < 180, (enemynear, animtime <= -30), 1)
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155]) && !var(20)
trigger1 = prevstateno != [720, 725]
trigger1 = !var(26) || map(p2bodydistx) >= 40
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A || p2movetype != A
trigger1 = ifelse(statetype = A, ((var(3) != [1, 2]) || stateno = 5210), 1)
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000, 2999]), 333, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Guard Cancel]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = (p2dist x = [-90, 90]) && stateno = 150 || stateno = 152
trigger1 = !var(53) && roundstate = 2 && power >= 2000 && !var(20) && life < 500 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Power Charge]
type = changestate
value = 740
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power < const(data.power) && power < powermax && !var(20)
triggerall = !var(53)
trigger1 = ctrl
trigger1 = !inguarddist && map(p2bodydistx) >= 200
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Roll Recovery]
type = selfstate
value = 5220
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && alive
trigger1 = !ctrl
trigger1 = (stateno = 5040 || stateno = 5050) && vel y > 0 && pos y >= -20
trigger1 = (map(p2bodydistx) = [-10, 10]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Fall Recovery]
type = changestate
value = 5210
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && canrecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Fall Recovery]
type = changestate
value = 5200
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Air Throw]
type = changestate
value = 850
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && roundstate = 2 && statetype = A
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
trigger1 = ctrl
trigger1 = p2statetype = A && p2movetype != H
trigger1 = (map(p2bodydistx) = [0, 36]) && (p2dist y = [-25, 25]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Throw]
type = changestate
value = 800
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
triggerall = abs(map(p2bodydistx)) <= ceil(47 * const(size.xscale)) && p2dist y = 0 
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
triggerall = enemynear, prevstateno != 5120 || enemynear, time >= 20
trigger1 = ctrl
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl
trigger2 = p2stateno = [120, 140]
trigger2 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 450
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 92]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CHP]
type = changestate
value = 420
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 83]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHP]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 75]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CMK]
type = changestate
value = 440
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 57]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CMP]
type = changestate
value = 410
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 61]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMK]
type = changestate
value = 240
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 81]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 59]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CLK]
type = changestate
value = 430
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 63]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CLP]
type = changestate
value = 400
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 55]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SLK]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 77]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 47]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AHK]
type = changestate
value = 650
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype = A && roundstate = 2
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 47]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AHP]
type = changestate
value = 620
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype = A && roundstate = 2
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 53]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMK]
type = changestate
value = 640
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype = A && roundstate = 2
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [-63, 63]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMP]
type = changestate
value = 610
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype = A && roundstate = 2
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 58]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, ALK]
type = changestate
value = 630
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype = A && roundstate = 2
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 69]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, ALP]
type = changestate
value = 600
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53) && statetype = A && roundstate = 2
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 36]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Zuki]
type = changestate
value = 1600
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(53)
triggerall = p2statetype = S || p2statetype = C
triggerall = map(p2bodydistx) = [40, 80]
triggerall = (enemynear, const(size.head.pos.y) <= -40)
trigger1 = ctrl
trigger1 = p2stateno = [120, 155]
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [200, 499]
trigger2 = var(6) && moveguarded
trigger2 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Gadouken]
type = changestate
value = ifelse((power >= 500 && var(20) <= 60 && random < 167), 1010, 1000)
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = !map(projflag)
triggerall = !var(53)
triggerall = !inguarddist
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = map(p2bodydistx) < 90
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl
trigger1 = (map(p2bodydistx) = [60, 90])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [200, 499]
trigger2 = var(6) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, kouryuuken]
type = changestate
value = ifelse((power >= 500 && var(20) <= 60 && random < 167), 1110, 1100)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(53)
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = (p2stateno != [120, 155]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (map(p2bodydistx) > 0) && (enemynear, vel y > -1) && (enemynear, vel x > -2)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && map(p2bodydistx) < 50 && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [200, 499]
trigger2 = var(6) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = (ctrl || (stateno = [100, 101])) && map(p2bodydistx) < 100 && p2dist y > 120 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EX Taunt]
type = changestate
value = 1150
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
triggerall = (p2stateno != [120, 155]) && p2statetype != L && p2movetype = A
triggerall = (map(p2bodydistx) = [0, 85]) && (enemynear, vel y > -1) && (enemynear, vel x > -2) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (150 * (AIlevel ** 2 / 64.0))

[State -1, Air Dankuukyaku]
type = changestate
value = ifelse((power >= 500 && var(20) <= 60 && random < 167), 1260, 1250)
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype = A && (var(3) != [1, 2])
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 80]) && (enemynear, vel y > -1) && (enemynear, vel x > -2) && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [600, 699]) && var(6) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Dankuukyaku]
type = changestate
value = ifelse((power >= 500 && var(20) <= 60 && random < 167), 1210, 1200)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(53)
triggerall = p2statetype = S || p2statetype = C
triggerall = map(p2bodydistx) < 80
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [200, 499]
trigger2 = var(6) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Chouhatsu Shinwa]
type = changestate
value = 4100
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A && power >= 3000 && !var(20)
triggerall = map(p2bodydistx) >= 120 && p2movetype != A
triggerall = life >= 900 && p2life <= 100
trigger1 = ctrl
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Chouhatsu Densetsu]
type = changestate
value = 3300
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A && power >= 1000
triggerall = map(p2bodydistx) >= 120 && p2movetype != A
triggerall = life >= 750 && p2life <= 250
trigger1 = ctrl
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, hishouburaiken]
type = changestate
value = 3200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A && power >= 2000 && !var(20)
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L && p2statetype != A && p2statetype != L
triggerall = (map(p2bodydistx) = [0, 40]) && (enemynear, vel x > -2) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 210 || stateno = 220 || stateno = 240 || stateno = 250 || stateno = 410 || stateno = 420 || stateno = 440
trigger2 = (movehit = [1, 16]) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 3100 && animelemtime(6) >= 0) && (movehit = [1, 16]) && random < (75 * (AIlevel ** 2 / 64.0))

[State -1, kouryurekka]
type = changestate
value = 3100
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53)
triggerall = roundstate = 2 && statetype != A && power >= 1000
triggerall = !inguarddist
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = (map(p2bodydistx) = [0, 60]) && p2dist y >= -120 && (enemynear, vel y > -1) && (enemynear, vel x > -2)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (ifelse((enemynear, hitfall), 200, 50) * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [200, 499]
trigger2 = var(6) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = ((stateno = [1100, 1199]) || stateno = 1300 || (stateno = 3200 && animelemtime(56) >= 0)) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(18) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Gadou Shoukouken]
type = changestate
value = 3400
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A && power >= 2000
triggerall = !map(projflag)
triggerall = !var(53)
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = (map(p2bodydistx) = [0, 60]) && (enemynear, vel y > -1)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ((stateno = [1100, 1199]) || (stateno = 3100 && animelemtime(6) >= 0)) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, shinkuugadouken]
type = changestate
value = 3000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A && power >= 1000
triggerall = !map(projflag)
triggerall = !var(53)
triggerall = !inguarddist
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = (map(p2bodydistx) = [0, 90]) && (enemynear, vel y > -1)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [200, 499]
trigger2 = var(6) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = ((stateno = [1100, 1199]) || (stateno = 3100 && animelemtime(6) >= 0) || (stateno = 3200 && animelemtime(56) >= 0)) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && stateno != 3000
trigger4 = helper(stateno + 5), var(18) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Rolling taunt]
type = changestate
value = ifelse(random < 750, 504, 503)
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = !var(53)
triggerall = p2movetype != A
triggerall = roundstate = 2 && statetype != A && ctrl
triggerall = life >= (p2life + 250)
triggerall = prevstateno != [500, 599]
trigger1 = ctrl
trigger1 = random < (10 * (AIlevel ** 2 / 64.0))

[State -1, Taunt]
type = changestate
value = ifelse(statetype = A, 502, ifelse(statetype = C, 501, 500))
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = life >= 0.5 * lifemax
trigger1 = ctrl
trigger1 = p2dist x >= 160
trigger1 = !(enemynear, ctrl)
trigger1 = (enemynear, movetype = H) && (enemynear, hitfall) && random < (100 * (AIlevel ** 2 / 64.0))
