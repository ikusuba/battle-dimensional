; ________________________________
;| Karin by Phantom.of.the.Server |
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

[State -1, Roll Recovery]
type = selfstate
value = 5220
triggerall = !AIlevel
triggerall = command = "a" || command = "b" || command = "c"
triggerall = roundstate = 2 && alive
trigger1 = !ctrl
trigger1 = (stateno = 5040 || stateno = 5050) && vel y > 0

[State -1, Roll Backward]
type = changestate
value = 715
triggerall = !AIlevel
triggerall = map(cmd_ax)
triggerall = roundstate = 2 && statetype != A
trigger1 = ifelse(map(cmd_reverse), command = "/$F", command = "/$B")
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Roll Forward]
type = changestate
value = 710
triggerall = !AIlevel
triggerall = map(cmd_ax)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(20) && var(4)

[State -1, Killer Satellite-Bound Punch]
type = changestate
value = 3200
triggerall = !AIlevel
triggerall = map(cmd_214214p)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && var(20) <= 60
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && (stateno != [3200, 3202]))

[State -1, Dive Kick]
type = changestate
value = 3300
triggerall = !AIlevel
triggerall = map(cmd_root236236k)
triggerall = roundstate = 2 && statetype = A
triggerall = power >= 2000 && var(20) <= 60
triggerall = (var(3) != [1, 2]) && vel x >= 0
trigger1 = ctrl
trigger2 = var(7) || (var(8) && stateno != 3311)

[State -1, Shinpi Kaibyaku]
type = changestate
value = 3000
triggerall = !AIlevel
triggerall = map(cmd_236236p)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && stateno != 3000)

[State -1, Kou'ou Ken]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = map(cmd_236236k)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || (var(8) && stateno != 3100)

[State -1, EX Hou Shou]
type = changestate
value = 1120
triggerall = !AIlevel
triggerall = map(cmd_623pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Mujin Kyaku]
type = changestate
value = 1220
triggerall = !AIlevel
triggerall = map(cmd_623kk)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Ressen Ha]
type = changestate
value = 1420
triggerall = !AIlevel
triggerall = map(cmd_236kk)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Yasha Gaeshi]
type = changestate
value = 1520
triggerall = !AIlevel
triggerall = map(cmd_214pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Arakuma Inashi]
type = changestate
value = 1600
triggerall = !AIlevel
triggerall = map(cmd_360k)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Hou Shou]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = map(cmd_623p)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Mujin Kyaku]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = map(cmd_623k)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Ressen Chou]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = map(cmd_421p)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Ressen Ha]
type = changestate
value = 1400
triggerall = !AIlevel
triggerall = map(cmd_236k)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Guren Ken]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = map(cmd_236p)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Yasha Gaeshi (Joudan)]
type = changestate
value = 1500
triggerall = !AIlevel
triggerall = map(cmd_214p)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Yasha Gaeshi (Gedan)]
type = changestate
value = 1505
triggerall = !AIlevel
triggerall = map(cmd_214k)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 52 || (stateno = [100, 101])
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
trigger1 = power >= 2000 && !var(20)
trigger1 = ctrl || (stateno = [100, 101])

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

[State -1, Tsumuji-gari]
type = changestate
value = 245
triggerall = !AIlevel
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
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(4)

[State -1, CLP]
type = changestate
value = 400
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(4)

[State -1, SLK]
type = changestate
value = 230
triggerall = !AIlevel
triggerall = map(cmd_a)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(4)

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
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
trigger1 = ctrl || stateno = 101

[State -1, Taunt]
type = changestate
value = ifelse(command = "holdfwd", 196, 195)
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

[State -1, Roll Recovery]
type = selfstate
value = 5220
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && alive
trigger1 = !ctrl
trigger1 = (stateno = 5040 || stateno = 5050) && vel y > 0 && pos y >= -20
trigger1 = (map(p2bodydistx) = [-10, 10]) && random < (50 * (AIlevel ** 2 / 64.0))

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
trigger1 = (ctrl || (stateno = [100, 101])) && var(20) <= 150 && !var(26)
trigger1 = (enemynear, movetype = A) && (enemynear, hitdefattr = SCA, AA) && (map(p2bodydistx) = [-80, 80])

[State -1, EX Yasha Gaeshi]
type = changestate
value = 1520
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = var(15) < 1 || var(20)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (map(p2bodydistx) = [0, 60]) && p2statetype != L
triggerall = p2dist y >= -60 && (enemynear, vel y >= 0)
triggerall = (enemynear, facing) != facing
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = p2movetype = A && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Yasha Gaeshi (Joudan)]
type = changestate
value = 1500
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = (map(p2bodydistx) = [0, 60]) && (p2dist y = [-75, 0]) && p2statetype != L
triggerall = (enemynear, facing) != facing
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = p2movetype = A && p2statetype != C && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Yasha Gaeshi (Gedan)]
type = changestate
value = 1505
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = (map(p2bodydistx) = [0, 60]) && p2statetype != L
triggerall = (enemynear, facing) != facing
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = p2movetype = A && p2statetype = C && random < (100 * (AIlevel ** 2 / 64.0))

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
trigger1 = roundstate = 2
trigger1 = power >= 2000 && !var(20)
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = (enemynear, movetype = A) && (map(p2bodydistx) = [0, 40]) && (enemynear, vel y >= 0)
trigger1 = (enemynear, stateno = [200, 699]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Run]
type = changestate
value = 100
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = p2movetype != A && map(p2bodydistx) >= 160
trigger1 = ctrl && (stateno != [100, 106])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Arakuma Inashi]
type = changestate
value = 1600
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
triggerall = var(15) < 1 || var(20)
triggerall = (map(p2bodydistx) = [0, 20]) && p2dist y = 0 && p2statetype != L
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Air Throw]
type = changestate
value = 850
trigger1 = AIlevel && numenemy
trigger1 = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1)
trigger1 = roundstate = 2 && statetype = A
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
trigger1 = (var(15) < 1 || var(20))
trigger1 = ctrl && p2statetype = A
trigger1 = (map(p2bodydistx) = [0, 20]) && (p2dist y = [-80, -40]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Throw]
type = changestate
value = 800
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
triggerall = abs(map(p2bodydistx)) <= ceil(27 * const(size.xscale)) && p2dist y = 0 
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
triggerall = enemynear, prevstateno != 5120 || enemynear, time >= 20
trigger1 = ctrl
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl
trigger2 = p2stateno = [120, 140]
trigger2 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHP]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype = S || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-50, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-50, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Tsumuji-gari]
type = changestate
value = 245
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype = C
triggerall = p2movetype = I
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-50, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (ifelse(p2statetype = C, 50, 25) * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 40]) && (p2dist y = [-50, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMK]
type = changestate
value = 240
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 40]) && (p2dist y = [-50, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype = S || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 30]) && (p2dist y = [-50, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SLK]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 30]) && (p2dist y = [-50, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CHP]
type = changestate
value = 420
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-50, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 450
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-50, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CMP]
type = changestate
value = 410
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 40]) && (p2dist y = [-50, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CMK]
type = changestate
value = 440
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 40]) && (p2dist y = [-50, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CLP]
type = changestate
value = 400
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 30]) && (p2dist y = [-50, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, CLK]
type = changestate
value = 430
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 30]) && (p2dist y = [-50, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AHP]
type = changestate
value = 620
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 30]) && (p2dist y = [-50, 50]) && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AHK]
type = changestate
value = 650
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [-50, 30]) && (p2dist y = [-50, 50]) && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMP]
type = changestate
value = 610
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = A
triggerall = (map(p2bodydistx) = [0, 40]) && (p2dist y = [-50, 50]) && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMK]
type = changestate
value = 640
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [-30, 40]) && (p2dist y = [-50, 50]) && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, ALP]
type = changestate
value = 600
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = A
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-50, 50]) && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, ALK]
type = changestate
value = 630
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-50, 50]) && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EX Hou Shou]
type = changestate
value = 1120
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = var(15) < 1 || var(20)
triggerall = frontedgebodydist >= 120
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (map(p2bodydistx) = [0, 75]) && (p2dist y = [-50, 0]) && p2statetype != L && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EX Mujin Kyaku]
type = changestate
value = 1220
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = (var(15) = [1, 2]) || var(20)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (map(p2bodydistx) = [0, 75]) && (p2dist y = [-50, 0]) && p2statetype != L && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EX Ressen Ha]
type = changestate
value = 1420
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = var(15) < 1 || var(20)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (map(p2bodydistx) = [0, 140]) && p2dist y = 0 && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (12 * (AIlevel ** 2 / 64.0))

[State -1, Guren Ken]
type = changestate
value = 1000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 115]) && p2dist y = 0
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = map(p2bodydistx) > 80
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Hou Shou]
type = changestate
value = 1100
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = (map(p2bodydistx) = [0, 75]) && (p2dist y = [-50, 0]) && p2statetype != L && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Mujin Kyaku]
type = changestate
value = 1200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = (map(p2bodydistx) = [0, 75]) && (p2dist y = [-50, 0]) && p2statetype != L && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Ressen Chou]
type = changestate
value = 1300
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = (map(p2bodydistx) = [0, 140]) && p2dist y = 0 && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Ressen Ha]
type = changestate
value = 1400
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = (map(p2bodydistx) = [0, 140]) && p2dist y = 0 && p2statetype != L
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Killer Satellite-Bound Punch]
type = changestate
value = 3200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && !var(20)
triggerall = var(15) < 1
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (map(p2bodydistx) = [0, 100]) && (p2statetype != A) && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 2999]) && var(7)
trigger2 = (map(p2bodydistx) = [0, 60]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Kisaki no Kourin]
type = changestate
value = 3300
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A && (var(3) != [1, 2]) && vel x >= 0
triggerall = power >= 2000 && !var(20)
triggerall = var(15) < 1
triggerall = p2statetype = S || p2statetype = C
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = C)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (map(p2bodydistx) = [0, 90]) && !(enemynear, pos y)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 2999]) && var(7) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3100 && animelemtime(14) >= 0 && var(8) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Shinpi Kaibyaku]
type = changestate
value = 3000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
triggerall = var(15) < 1
triggerall = !inguarddist
triggerall = p2statetype = S || p2statetype = C
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (map(p2bodydistx) = [0, 110]) && (p2statetype != A) && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger1 = random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 2999]) && var(7) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3311 && animelemtime(8) >= 0 && animelemtime(14) < 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Kou'ou Ken]
type = changestate
value = 3100
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
triggerall = var(15) < 4
triggerall = !inguarddist
triggerall = p2statetype = A
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-40, 0]) && (enemynear, vel y <= 4)
triggerall = p2dist y <= -20 || (enemynear, const(size.head.pos.y) <= -90)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = random < (ifelse((prevstateno = [1200, 1299]), 500, 200) * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 2999]) && var(7) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3000 && animelemtime(30) >= 0 && var(8) && random < (200 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 3311 && animelemtime(17) >= 0 && var(8) && random < (100 * (AIlevel ** 2 / 64.0))

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
