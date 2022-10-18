; _______________________________
;| Vega by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
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


;===================< SINGLE BUTTON >===================

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
name = "start"
command = s
time = 1

[Command]
name = "a+"
command = a
time = 1
buffer.time = 5
[Command]
name = "b+"
command = b
time = 1
buffer.time = 5
[Command]
name = "c+"
command = c
time = 1
buffer.time = 5
[Command]
name = "x+"
command = x
time = 1
buffer.time = 5
[Command]
name = "y+"
command = y
time = 1
buffer.time = 5
[Command]
name = "z+"
command = z
time = 1
buffer.time = 5


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

[State -1, Vega Warp]
type = changestate
value = 1700
triggerall = !AIlevel
triggerall = map(cmd_623kkk) || map(cmd_623ppp) || map(cmd_623s) || map(cmd_421kkk) || map(cmd_421ppp) || map(cmd_421s) 
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Final Psycho Crusher]
type = changestate
value = 4000
triggerall = !AIlevel
triggerall = map(cmd_1319pp)
triggerall = roundstate = 2 && power >= 3000 && var(20) <= 60
triggerall = statetype != A || stateno = 1100 || stateno = 1130 || stateno = 3100
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && stateno != 4000)

[State -1, Psycho Break Smasher]
type = changestate
value = 3050
triggerall = !AIlevel
triggerall = map(cmd_4646pp)
triggerall = roundstate = 2 && power >= 2000 && var(20) <= 60
triggerall = statetype != A || stateno = 1100 || stateno = 1130 || stateno = 3100
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && stateno != 3050)

[State -1, Knee Press Nightmare]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = map(cmd_4646k)
triggerall = roundstate = 2 && power >= 1000 && var(20) <= 60
triggerall = statetype != A || stateno = 1100 || stateno = 1130 || stateno = 3100
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && stateno != 3100)

[State -1, Nightmare Booster]
type = changestate
value = 3000
triggerall = !AIlevel
triggerall = map(cmd_4646p)
triggerall = roundstate = 2 && power >= 1000 && var(20) <= 60
triggerall = statetype != A || stateno = 1100 || stateno = 1130 || stateno = 3100
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && stateno != 3001)

[State -1, Psycho Cannon]
type = changestate
value = 3200
triggerall = !AIlevel
triggerall = map(cmd_214214p)
triggerall = roundstate = 2 && power >= 1000 && var(20) <= 60
triggerall = map(projflag) < 2
triggerall = statetype != A || stateno = 1100 || stateno = 1130 || stateno = 3100
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && stateno != 3202)

[State -1, EX Psycho Impact]
type = changestate
value = 1330
triggerall = !AIlevel
triggerall = map(cmd_41236pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Psycho Field]
type = changestate
value = 1630
triggerall = !AIlevel
triggerall = map(cmd_63214pp)
triggerall = roundstate = 2 && statetype != A
triggerall = !map(projflag)
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Double Knee Press]
type = changestate
value = 1130
triggerall = !AIlevel
triggerall = map(cmd_46kk)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Psycho Crusher]
type = changestate
value = 1030
triggerall = !AIlevel
triggerall = map(cmd_46pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Head Press]
type = changestate
value = 1270
triggerall = !AIlevel
triggerall = map(cmd_28kk) || map(cmd_28pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Psycho Impact]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = map(cmd_41236p)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Psycho Field]
type = changestate
value = 1600
triggerall = !AIlevel
triggerall = map(cmd_63214p)
triggerall = roundstate = 2 && statetype != A
triggerall = !map(projflag)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Double Knee Press]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = map(cmd_46k)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Psycho Crusher]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = map(cmd_46p)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Head Press]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = map(cmd_28k)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Devil Reverse]
type = changestate
value = 1250
triggerall = !AIlevel
triggerall = map(cmd_28p)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

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
value = ifelse(statetype = A, 765, 760)
triggerall = !AIlevel
triggerall = map(cmd_cz)
triggerall = roundstate = 2 && power >= 2000 && !var(20)
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Power Charge]
type = changestate
value = 740
triggerall = !AIlevel
triggerall = command = "/b" && command = "/y"
triggerall = roundstate = 2 && statetype != A
triggerall = power < const(data.power) && power < powermax && !var(20)
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Psycho Banish]
type = changestate
value = 225
triggerall = !AIlevel
triggerall = map(cmd_z)
triggerall = command = "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

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

[State -1, SHK]
type = changestate
value = 250
triggerall = !AIlevel
triggerall = map(cmd_c)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, SHP]
type = changestate
value = 220
triggerall = !AIlevel
triggerall = map(cmd_z)
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
value = 240
triggerall = !AIlevel
triggerall = map(cmd_b)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, SMP]
type = changestate
value = 210
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
trigger2 = var(4)
trigger3 = (stateno = 200 || stateno = 400) && time >= 5

[State -1, CLP]
type = changestate
value = 400
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)
trigger3 = (stateno = 200 || stateno = 400) && time >= 5

[State -1, SLK]
type = changestate
value = 230
triggerall = !AIlevel
triggerall = map(cmd_a)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)
trigger3 = (stateno = 200 || stateno = 400) && time >= 5

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)
trigger3 = (stateno = 200 || stateno = 400) && time >= 5

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
triggerall = roundstate = 2 && statetype = S
trigger1 = ctrl || stateno = 103

[State -1, Back Dash]
type = changestate
value = 105
triggerall = !AIlevel
triggerall = map(cmd_44)
triggerall = roundstate = 2 && statetype = S
trigger1 = ctrl || stateno = 101 || stateno = 103

[State -1, Taunt]
type = changestate
value = 195
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

[State -1, AI Crouch More]
type = assertinput
trigger1 = AIlevel
trigger1 = stateno = [10, 12]
flag = D

[State -1, AI Back Charge Increase]
type = mapset
map = "charge4_ai"
trigger1 = AIlevel
trigger1 = map(charge4_ai) < 45
value = ifelse(var(20), 45, map(charge4_ai) + 1)
ignorehitpause = 1

[State -1, AI Back Charge Decrease]
type = mapadd
map = "charge4_ai"
triggerall = map(charge4_ai) > 0
trigger1 = stateno = 0 || (stateno = 20 && vel x > 0) || (stateno = [760, 762])
trigger2 = (stateno = 40 && sysvar(1) != -1)
trigger3 = (stateno = [1000, 4999]) && time = 1
value = -1
ignorehitpause = 1

[State -1, AI Down Charge Increase]
type = mapset
map = "charge2_ai"
trigger1 = AIlevel
trigger1 = map(charge2_ai) < 45
value = ifelse(var(20), 45, map(charge2_ai) + 1)
ignorehitpause = 1

[State -1, AI Down Charge Decrease]
type = mapadd
map = "charge2_ai"
triggerall = map(charge2_ai) > 0
trigger1 = stateno = 0 || stateno = 20 || (stateno = 40 && time = 1) || stateno = 760
trigger2 = (stateno = [1000, 4999]) && time = 1
trigger3 = (stateno = [120, 155]) && statetype != C
value = -1
ignorehitpause = 1

[State -1, AI Lose Back Charge]
type = mapset
map = "charge2_ai"
triggerall = AIlevel
triggerall = time = 1
trigger1 = stateno = 1000 || stateno = 1030
trigger2 = stateno = 1100 || stateno = 1130
trigger3 = stateno = 3000 || stateno = 3050
trigger4 = stateno = 3100
trigger5 = stateno = 4000
value = 0
ignorehitpause = 1

[State -1, AI Lose Down Charge]
type = mapset
map = "charge2_ai"
triggerall = AIlevel
triggerall = time = 1
trigger1 = stateno = 1200
trigger2 = stateno = 1250
trigger3 = stateno = 4000
value = 0
ignorehitpause = 1

[State -1, sidestep / dodge]
type = changestate
value = ifelse((backedgebodydist > 40 && random < (200 * (AIlevel ** 2 / 64.0))), 725, ifelse(random < (600 * (AIlevel ** 2 / 64.0)), 720, 710))
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl && random < (100 * (AIlevel ** 2 / 64.0))
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
trigger1 = ctrl && (stateno != [120, 155]) && stateno != 110
trigger1 = prevstateno != [720, 725]
trigger1 = !var(26) || map(p2bodydistx) >= 40
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A || p2movetype != A
trigger1 = ifelse(statetype = A, ((var(3) != [1, 2]) || stateno = 5210), 1)
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000, 2999]), 333, 1000)) * (AIlevel ** 2 / 64.0))

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

[State -1, Guard Cancel]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = (p2dist x = [-90, 90]) && stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && power >= 2000 && !var(20)
trigger1 = life < 500 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Power Charge]
type = changestate
value = 740
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power < const(data.power) && power < powermax && !var(20)
trigger1 = ctrl
trigger1 = !inguarddist && map(p2bodydistx) >= 200
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

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

[State -1, Throw]
type = changestate
value = 800
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
triggerall = abs(map(p2bodydistx)) <= 27 && p2dist y = 0 
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
triggerall = enemynear, prevstateno != 5120 || enemynear, time >= 20
trigger1 = ctrl
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl
trigger2 = p2stateno = [120, 140]
trigger2 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 25]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 3)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < 50;(50 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 4)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHP]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 75]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 210 && anim = 206 && animelemtime(4) >= 0 && (movehit = [1, 16])

[State -1, SLK]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 25]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMK]
type = changestate
value = 240
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 75]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CLP]
type = changestate
value = 400
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 20]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CMP]
type = changestate
value = 410
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 40]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CHP]
type = changestate
value = 420
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 60]) && (p2dist y = [-50, 50])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CLK]
type = changestate
value = 430
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 20]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CMK]
type = changestate
value = 440
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 40]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 450
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [140, 170]) && (p2dist y = [-50, 50]) && !(enemynear, hitfall)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 12)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, ALP]
type = changestate
value = 600
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype = A && roundstate = 2
triggerall = p2statetype = A || (!vel x && vel y > 0)
triggerall = (map(p2bodydistx) = [0, 25]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AMP]
type = changestate
value = 610
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype = A && roundstate = 2
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (ifelse(p2statetype = A, 250, 100) * (AIlevel ** 2 / 64.0))

[State -1, AHP]
type = changestate
value = 620
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype = A && roundstate = 2
triggerall = p2statetype = A || (!vel x && vel y > 0)
triggerall = (map(p2bodydistx) = [0, 75]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, ALK]
type = changestate
value = 630
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype = A && roundstate = 2
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 25]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AMK]
type = changestate
value = 640
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype = A && roundstate = 2
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [-50, 50]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AHK]
type = changestate
value = 650
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = statetype = A && roundstate = 2
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [-50, 75]) && (p2dist y = [-50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Psycho Crusher]
type = changestate
value = ifelse((power >= 500 && var(20) <= 60 && random < 167), 1030, 1000)
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(charge4_ai) >= 45 || var(20)
triggerall = p2statetype = S || p2statetype = C || (p2stateno = [5100, 5109])
triggerall = !inguarddist && p2movetype != A
triggerall = map(p2bodydistx) < 260
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 14)
trigger1 = ctrl
trigger1 = map(p2bodydistx) > 160
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [200, 499]
trigger2 = var(6) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, double knee press]
type = changestate
value = ifelse((power >= 500 && var(20) <= 60 && random < 167), 1130, 1100)
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(charge4_ai) >= 45 || var(20)
triggerall = map(p2bodydistx) < 260
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 10)
trigger1 = ctrl
trigger1 = map(p2bodydistx) > 60
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [200, 499]
trigger2 = var(6) && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, psycho impact]
type = changestate
value = ifelse((power >= 500 && var(20) <= 60 && random < 167), 1330, 1300)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) < 200
triggerall = p2statetype = S || p2statetype = C
triggerall = !inguarddist && p2movetype != A
triggerall = !(enemynear, ctrl) || map(projflag)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 12)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (10 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [200, 499]
trigger2 = var(6)
trigger2 = random < (200 * (AIlevel ** 2 / 64.0))

[State -1, head press]
type = changestate
value = ifelse((power >= 500 && var(20) <= 60 && random < 167), 1270, 1200)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = map(charge2_ai) >= 45 || var(20)
triggerall = !(enemynear, ctrl) || map(projflag)
triggerall = p2statetype = S || p2statetype = C || (p2statetype = L && p2stateno != 5120)
trigger1 = ctrl
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, devil reverse]
type = changestate
value = 1250
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && !(enemynear, hitfall)
triggerall = map(charge2_ai) >= 45 || var(20)
triggerall = enemynear, ctrl;opposite of head press
triggerall = p2statetype = S || p2statetype = C
trigger1 = ctrl
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Psycho Field]
type = changestate
value = ifelse((power >= 500 && var(20) <= 60 && random < 167), 1630, 1600)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !map(projflag)
triggerall = !inguarddist
triggerall = p2movetype != A
triggerall = map(p2bodydistx) > 60
triggerall = map(p2bodydistx) > 180 || (p2stateno = [5100, 5109])
trigger1 = ctrl
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Knee Press Nightmare]
type = changestate
value = 3100
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
triggerall = map(charge4_ai) >= 45 || var(20)
triggerall = var(15) < 2 || (stateno = [1000, 4999])
triggerall = !inguarddist
triggerall = map(p2bodydistx) < 90
triggerall = p2statetype = S
triggerall = !(enemynear, ctrl) && ((p2stateno != [120, 155]) || p2statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [200, 499]
trigger2 = var(7) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 1300 && (movehit = [1, 16]) && random < (75 * (AIlevel ** 2 / 64.0))

[State -1, Nightmare Booster]
type = changestate
value = 3000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
triggerall = map(charge4_ai) >= 45 || var(20)
triggerall = var(15) < 2 || (stateno = [1000, 4999])
triggerall = !inguarddist
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = !(enemynear, ctrl) && ((p2stateno != [120, 155]) || p2statetype = A)
triggerall = map(p2bodydistx) < 90 && p2dist y >= -60
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 7)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (ifelse((enemynear, hitfall), 200, 50) * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [200, 499]
trigger2 = var(7) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 1100 || stateno = 1130 || stateno = 1300) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 3100) && animelemtime(8) >= 0 && (movehit = [1, 16]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Psycho Cannon]
type = changestate
value = 3200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = map(projflag) < 2
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
triggerall = var(15) < 8 || (stateno = [1000, 4999])
triggerall = !inguarddist
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = !(enemynear, ctrl) && ((p2stateno != [120, 155]) || p2statetype = A)
triggerall = (map(p2bodydistx) = [0, 90]) && (p2dist y >= -180) && (enemynear, vel y > -2) && (enemynear, vel x >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 12)
trigger1 = (stateno = 1100 || stateno = 1300) && (movehit = [1, 16])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 1330
trigger2 = animelemtime(9) >= 1 && movehit && var(7)
trigger2 = random < (200 * (AIlevel ** 2 / 64.0))

[State -1, mega crusher]
type = changestate
value = 3050
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 2000 && !var(20)
triggerall = map(charge4_ai) >= 45 || var(20)
triggerall = var(15) < 2 || (stateno = [1000, 4999])
triggerall = frontedgedist >= 80
triggerall = !(enemynear, ctrl) && ((p2stateno != [120, 155]) || p2statetype = A) && p2statetype != L
triggerall = (map(p2bodydistx) = [0, 90]) && (p2dist y >= -180) && (enemynear, vel y > -2) && (enemynear, vel x >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 4)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [200, 499]
trigger2 = var(7) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 1100 || stateno = 1130 || stateno = 1300) && (movehit = [1, 16]) && random < (75 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 3100) && animelemtime(8) >= 0 && (movehit = [1, 16]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, final psycho crusher]
type = changestate
value = 4000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && !var(20)
triggerall = map(charge4_ai) >= 45 || var(20)
triggerall = (p2statetype = A ^^ p2movetype = H) && p2statetype != L
triggerall = !(enemynear, ctrl) && ((p2stateno != [120, 155]) || p2statetype = A)
trigger1 = ctrl && numenemy && random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = (enemynear, animtime >= 20) || (enemynear, pos y <= -40 && enemynear, vel y < -4)

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
