; ________________________________
;| Cammy by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< COMMAND FILE >=======================================
;==============================================================================================

;====================< BUTTON REMAPPING >====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;====================< DEFAULT VALUES >====================

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

[State -1, Guard Cancel]
type = selfstate
value = 750
triggerall = !AIlevel
triggerall = command = "counter_p" || command = "counter_k"
triggerall = roundstate = 2 && power >= 1000 && statetype != A && !var(20)
trigger1 = stateno = 150 || stateno = 152
trigger2 = (stateno = 151 || stateno = 153) && time < 8

[State -1, Roll Forward]
type = changestate
value = 710
triggerall = !AIlevel
triggerall = map(cmd_ax)
triggerall = roundstate = 2 && statetype != A
trigger1 = ifelse(map(cmd_reverse), command = "/$B", command = "/$F")
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = changestate
value = 715
triggerall = !AIlevel
triggerall = map(cmd_ax)
triggerall = roundstate = 2 && statetype != A
trigger1 = ifelse(map(cmd_reverse), command = "/$F", command = "/$B")
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Dodge]
type = changestate
value = 700
triggerall = !AIlevel
triggerall = map(cmd_ax)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Killer Bee Assault]
type = changestate
value = ifelse((pos y - screenpos y) >= -250 && palno <= 6, 3200, 3205)
triggerall = !AIlevel
triggerall = map(cmd_214214pp)
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 3000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, MAX Reverse Shaft Breaker]
type = changestate
value = 3150
triggerall = !AIlevel
triggerall = map(cmd_214214kk)
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 2000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || var(8)

[State -1, MAX Spin Drive Smasher]
type = changestate
value = 3050
triggerall = !AIlevel
triggerall = map(cmd_236236kk)
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 2000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || var(8)

[State -1, MAX Psycho Streak]
type = changestate
value = 3350
triggerall = !AIlevel
triggerall = palno >= 7
triggerall = map(cmd_236236pp)
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 2000 && var(20) <= 60 && !var(51)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || var(8)

[State -1, MAX Sniping Heel]
type = changestate
value = 3450
triggerall = !AIlevel
triggerall = palno <= 6
triggerall = map(cmd_236236pp)
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 2000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || var(8)

[State -1, Reverse Shaft Breaker]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = map(cmd_214214k)
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 1000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Spin Drive Smasher]
type = changestate
value = 3000
triggerall = !AIlevel
triggerall = map(cmd_236236k)
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 1000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Psycho Streak]
type = changestate
value = 3300
triggerall = !AIlevel
triggerall = palno >= 7
triggerall = map(cmd_236236p)
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 1000 && var(20) <= 60 && !var(51)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Sniping Heel]
type = changestate
value = 3400
triggerall = !AIlevel
triggerall = palno <= 6
triggerall = map(cmd_236236p)
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 1000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, EX Earth Direct]
type = changestate
value = 1730
triggerall = !AIlevel
triggerall = palno >= 7
triggerall = map(cmd_360pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Axle Spin Knuckle]
type = changestate
value = 1220
triggerall = !AIlevel
triggerall = palno <= 6
triggerall = map(cmd_63214pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Cannon Spike]
type = changestate
value = 1120
triggerall = !AIlevel
triggerall = map(cmd_623kk)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Cannon Strike]
type = changestate
value = 1420
triggerall = !AIlevel
triggerall = palno <= 6
triggerall = map(cmd_root214kk)
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -64
triggerall = vel x >= 0 || stateno = 1106
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl
trigger2 = var(6)

[State -1, EX Air Cannon Drill]
type = changestate
value = 1060
triggerall = !AIlevel
triggerall = palno >= 7
triggerall = map(cmd_root236kk)
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -64
triggerall = vel x >= 0 || stateno = 1106
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl
trigger2 = var(6)

[State -1, EX Sniping Arrow]
type = changestate
value = 1620
triggerall = !AIlevel
triggerall = palno >= 7
triggerall = map(cmd_236kk)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Cannon Drill]
type = changestate
value = 1020
triggerall = !AIlevel
triggerall = palno <= 6
triggerall = map(cmd_236kk)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Earth Direct]
type = changestate
value = 1700
triggerall = !AIlevel
triggerall = palno >= 7
triggerall = map(cmd_360p)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Hooligan Combination]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = palno <= 6
triggerall = map(cmd_623p)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Cannon Revenge High]
type = changestate
value = 1500
triggerall = !AIlevel
triggerall = palno >= 7
triggerall = map(cmd_214p)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Cannon Revenge Low]
type = changestate
value = 1510
triggerall = !AIlevel
triggerall = palno >= 7
triggerall = map(cmd_214k)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Axle Spin Knuckle]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = palno <= 6
triggerall = map(cmd_63214p)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Cannon Spike]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = map(cmd_623k)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Cannon Strike]
type = changestate
value = 1400
triggerall = !AIlevel
triggerall = palno <= 6
triggerall = map(cmd_root214k)
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -80
triggerall = vel x >= 0 || stateno = 1106
trigger1 = ctrl
trigger2 = var(6)

[State -1, Air Cannon Drill]
type = changestate
value = 1050
triggerall = !AIlevel
triggerall = palno >= 7
triggerall = map(cmd_236k)
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -64
triggerall = vel x >= 0 || stateno = 1106
trigger1 = ctrl
trigger2 = var(6)

[State -1, Sniping Arrow]
type = changestate
value = 1600
triggerall = !AIlevel
triggerall = palno >= 7
triggerall = map(cmd_236k)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Cannon Drill]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = palno <= 6
triggerall = map(cmd_236k)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Air Throw]
type = changestate
value = 850
triggerall = !AIlevel
triggerall = command = "holdfwd" || command = "holdback"
triggerall = map(cmd_pthrow) || map(cmd_kthrow)
triggerall = roundstate = 2 && statetype = A
trigger1 = ctrl

[State -1, Throw]
type = changestate
value = 800
triggerall = !AIlevel
triggerall = command = "holdfwd" || command = "holdback"
triggerall = map(cmd_pthrow) || map(cmd_kthrow)
triggerall = roundstate = 2 && statetype = S
trigger1 = ctrl

[State -1, Custom Combo]
type = changestate
value = ifelse(statetype = A, 905, 900)
triggerall = !AIlevel
triggerall = map(cmd_cz)
triggerall = roundstate = 2
triggerall = power >= 2000 && !var(20)
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])

[State -1, Power Charge]
type = changestate
value = 730
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
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, CHP]
type = changestate
value = 420
triggerall = !AIlevel
triggerall = map(cmd_z)
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, Knee Bullet]
type = changestate
value = 255
triggerall = !AIlevel
triggerall = palno < 7
triggerall = map(cmd_c)
triggerall = command = "holdfwd"
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, SHK]
type = changestate
value = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 32), 251, 250)
triggerall = !AIlevel
triggerall = map(cmd_c)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, SHP]
type = changestate
value = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 20), 221, 220)
triggerall = !AIlevel
triggerall = map(cmd_z)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, Falling Arc]
type = changestate
value = 245
triggerall = !AIlevel
triggerall = palno >= 7
triggerall = map(cmd_b)
triggerall = command = "holdfwd"
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, CMK]
type = changestate
value = 440
triggerall = !AIlevel
triggerall = map(cmd_b)
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, CMP]
type = changestate
value = 410
triggerall = !AIlevel
triggerall = map(cmd_y)
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, SMK]
type = changestate
value = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 20), 241, 240)
triggerall = !AIlevel
triggerall = map(cmd_b)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, SMP]
type = changestate
value = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 24), 211, 210)
triggerall = !AIlevel
triggerall = map(cmd_y)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, CLK]
type = changestate
value = 430
triggerall = !AIlevel
triggerall = map(cmd_a)
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(4)

[State -1, CLP]
type = changestate
value = 400
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(4)

[State -1, SLK]
type = changestate
value = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 20), 231, 230)
triggerall = !AIlevel
triggerall = map(cmd_a)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(4)

[State -1, SLP]
type = changestate
value = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 28), 201, 200)
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(4)

[State -1, AHK]
type = changestate
value = 650
triggerall = !AIlevel
triggerall = map(cmd_c)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, AHP]
type = changestate
value = 620
triggerall = !AIlevel
triggerall = map(cmd_z)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, AMK]
type = changestate
value = 640
triggerall = !AIlevel
triggerall = map(cmd_b)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, AMP]
type = changestate
value = 610
triggerall = !AIlevel
triggerall = map(cmd_y)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, ALK]
type = changestate
value = 630
triggerall = !AIlevel
triggerall = map(cmd_a)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, ALP]
type = changestate
value = 600
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Forward Dash]
type = changestate
value = 102
triggerall = !AIlevel
triggerall = map(cmd_66)
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl

[State -1, Back Dash]
type = changestate
value = 105
triggerall = !AIlevel
triggerall = map(cmd_44)
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl

[State -1, Taunt]
type = changestate
value = ifelse(palno >= 7, 196, 195)
triggerall = !AIlevel
triggerall = map(cmd_s)
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)


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

[State -1, Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && map(p2bodydistx) < 160 && enemynear, hitdefattr = SC, AT

[State -1, Roll Forward]
type = changestate
value = 710
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (stateno = [100, 101])) && var(20) <= 164 && !var(26)
trigger1 = (enemynear, movetype = A) && !(enemynear, hitdefattr = SCA, AT) && (map(p2bodydistx) = [92, 122])

[State -1, Dodge]
type = changestate
value = 700
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (stateno = [100, 101])) && var(20) <= 164 && !var(26)
trigger1 = (enemynear, movetype = A) && !(enemynear, hitdefattr = SCA, AT) && (map(p2bodydistx) = [0, 60])

[State -1, Cannon Revenge High]
type = changestate
value = 1500
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno >= 7
triggerall = roundstate = 2 && statetype != A && !var(20)
triggerall = (map(p2bodydistx) = [0, 64]) && inguarddist && !var(26)
triggerall = p2statetype != A && p2statetype != L
triggerall = (enemynear, stateno = [200, 499]) || (enemynear, hitdefattr = SC, NA)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Cannon Revenge Low]
type = changestate
value = 1510
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno >= 7
triggerall = roundstate = 2 && statetype != A && !var(20)
triggerall = (map(p2bodydistx) = [0, 64]) && inguarddist && !var(26)
triggerall = p2statetype != A && p2statetype != L
triggerall = (enemynear, stateno = [200, 499]) || (enemynear, hitdefattr = SC, NA)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))

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

[State -1, Roll Fireballs]
type = changestate
value = 710
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
trigger1 = prevstateno != [710, 715]
trigger1 = !var(26) || map(p2bodydistx) >= 40
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A || p2movetype != A
trigger1 = ifelse(statetype = A, ((var(3) != [1, 2]) || stateno = 5210), 1)
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000, 2999]), 333, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Guard Cancel]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && statetype != A
trigger1 = power >= 1000 && var(20) <= 60
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger1 = (map(p2bodydistx) = [0, 50]) && (life < 0.5 * lifemax)

[State -1, Power Charge]
type = changestate
value = 730
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power < const(data.power) && power < powermax && !var(20)
trigger1 = ctrl
trigger1 = !inguarddist && map(p2bodydistx) >= 200
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Custom Combo]
type = changestate
value = ifelse(statetype = A, 905, 900)
trigger1 = AIlevel && numenemy
trigger1 = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1)
trigger1 = roundstate = 2 && (statetype != A || (vel x > 0 && vel y >= 0))
trigger1 = power >= 2000 && !var(20)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = (enemynear, movetype = A) && (map(p2bodydistx) = [0, 40]) && (p2dist y = [-60, 60]) && (enemynear, vel y >= 0)
trigger1 = (enemynear, stateno = [200, 699]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Cannon Drill CC]
type = changestate
value = 1000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno <= 6
triggerall = roundstate = 2 && statetype != A
triggerall = var(20) > 30
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
triggerall = p2statetype != L && (enemynear, backedgebodydist > 8 && enemynear, frontedgebodydist > 8)
triggerall = (map(p2bodydistx) = [-196, 196]) && (p2statetype != A || p2movetype = H)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 900 && !animtime && ctrl
trigger3 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 1005 && var(6)

[State -1, Cannon Spike CC]
type = changestate
value = 1100
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(20) > 30
triggerall = p2statetype != L && (p2dist y = [-80, 32])
triggerall = (enemynear, backedgebodydist <= 8 || enemynear, frontedgebodydist <= 8) || palno >= 7
triggerall = ((map(p2bodydistx) = [-48, 48]) && p2statetype != A) || ((map(p2bodydistx) = [-140, 140]) && p2statetype = A)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])); && random < (ifelse(p2statetype = A, 750, 100) * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 900 && !animtime && ctrl
trigger3 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 1005 || stateno = 1403) && var(6)

[State -1, Air Cannon Drill CC]
type = changestate
value = 1050
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno >= 7
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -64
triggerall = vel x >= 0 || stateno = 1106
triggerall = var(20) > 30
triggerall = p2statetype != C && p2statetype != L
triggerall = (map(p2bodydistx) = [-20, 200]) && p2dist y >= -8
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 905 && !animtime && ctrl
trigger3 = var(6)
trigger3 = (stateno = 1106 && vel y >= 0) || (stateno = 1050 && animelemtime(3) >= 0)

[State -1, Cannon Strike CC]
type = changestate
value = 1400
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno <= 6
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -80
triggerall = vel x >= 0 || stateno = 1106
triggerall = var(20) > 30
triggerall = (map(p2bodydistx) = [-20, 80]) && p2stateno != 5120
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 905 && !animtime && ctrl
trigger3 = stateno = 1106 && var(6)
trigger3 = vel y >= 0

[State -1, Air Throw]
type = changestate
value = 850
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
trigger1 = (var(15) < 1 || var(20))
trigger1 = ctrl
trigger1 = p2statetype = A && random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = (p2dist x = [-20, 4]) && (p2dist y = [-118, 48])

[State -1, Throw]
type = changestate
value = 800
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
triggerall = abs(map(p2bodydistx)) <= ceil(24 * const(size.xscale)) && p2dist y = 0 
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
triggerall = enemynear, prevstateno != 5120 || enemynear, time >= 20
trigger1 = ctrl
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl
trigger2 = p2stateno = [120, 140]
trigger2 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Run]
type = changestate
value = 102
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = p2movetype != A && map(p2bodydistx) >= 160
trigger1 = ctrl && (stateno != [100, 106])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SHPc]
type = changestate
value = 221
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-20, ceil(const(size.xscale) * 20)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 59]) && (p2dist y = [-41, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SHPf]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) > ceil(const(size.xscale) * 20)
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 68]) && (p2dist y = [-37, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SHKc]
type = changestate
value = 251
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-20, ceil(const(size.xscale) * 32)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 32]) && (p2dist y = [-78, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (ifelse(p2statetype = A, 200, 25) * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 5) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SHKf]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) > ceil(const(size.xscale) * 32)
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [70, 86]) && (p2dist y = [-35, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 4) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CHP]
type = changestate
value = 420
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 72]) && (p2dist y = [-53, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 4) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 450
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [48, 80]) && (p2dist y = [-12, 60])
triggerall = (p2statetype = S || (p2statetype = C && p2movetype = H))
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 6) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AHP]
type = changestate
value = 620
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A
triggerall = var(15) < 1 || var(20)
triggerall = (map(p2bodydistx) = [0, 58]) && (p2dist y = [-34, 50]) && p2statetype = S
trigger1 = ctrl
trigger1 = vel y > 0 && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AHK]
type = changestate
value = 650
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 54]) && (p2dist y = [-22, 58]) && p2statetype = S
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMPc]
type = changestate
value = 211
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-20, ceil(const(size.xscale) * 24)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 32]) && (p2dist y = [-78, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SMPf]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) > ceil(const(size.xscale) * 24)
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S
triggerall = (map(p2bodydistx) = [0, 74]) && (p2dist y = [-62, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SMKc]
type = changestate
value = 241
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-20, ceil(const(size.xscale) * 20)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 20]) && (p2dist y = [-38, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SMKf]
type = changestate
value = 240
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) > ceil(const(size.xscale) * 20)
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = A
triggerall = (map(p2bodydistx) = [64, 80]) && (p2dist y = [-45, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 5) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CMP]
type = changestate
value = 410
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 58]) && (p2dist y = [-5, 60])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CMK]
type = changestate
value = 440
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [56, 88]) && (p2dist y = [-12, 60])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AMP]
type = changestate
value = 610
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 25]) && (p2dist y = [-35, 42]) && p2statetype != L
trigger1 = ctrl
trigger1 = vel y > 0 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AMK]
type = changestate
value = 640
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = A
triggerall = (map(p2bodydistx) = [0, 52]) && (p2dist y = [-42, 44]) && p2statetype = A
trigger1 = ctrl
trigger1 = vel y <= 0 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, SLPc]
type = changestate
value = 201
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-20, ceil(const(size.xscale) * 28)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 36]) && (p2dist y = [-57, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SLPf]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) > ceil(const(size.xscale) * 28)
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 60]) && (p2dist y = [-48, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SLKc]
type = changestate
value = 231
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-20, ceil(const(size.xscale) * 20)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 20]) && (p2dist y = [-40, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 2) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SLKf]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) > ceil(const(size.xscale) * 20)
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = A
triggerall = (map(p2bodydistx) = [28, 44]) && (p2dist y = [-54, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CLP]
type = changestate
value = 400
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 52]) && (p2dist y = [-7, 60])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 2) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CLK]
type = changestate
value = 430
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-12, 60])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, ALP]
type = changestate
value = 600
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 30]) && (p2dist y = [-35, 56]) && p2statetype = S
trigger1 = ctrl
trigger1 = vel y > 0 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, ALK]
type = changestate
value = 630
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [-40, 72]) && (p2dist y = [-28, 56]) && p2statetype != L
trigger1 = ctrl
trigger1 = vel y > 0 && random < (ifelse(p2dist x < 0, 250, 50) * (AIlevel ** 2 / 64.0))

[State -1, Knee Bullet]
type = changestate
value = 255
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = palno <= 6
triggerall = var(15) < 2 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [50, 80]) && (p2dist y = [-35, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Falling Arc]
type = changestate
value = 245
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = palno >= 7
triggerall = p2statetype = C
triggerall = p2movetype = I
triggerall = (map(p2bodydistx) = [30, 50]) && (p2dist y = [-35, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Cannon Spike]
type = changestate
value = 1100
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype != L && (p2dist y = [-80, 32])
triggerall = ((map(p2bodydistx) = [-48, 48]) && p2statetype != A) || ((map(p2bodydistx) = [-140, 140]) && p2statetype = A)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 3
trigger3 = (stateno = 5120 || stateno = 5201) && !animtime && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Earth Direct]
type = changestate
value = 1700
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno >= 7
triggerall = roundstate = 2 && statetype != A
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
triggerall = p2statetype != A && p2statetype != L
triggerall = p2dist x >= 0 && map(p2bodydistx) <= 32 && p2dist y = 0 
triggerall = (enemynear, hitshakeover || var(20)) && !(enemynear, stateno = [150, 155])
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = random < (ifelse((p2stateno = [120, 140]), 500, 250) * (AIlevel ** 2 / 64.0))

[State -1, Air Cannon Drill]
type = changestate
value = 1050
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno >= 7
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -64
triggerall = vel x >= 0 || stateno = 1106
triggerall = (var(15) < 2 || var(20))
triggerall = p2statetype = A
triggerall = (map(p2bodydistx) = [-8, 200]) && p2dist y >= -8
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movehit && p2statetype = A

[State -1, Cannon Strike]
type = changestate
value = 1400
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno <= 6
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -80
triggerall = vel x >= 0 || stateno = 1106
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C || (p2statetype = L && p2stateno != 5120)
triggerall = (map(p2bodydistx) = [-8, 80])
trigger1 = ctrl
trigger1 = random < (ifelse(p2stateno = 40, 200, ifelse(p2statetype = C, 100, 50)) * (AIlevel ** 2 / 64.0))

[State -1, Sniping Arrow]
type = changestate
value = 1600
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno >= 7
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
triggerall = (map(p2bodydistx) = [-8, 250]) && p2dist y >= -90 && p2statetype != L
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = map(p2bodydistx) >= 170 && random < (33 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 15

[State -1, Cannon Drill]
type = changestate
value = 1000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno <= 6
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
triggerall = (map(p2bodydistx) = [-8, 196]) && p2statetype != A && (p2statetype != L || p2stateno = 5120)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = map(p2bodydistx) >= 160 && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger2 = (enemynear, stateno = 5120 || enemynear, stateno = 5201) && (enemynear, animtime = -18) && random < (250 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = enemynear, gethitvar(hittime) >= 6

[State -1, Hooligan Combination]
type = changestate
value = 1300
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno <= 6
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = map(p2bodydistx) >= 10 && (p2statetype != L || p2stateno = 5120)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = (enemynear, stateno = 5120 || enemynear, stateno = 5201) && (enemynear, time = 1) && random < (333 * (AIlevel ** 2 / 64.0))

[State -1, Axle Spin Knuckle]
type = changestate
value = 1200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno <= 6
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = !(enemynear, ctrl) && !inguarddist
triggerall = (map(p2bodydistx) = [90, 196]) && p2statetype = S
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = (enemynear, animtime <= -32) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Killer Bee Assault]
type = changestate
value = ifelse((pos y - screenpos y) >= -250 && palno <= 6, 3200, 3205)
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 3000 && var(20) <= 60
triggerall = !var(16)
triggerall = (enemynear, pos y = [-280, 32]) && p2statetype != L
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 1999])
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = (enemynear, statetype = S || enemynear, statetype = C) && (enemynear, animtime <= -32) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger2 = (enemynear, stateno = 40) || (enemynear, pos y < -32 && enemynear, vel y < 0)
trigger2 = (p2dist x = [-160, 160]) && random < (250 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 1100 && var(7) && movehit
trigger3 = p2statetype = A && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, MAX Spin Drive Smasher]
type = changestate
value = 3050
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 2000 && var(20) <= 60
triggerall = (var(15) < 1 || var(20) || (stateno = [1000, 4999]))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (map(p2bodydistx) = [-120, 120]) && (p2dist y = [-32, 32])
triggerall = p2statetype != A && p2statetype != L
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movehit && random < (ifelse((var(20) = [1, 30]), 200, 50) * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 4

[State -1, MAX Psycho Streak]
type = changestate
value = 3350
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno >= 7
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 2000 && var(20) <= 60 && !var(51)
triggerall = (var(15) < 1 || var(20) || (stateno = [1000, 4999]))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 1999])
triggerall = p2statetype != L && map(p2bodydistx) >= 8 && p2dist y >= -64
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movehit && random < (ifelse((var(20) = [1, 30]), 200, 50) * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 9
trigger3 = var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3001 && animelemtime(9) < 0
trigger3 = enemynear, gethitvar(hittime) >= 9

[State -1, MAX Sniping Heel]
type = changestate
value = 3450
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno <= 6
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 2000 && var(20) <= 60
triggerall = (var(15) < 1 || var(20) || (stateno = [1000, 4999]))
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
triggerall = !(enemynear, ctrl) && p2statetype != A && p2statetype != L
triggerall = (map(p2bodydistx) = [-128, 128]) && (p2dist y = [-32, 32])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movehit && random < (ifelse((var(20) = [1, 30]), 200, 50) * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 11

[State -1, MAX Reverse Shaft Breaker]
type = changestate
value = 3150
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 2000 && var(20) <= 60
triggerall = (var(15) < 3 || var(20) || (stateno = [1000, 4999]))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (map(p2bodydistx) = [-46, 46]) && (p2dist y = [-69, 0])
triggerall = (enemynear, vel x = [-5, 5]) && p2statetype != L
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movehit && (enemynear, hitfall)
trigger2 = random < (ifelse((var(20) = [1, 30]), 200, 50) * (AIlevel ** 2 / 64.0))
trigger3 = var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3001 && animelemtime(9) < 0
trigger3 = enemynear, gethitvar(hittime) >= 3

[State -1, Spin Drive Smasher]
type = changestate
value = 3000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = !inguarddist
triggerall = (var(15) < 1 || var(20) || (stateno = [1000, 4999]))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (map(p2bodydistx) = [-60, 60]) && (p2dist y = [-32, 32])
triggerall = p2statetype != A && p2statetype != L && p2movetype != A
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movehit && random < (ifelse((var(20) = [1, 30]), 200, 50) * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 4

[State -1, Psycho Streak]
type = changestate
value = 3300
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno >= 7
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 1000 && var(20) <= 60 && !var(51)
triggerall = !inguarddist
triggerall = (var(15) < 1 || var(20) || (stateno = [1000, 4999]))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 1999])
triggerall = p2statetype != L && map(p2bodydistx) >= 8 && p2dist y >= -64
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movehit && random < (ifelse((var(20) = [1, 30]), 200, 50) * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 9

[State -1, Sniping Heel]
type = changestate
value = 3400
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno <= 6
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 1000 && var(20) <= 60
triggerall = !inguarddist
triggerall = (var(15) < 1 || var(20) || (stateno = [1000, 4999]))
triggerall = !(enemynear, ctrl) && p2statetype != A && p2statetype != L
triggerall = (map(p2bodydistx) = [-128, 128]) && (p2dist y = [-32, 32])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = var(7) && movehit && random < (ifelse((var(20) = [1, 30]), 200, 50) * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, gethitvar(hittime) >= 11

[State -1, Reverse Shaft Breaker]
type = changestate
value = 3100
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && (statetype != A || stateno = 1000 || stateno = 1020 || stateno = 1100 || stateno = 1120)
triggerall = power >= 1000 && var(20) <= 60
triggerall = !inguarddist
triggerall = (var(15) < 3 || var(20) || (stateno = [1000, 4999]))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, statetype = A)
triggerall = (map(p2bodydistx) = [-46, 46]) && (p2dist y = [-69, 0])
triggerall = (enemynear, vel x = [-5, 5]) && p2statetype != L
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movehit && (enemynear, hitfall)
trigger2 = random < (ifelse((var(20) = [1, 30]), 200, 50) * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 3

[State -1, EX Cannon Spike]
type = changestate
value = 1120
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = power >= 500 && var(20) <= 60
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = p2statetype != L
triggerall = ((map(p2bodydistx) = [-8, 48]) && p2statetype != A) || ((map(p2bodydistx) = [-8, 140]) && p2statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 3

[State -1, EX Earth Direct]
type = changestate
value = 1730
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno >= 7
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = p2statetype != A && p2statetype != L
triggerall = p2dist x >= 0 && map(p2bodydistx) <= 32 && p2dist y = 0 
triggerall = (enemynear, hitshakeover || var(20)) && !(enemynear, stateno = [150, 155])
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = random < (ifelse((p2stateno = [120, 140]), 500, 250) * (AIlevel ** 2 / 64.0))

[State -1, EX Air Cannon Drill]
type = changestate
value = 1060
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno >= 7
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -64
triggerall = vel x >= 0 || stateno = 1106
triggerall = (var(15) < 2 || var(20))
triggerall = p2statetype = A
triggerall = power >= 500 && var(20) <= 60
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (map(p2bodydistx) = [-8, 240]) && p2dist y >= -8
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movehit && p2statetype = A

[State -1, EX Cannon Strike]
type = changestate
value = 1420
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno <= 6
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -80
triggerall = vel x >= 0 || stateno = 1106
triggerall = var(15) < 1 || var(20)
triggerall = power >= 500 && var(20) <= 60
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (map(p2bodydistx) = [-8, 96]) && p2statetype != A && p2statetype != L
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl
trigger1 = random < (ifelse(p2stateno = 40, 200, ifelse(p2statetype = C, 100, 50)) * (AIlevel ** 2 / 64.0))

[State -1, EX Sniping Arrow]
type = changestate
value = 1620
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno >= 7
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = power >= 500 && var(20) <= 60
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
triggerall = (map(p2bodydistx) = [-8, 250]) && p2dist y >= -90 && p2statetype != L
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, gethitvar(hittime) >= 10

[State -1, EX Cannon Drill]
type = changestate
value = 1020
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall) && palno <= 6
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = power >= 500 && var(20) <= 60
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
triggerall = (map(p2bodydistx) = [-8, 240]) && p2statetype != A && p2statetype != L
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = map(p2bodydistx) >= 160 && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 6

[State -1, Taunt]
type = changestate
value = ifelse(palno >= 7, 196, 195)
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = life >= 0.5 * lifemax
triggerall = (enemynear, life / enemynear, lifemax) < ((life / lifemax) / 2)
trigger1 = ctrl
trigger1 = p2dist x >= 160 && !(enemynear, ctrl)
trigger1 = (enemynear, movetype = H) && (enemynear, hitfall) && random < (50 * (AIlevel ** 2 / 64.0))
