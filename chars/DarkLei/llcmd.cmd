; __________________________________
;| Lei-Lei by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
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
command = a
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "recovery"
command = c
time = 1

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

[State -1, Dark Force Reset]
type = changestate
value = 4510
triggerall = stateno = [4000, 4040]
trigger1 = var(20) < 0
trigger2 = !AIlevel
trigger2 = map(cmd_cz)
trigger2 = roundstate = 2 && var(20) > 0

[State -1, Dark Force CHP]
type = changestate
value = 4240
triggerall = var(20) != 0
triggerall = !ishelper
triggerall = map(cmd_c) || map(cmd_z)
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = stateno = [4000, 4020]
trigger1 = 1 || var(11) := 3;button
trigger2 = stateno = 4200 || stateno = 4205 || stateno = 4210 || stateno = 4215 || stateno = 4220
trigger2 = (movecontact + movereversed) = [1, 4]
trigger2 = 1 || var(11) := 3

[State -1, Dark Force SHK]
type = changestate
value = 4225
triggerall = var(20) != 0
triggerall = !ishelper
triggerall = map(cmd_c)
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = [4000, 4020]
trigger2 = stateno = 4200 || stateno = 4205 || stateno = 4210 || stateno = 4215 || stateno = 4220
trigger2 = (movecontact + movereversed) = [1, 4]

[State -1, Dark Force SHP]
type = changestate
value = 4210
triggerall = var(20) != 0
triggerall = !ishelper
triggerall = map(cmd_z)
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = [4000, 4020]
trigger2 = stateno = 4200 || stateno = 4205 || stateno = 4215 || stateno = 4220
trigger2 = (movecontact + movereversed) = [1, 4]

[State -1, Dark Force CMP]
type = changestate
value = 4240
triggerall = var(20) != 0
triggerall = !ishelper
triggerall = map(cmd_b) || map(cmd_y)
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = stateno = [4000, 4020]
trigger1 = 1 || var(11) := 2
trigger2 = stateno = 4200 || stateno = 4205 || stateno = 4210 || stateno = 4215
trigger2 = (movecontact + movereversed) = [1, 4]
trigger2 = 1 || var(11) := 2

[State -1, Dark Force SMK]
type = changestate
value = 4220
triggerall = var(20) != 0
triggerall = !ishelper
triggerall = map(cmd_b)
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = [4000, 4020]
trigger2 = stateno = 4200 || stateno = 4205 || stateno = 4215
trigger2 = (movecontact + movereversed) = [1, 4]

[State -1, Dark Force SMP]
type = changestate
value = 4205
triggerall = var(20) != 0
triggerall = !ishelper
triggerall = map(cmd_y)
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = [4000, 4020]
trigger2 = stateno = 4200 || stateno = 4215
trigger2 = (movecontact + movereversed) = [1, 4]

[State -1, Dark Force CLP]
type = changestate
value = 4240
triggerall = var(20) != 0
triggerall = !ishelper
triggerall = map(cmd_a) || map(cmd_x)
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = stateno = [4000, 4020]
trigger1 = 1 || var(11) := 1
trigger2 = stateno = 4200
trigger2 = (movecontact + movereversed) = [1, 4]
trigger2 = 1 || var(11) := 1

[State -1, Dark Force SLK]
type = changestate
value = 4215
triggerall = var(20) != 0
triggerall = !ishelper
triggerall = map(cmd_a)
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = [4000, 4020]
trigger2 = stateno = 4200
trigger2 = (movecontact + movereversed) = [1, 4]
trigger3 = (stateno = 4200 || stateno = 4215) && time >= 5 && var(20) > 0

[State -1, Dark Force SLP]
type = changestate
value = 4200
triggerall = var(20) > 0
triggerall = !ishelper
triggerall = map(cmd_x)
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = [4000, 4020]
trigger2 = (stateno = 4200 || stateno = 4215) && time >= 5 && var(20) > 0

[State -1, Dark Force AHP]
type = changestate
value = 4260
triggerall = var(20) != 0
triggerall = !ishelper
triggerall = stateno = 4050
trigger1 = map(cmd_a) || map(cmd_b) || map(cmd_c) || map(cmd_x) || map(cmd_y) || map(cmd_z)

[State -1, Guard Chuukadan]
type = changestate
value = 120
triggerall = !AIlevel
triggerall = roundstate = 2 && numhelper(2005)
triggerall = command = "holdback" && command != "holdfwd"
triggerall = helper(2005), stateno = 2020
trigger1 = ctrl && (stateno != [120, 155]) && stateno != 110

[State -1, Guard Cancel]
type = selfstate
value = 750
triggerall = !AIlevel
triggerall = command = "counter_p" || command = "counter_k"
triggerall = roundstate = 2 && power >= 1000 && statetype != A && !var(20)
trigger1 = stateno = 150 || stateno = 152
trigger2 = (stateno = 151 || stateno = 153) && time < 8

[State -1, Retreat]
type = selfstate
value = 5230
triggerall = !AIlevel
triggerall = command = "/$F" || command = "/$B"
triggerall = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
triggerall = roundstate = 2 && alive
trigger1 = stateno = 5110

[State -1, Roll Backward]
type = changestate
value = 725
triggerall = !AIlevel
triggerall = map(cmd_ax)
triggerall = roundstate = 2 && statetype != A
trigger1 = ifelse(map(cmd_reverse), command = "/$F", command = "/$B")
trigger1 = ctrl

[State -1, Roll Forward]
type = changestate
value = 720
triggerall = !AIlevel
triggerall = map(cmd_ax)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl

[State -1, Tenraiha]
type = changestate
value = 3400
triggerall = !AIlevel
triggerall = map(cmd_tenraiha)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000
triggerall = !map(projflag)
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(7)
trigger3 = (stateno = [200, 499])

[State -1, Chireitou]
type = changestate
value = 3200
triggerall = !AIlevel
triggerall = map(cmd_41236kk)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 2000
triggerall = !map(projflag)
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(7)

[State -1, Bowling]
type = changestate
value = 3500
triggerall = !AIlevel
triggerall = map(cmd_63214kk)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(7)

[State -1, Chuukadan]
type = changestate
value = 2000
triggerall = !AIlevel
triggerall = map(cmd_41236pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000
triggerall = !numhelper(2005)
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(7)

[State -1, Detonate Chuukadan]
type = changestate
value = 2002
triggerall = !AIlevel
triggerall = map(cmd_41236pp)
triggerall = numhelper(2005)
triggerall = helper(2005), stateno != 2020
triggerall = helper(2005), var(0) > 60
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(7)

[State -1, EX Senpuubu]
type = changestate
value = 1120
triggerall = !AIlevel
triggerall = map(cmd_623pp)
triggerall = roundstate = 2 && var(52) <= 1 && power >= 500 && stateno != 110
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(6)

[State -1, EX Reitou]
type = changestate
value = 1220
triggerall = !AIlevel
triggerall = map(cmd_623kk)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500
triggerall = !map(projflag)
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(6)

[State -1, EX Henkyouki]
type = changestate
value = 1320
triggerall = !AIlevel
triggerall = map(cmd_214pp)
triggerall = roundstate = 2 && power >= 500
triggerall = !map(projflag) && stateno != 110
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(6)

[State -1, EX Ankihou]
type = changestate
value = 1050
triggerall = !AIlevel
triggerall = map(cmd_236pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500
triggerall = !map(projflag)
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(6)

[State -1, Senpuubu]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = map(cmd_623p)
triggerall = roundstate = 2 && var(52) <= 1 && stateno != 110
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(6)

[State -1, Reitou]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = map(cmd_623k)
triggerall = roundstate = 2 && statetype != A
triggerall = !map(projflag)
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(6)

[State -1, Houtengeki]
type = changestate
value = 1400
triggerall = !AIlevel
triggerall = map(cmd_63214p)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(6)

[State -1, Ankihou]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = map(cmd_236p)
triggerall = roundstate = 2 && statetype != A
triggerall = !map(projflag)
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(6)

[State -1, Henkyouki]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = map(cmd_214p)
triggerall = roundstate = 2 && stateno != 110
triggerall = !map(projflag)
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(6)

[State -1, EX Pursuit]
type = changestate
value = 1460
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = map(cmd_pthrow) || map(cmd_kthrow)
triggerall = statetype != A && roundstate = 2
triggerall = power >= 500
triggerall = numenemy
triggerall = enemynear, alive && enemynear, stateno != 5120
triggerall = enemynear, hitfall || enemynear, statetype = L
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(6)

[State -1, Pursuit]
type = changestate
value = 1450
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = map(cmd_a) || map(cmd_b) || map(cmd_c) || map(cmd_x) || map(cmd_y) || map(cmd_z)
triggerall = statetype != A && roundstate = 2
triggerall = numenemy
triggerall = enemynear, alive && enemynear, stateno != 5120
triggerall = enemynear, hitfall || enemynear, statetype = L
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(6)

[State -1, Air Throw]
type = changestate
value = 850
triggerall = !AIlevel
triggerall = command = "holdfwd" || command = "holdback"
triggerall = map(cmd_pthrow)
triggerall = roundstate = 2 && statetype = A
trigger1 = ctrl && stateno != 110

[State -1, Throw]
type = changestate
value = 800
triggerall = !AIlevel
triggerall = command = "holdfwd" || command = "holdback"
triggerall = map(cmd_pthrow) || map(cmd_kthrow)
triggerall = roundstate = 2 && statetype = S
trigger1 = ctrl

[State -1, Dark Force]
type = changestate
value = 770
triggerall = !AIlevel
triggerall = map(cmd_cz)
triggerall = !numhelper(6000) && !var(20)
triggerall = roundstate = 2 && statetype != A && power >= 2000
trigger1 = ctrl

[State -1, Power Charge]
type = changestate
value = 740
triggerall = !AIlevel
triggerall = command = "/b" && command = "/y"
triggerall = roundstate = 2 && statetype != A
triggerall = power < const(data.power) && power < powermax && !var(20)
trigger1 = ctrl

[State -1, SHP2]
type = changestate
value = 225
triggerall = !AIlevel
triggerall = map(cmd_z)
triggerall = command = "holdfwd"
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = ((stateno = [200, 215]) || (stateno = [230, 240])) && ((movecontact + movereversed) = [1, 4])
trigger3 = ((stateno = [400, 410]) || (stateno = [430, 440])) && ((movecontact + movereversed) = [1, 4])

[State -1, CHK]
type = changestate
value = 450
triggerall = !AIlevel
triggerall = map(cmd_c)
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = ((stateno = [200, 225]) || (stateno = [230, 240])) && ((movecontact + movereversed) = [1, 4])
trigger3 = ((stateno = [400, 420]) || (stateno = [430, 440])) && ((movecontact + movereversed) = [1, 4])

[State -1, CHP]
type = changestate
value = 420
triggerall = !AIlevel
triggerall = map(cmd_z)
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = ((stateno = [200, 215]) || (stateno = [230, 240])) && ((movecontact + movereversed) = [1, 4])
trigger3 = ((stateno = [400, 410]) || (stateno = [430, 440])) && ((movecontact + movereversed) = [1, 4])

[State -1, SHK]
type = changestate
value = 250
triggerall = !AIlevel
triggerall = map(cmd_c)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = ((stateno = [200, 225]) || (stateno = [230, 240])) && ((movecontact + movereversed) = [1, 4])
trigger3 = ((stateno = [400, 420]) || (stateno = [430, 440])) && ((movecontact + movereversed) = [1, 4])

[State -1, SHP]
type = changestate
value = 220
triggerall = !AIlevel
triggerall = map(cmd_z)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = ((stateno = [200, 215]) || (stateno = [230, 240])) && ((movecontact + movereversed) = [1, 4])
trigger3 = ((stateno = [400, 410]) || (stateno = [430, 440])) && ((movecontact + movereversed) = [1, 4])

[State -1, SMP2]
type = changestate
value = 215
triggerall = !AIlevel
triggerall = map(cmd_y)
triggerall = command = "holdfwd"
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 || stateno = 230) && ((movecontact + movereversed) = [1, 4])
trigger3 = (stateno = 400 || stateno = 430) && ((movecontact + movereversed) = [1, 4])

[State -1, CMK]
type = changestate
value = 440
triggerall = !AIlevel
triggerall = map(cmd_b)
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = ((stateno = [200, 215]) || stateno = 230) && ((movecontact + movereversed) = [1, 4])
trigger3 = ((stateno = [400, 410]) || stateno = 430) && ((movecontact + movereversed) = [1, 4])

[State -1, CMP]
type = changestate
value = 410
triggerall = !AIlevel
triggerall = map(cmd_y)
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 || stateno = 400 || stateno = 230 || stateno = 430) && ((movecontact + movereversed) = [1, 4])

[State -1, SMK]
type = changestate
value = 240
triggerall = !AIlevel
triggerall = map(cmd_b)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = ((stateno = [200, 215]) || stateno = 230) && ((movecontact + movereversed) = [1, 4])
trigger3 = ((stateno = [400, 410]) || stateno = 430) && ((movecontact + movereversed) = [1, 4])

[State -1, SMP]
type = changestate
value = 210
triggerall = !AIlevel
triggerall = map(cmd_y)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 || stateno = 230) && ((movecontact + movereversed) = [1, 4])
trigger3 = (stateno = 400 || stateno = 430) && ((movecontact + movereversed) = [1, 4])

[State -1, CLK]
type = changestate
value = 430
triggerall = !AIlevel
triggerall = map(cmd_a)
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 || stateno = 400) && ((movecontact + movereversed) = [1, 4])
trigger3 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5

[State -1, CLP]
type = changestate
value = 400
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5

[State -1, SLK]
type = changestate
value = 230
triggerall = !AIlevel
triggerall = map(cmd_a)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 || stateno = 400) && ((movecontact + movereversed) = [1, 4])
trigger3 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5

[State -1, AHK]
type = changestate
value = 650
triggerall = !AIlevel
triggerall = map(cmd_c)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = ((stateno = [600, 620]) || (stateno = [630, 640])) && ((movecontact + movereversed) = [1, 4]) && prevstateno != 110

[State -1, AHP]
type = changestate
value = 620
triggerall = !AIlevel
triggerall = map(cmd_z)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = ((stateno = [600, 610]) || (stateno = [630, 640])) && ((movecontact + movereversed) = [1, 4]) && prevstateno != 110

[State -1, AMK]
type = changestate
value = 640
triggerall = !AIlevel
triggerall = map(cmd_b)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = ((stateno = [600, 610]) || stateno = 630) && ((movecontact + movereversed) = [1, 4]) && prevstateno != 110

[State -1, AMP]
type = changestate
value = 610
triggerall = !AIlevel
triggerall = map(cmd_y)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 630) && ((movecontact + movereversed) = [1, 4]) && prevstateno != 110

[State -1, ALK]
type = changestate
value = 630
triggerall = !AIlevel
triggerall = map(cmd_a)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && (movecontact = [1, 16]) && prevstateno != 110

[State -1, ALP]
type = changestate
value = 600
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = statetype = A
trigger1 = ctrl

[State -1, Air Dash]
type = changestate
value = 110
triggerall = !AIlevel
triggerall = map(cmd_air66) || map(cmd_air44)
triggerall = roundstate = 2 && statetype = A
trigger1 = ctrl
trigger1 = stateno != 110 && pos y <= -23

[State -1, Run]
type = changestate
value = 100
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
trigger1 = ctrl || (stateno = 100 && animelemtime(17) >= 0)

[State -1, Ankihou Taunt]
type = changestate
value = 1095
triggerall = !AIlevel
triggerall = map(cmd_236s)
triggerall = statetype != A
triggerall = !map(projflag)
trigger1 = ctrl || stateno = 100
trigger2 = stateno = [200, 499]
trigger2 = (prevstateno != [200, 699]) && stateno != 240 && (movecontact = [1, 8])

[State -1, Taunt]
type = changestate
value = 195
triggerall = !AIlevel
triggerall = map(cmd_s)
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = stateno = [200, 499]
trigger2 = (prevstateno != [200, 699]) && stateno != 240 && (movecontact = [1, 8])


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
trigger1 = ctrl && (stateno != [120, 155]) && stateno != 110
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
trigger1 = (p2dist x = [-90, 90]) && stateno = [150, 153]
trigger1 = roundstate = 2 && power >= 1000 && life < 500 && random < (10 * (AIlevel ** 2 / 64.0))

[State -1, Power Charge]
type = changestate
value = 740
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power < const(data.power) && power < powermax && !var(20)
trigger1 = ctrl
trigger1 = !inguarddist && map(p2bodydistx) >= 200
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, bomb]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = numhelper(2005) && (stateno != [100, 106])
triggerall = backedgedist > 80
triggerall = ((helper(2005), pos x - pos x) * facing) = [0, 160]
trigger1 = ctrl
trigger1 = random < (500 * (AIlevel ** 2 / 64.0))

[State -1, bomb]
type = changestate
value = 400
trigger1 = AIlevel && numenemy
trigger1 = statetype != A && roundstate = 2
trigger1 = numhelper(2005) && ctrl
trigger1 = ((helper(2005), pos x - pos x) * facing) = [0, 100]

[State -1, detonatechuukadan]
type = changestate
value = 2002
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A && numhelper(2005) && ctrl
triggerall = (p2stateno != [120, 155])
triggerall = (helper(2005), rootdist x != [-160, 160]) && (helper(2005), p2dist x = [-155, 155])
triggerall = helper(2005), p2dist y = [-120, 0]
trigger1 = random < (500 * (AIlevel ** 2 / 64.0))
trigger2 = (p2statetype = L && p2stateno != 5120)

[State -1, run]
type = changestate
value = 100
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
triggerall = backedgedist >= 80
trigger1 = (enemynear, movetype = A) && (map(p2bodydistx) = [80, 120]) && (enemynear, vel x = [-12, 2])
trigger1 = random < (ifelse((enemynear, hitdefattr = SC, AT), 150, 50) * (AIlevel ** 2 / 64.0))
trigger2 = (map(p2bodydistx) = [0, 80]) && backedgebodydist >= 80
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -6 && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && map(p2bodydistx) < 160 && enemynear, hitdefattr = SC, AT

[State -1, airdash]
type = changestate
value = 110
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A && stateno != 110 && pos y <= -24
triggerall = p2statetype != A
triggerall = enemynear, movetype != A
trigger1 = ctrl
trigger1 = random < (200 * (AIlevel ** 2 / 64.0))

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

[State -1, Retreat]
type = selfstate
value = 5230
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && stateno = 5110 && alive
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))

[State -1, EX Pursuit]
type = changestate
value = 1460
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = power >= 500
triggerall = enemynear, vel y >= 0
triggerall = (enemynear, statetype = L || enemynear, hitfall)
trigger1 = ctrl
trigger1 = enemynear, alive && enemynear, stateno != 5120
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Pursuit]
type = changestate
value = 1450
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = enemynear, vel y >= 0
triggerall = (enemynear, statetype = L || enemynear, hitfall)
trigger1 = ctrl
trigger1 = enemynear, alive && enemynear, stateno != 5120
trigger1 = random < (200 * (AIlevel ** 2 / 64.0))

[State -1, SLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 82]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 100) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 68]) && (p2dist y = [-50, 50]) && p2statetype = S && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430) && ((movehit = [1, 16]) = [1, 4]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, SMP2]
type = changestate
value = 215
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 110]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430) && ((movehit = [1, 16]) = [1, 4]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, SHP]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 144]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 210 || stateno = 240 || stateno = 410 || stateno = 440) && ((movehit = [1, 16]) = [1, 4]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, SHP2]
type = changestate
value = 225
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = A
triggerall = (map(p2bodydistx) = [40, 132]) && (p2dist y = [-120, 0]) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 210 || stateno = 240 || stateno = 410 || stateno = 440) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, SLK]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 76]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 100) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, SMK]
type = changestate
value = 240
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 52]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 210 || stateno = 230 || stateno = 400 || stateno = 430) && ((movehit = [1, 16]) = [1, 4]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 92]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 210 || stateno = 220 || stateno = 240 || stateno = 410 || stateno = 440) && ((movehit = [1, 16]) = [1, 4]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, CLP]
type = changestate
value = 400
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 72]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 100) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CMP]
type = changestate
value = 410
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 92]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && ((movehit = [1, 16]) = [1, 4]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, CHP]
type = changestate
value = 420
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 130]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 210 || stateno = 240 || stateno = 410 || stateno = 440) && ((movehit = [1, 16]) = [1, 4]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, CLK]
type = changestate
value = 430
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 100) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400) && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, CMK]
type = changestate
value = 440
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 66]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 210 || stateno = 410 || stateno = 430) && ((movehit = [1, 16]) = [1, 4]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 450
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = A
triggerall = (map(p2bodydistx) = [0, 32]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 210 || stateno = 220 || stateno = 240 || stateno = 410 || stateno = 440) && ((movehit = [1, 16]) = [1, 4]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, ALP]
type = changestate
value = 600
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype = A && roundstate = 2
triggerall = vel y > 0 || p2statetype = A
triggerall = p2statetype = A && !(enemynear, hitfall)
triggerall = (map(p2bodydistx) = [0, 30]) && (p2dist y = [-50, 50])
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMP]
type = changestate
value = 610
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype = A && roundstate = 2
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 54]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 600 || stateno = 630) && ((movehit = [1, 16]) = [1, 4]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, AHP]
type = changestate
value = 620
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype = A && roundstate = 2
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 70]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 610 || stateno = 640) && ((movehit = [1, 16]) = [1, 4]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, ALK]
type = changestate
value = 630
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype = A && roundstate = 2
triggerall = p2statetype = A
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 600 && ((movehit = [1, 16]) = [1, 4]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AMK]
type = changestate
value = 640
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype = A && roundstate = 2
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [-50, 50]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall) && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 610 || stateno = 630) && ((movehit = [1, 16]) = [1, 4]) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, AHK]
type = changestate
value = 650
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype = A && roundstate = 2
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 30]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 610 || stateno = 620 || stateno = 640) && ((movehit = [1, 16]) = [1, 4]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Air Throw]
type = changestate
value = 850
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A
triggerall = ctrl && stateno != 110
triggerall = p2statetype = A && p2movetype = I
trigger1 = (map(p2bodydistx) = [0, 16]) && (p2dist y = [-50, 50]) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (p2stateno = [120, 155]) && (map(p2bodydistx) = [0, 60]) && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, houtengeki]
type = changestate
value = 1400
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = S && stateno != 100 && ctrl
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
triggerall = p2statetype != A && p2statetype != L && p2movetype = I
trigger1 = (map(p2bodydistx) = [0, 35]) && (p2dist y = [-50, 50]) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = (p2stateno = [120, 155]) && (map(p2bodydistx) = [0, 78]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Throw]
type = changestate
value = 800
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
triggerall = abs(map(p2bodydistx)) <= ceil(32 * const(size.xscale)) && p2dist y = 0 
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
triggerall = enemynear, prevstateno != 5120 || enemynear, time >= 20
trigger1 = ctrl
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl
trigger2 = p2stateno = [120, 140]
trigger2 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, bowling]
type = changestate
value = 3500
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
triggerall = !inguarddist
triggerall = p2movetype = I
triggerall = p2statetype = S || p2statetype = C
trigger1 = ctrl || stateno = 100
trigger1 = (map(p2bodydistx) = [0, 36]) && (p2dist y = [-50, 50]) && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, senpuubu]
type = changestate
value = 1100
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && var(52) <= 1 && stateno != 110
triggerall = p2movetype != A && p2statetype != A
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155])
trigger1 = p2dist x > 160 && (p2dist y = [-100, 100])
trigger1 = ctrl && backedgedist < 20 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Ankihou]
type = changestate
value = 1000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = !map(projflag)
triggerall = !inguarddist
triggerall = (p2stateno != [120, 155]) && p2statetype != L
trigger1 = ctrl && p2dist x > 160 && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 220 || stateno = 250) && (prevstateno != [200, 699]) && (movehit = [1, 16]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Reitou]
type = changestate
value = 1200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = !map(projflag)
triggerall = !inguarddist
triggerall = (p2stateno != [120, 155])
triggerall = map(p2bodydistx) = [80, 160]
trigger1 = ctrl && (enemynear, vel x > -2) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, henkyouki]
type = changestate
value = 1300
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && stateno != 110
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = !map(projflag)
trigger1 = ctrl
trigger1 = numenemy
trigger1 = map(p2bodydistx) >= 120
trigger1 = enemynear, time >= 10 || p2movetype != A
trigger1 = inguarddist && !(enemynear, hitdefattr = SCA, AA, AT)
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [200, 499]
trigger2 = abs(map(p2bodydistx)) <= 40
trigger2 = var(6) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Tenraiha]
type = changestate
value = 3400
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000
triggerall = !map(projflag)
triggerall = p2statetype = S || p2statetype = C
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2dist x = [40, 120]) && (p2dist y = [-100, 50])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (stateno = 220 || stateno = 250) && (movehit = [1, 16]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, EX Henkyouki]
type = changestate
value = 1320
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && stateno != 110 && power >= 500
triggerall = p2statetype = S || p2statetype = C
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155])
triggerall = !map(projflag)
trigger1 = stateno = [200, 499]
trigger1 = abs(map(p2bodydistx)) <= 40
trigger1 = var(6) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EX Ankihou]
type = changestate
value = 1050
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500
triggerall = !inguarddist
triggerall = p2statetype = S || p2statetype = C
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155])
triggerall = !map(projflag)
trigger1 = stateno = 210 || stateno = 220
trigger1 = var(6) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, EX Senpuubu]
type = changestate
value = 1120
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && power >= 500
triggerall = var(52) <= 1 && stateno != 110
triggerall = p2movetype != A
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155])
triggerall = (map(p2bodydistx) = [240, 260]) && (p2dist y = [-100, 100])
trigger1 = ctrl
trigger2 = backedgedist < 20 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EX Reitou]
type = changestate
value = 1220
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500
triggerall = !map(projflag)
triggerall = p2movetype = A
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (map(p2bodydistx) = [0, 40]) && (enemynear, vel y > -1)
trigger1 = ctrl && (enemynear, vel x > -2) && random < (75 * (AIlevel ** 2 / 64.0))

[State -1, Chuukadan]
type = changestate
value = 2000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A && power >= 1000
triggerall = !numhelper(2005)
triggerall = !inguarddist
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155])
trigger1 = ctrl && p2dist x > 160 && life >= 600 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Chireitou]
type = changestate
value = 3200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 2000
triggerall = !map(projflag)
triggerall = p2statetype = S || p2statetype = C
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155])
triggerall = (map(p2bodydistx) = [0, 120]) && p2dist y >= -120
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl && random < (ifelse((enemynear, hitfall), 200, 100) * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [200, 499]
trigger2 = var(7) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = [1300, 1320]) && var(7) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Taunt]
type = changestate
value = 195
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = life >= 0.5 * lifemax
triggerall = (enemynear, life / enemynear, lifemax) < ((life / lifemax) / 2)
trigger1 = ctrl
trigger1 = p2dist x >= 160 && !(enemynear, ctrl)
trigger1 = (enemynear, movetype = H) && (enemynear, hitfall) && random < (50 * (AIlevel ** 2 / 64.0))
