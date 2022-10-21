; _______________________________________
;| Geese Howard by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
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

[State -1, Deadly Rave]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = map(cmd_632146kk)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Raging Dead End]
type = changestate
value = 3400
triggerall = !AIlevel
triggerall = map(cmd_214214pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, MAX Kyokuu Reppuu Zan]
type = changestate
value = 3350
triggerall = !AIlevel
triggerall = map(cmd_236236pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 2000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || var(8)

[State -1, MAX Raising Storm]
type = changestate
value = 3050
triggerall = !AIlevel
triggerall = map(cmd_632142pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 2000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || var(8)

[State -1, MAX Rashoumon]
type = changestate
value = 3250
triggerall = !AIlevel
triggerall = map(cmd_360kk)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 2000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || var(8)

[State -1, Kyokuu Reppuu Zan]
type = changestate
value = 3300
triggerall = !AIlevel
triggerall = map(cmd_236236p)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Raising Storm]
type = changestate
value = 3000
triggerall = !AIlevel
triggerall = map(cmd_632142p)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Rashoumon]
type = changestate
value = 3200
triggerall = !AIlevel
triggerall = map(cmd_360k)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, EX Atemi Nage]
type = changestate
value = 1260
triggerall = !AIlevel
triggerall = map(cmd_63214pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Jaeiken]
type = changestate
value = 1130
triggerall = !AIlevel
triggerall = map(cmd_63214kk)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Hishou Nichirin Zan]
type = changestate
value = 1420
triggerall = !AIlevel
triggerall = map(cmd_623kk)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Shippuken]
type = changestate
value = 1320
triggerall = !AIlevel
triggerall = map(cmd_root214pp)
triggerall = roundstate = 2 && statetype = A && (var(3) != [1, 2])
triggerall = power >= 500 && var(20) <= 60
triggerall = !map(projflag)
trigger1 = ctrl
trigger2 = var(6)

[State -1, EX Reppuken]
type = changestate
value = 1030
triggerall = !AIlevel
triggerall = map(cmd_236pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = !map(projflag)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Atemi Nage]
type = changestate
value = ifelse(map(str_z), 1240, ifelse(map(str_y), 1220, 1200))
triggerall = !AIlevel
triggerall = map(cmd_63214p)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Jaeiken]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = map(cmd_63214k)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Hishou Nichirin Zan]
type = changestate
value = 1400
triggerall = !AIlevel
triggerall = map(cmd_623k)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Shippuken]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = map(cmd_root214p)
triggerall = roundstate = 2 && statetype = A && (var(3) != [1, 2])
triggerall = !map(projflag)
trigger1 = ctrl
trigger2 = var(6)

[State -1, Reppuken]
type = changestate
value = ifelse(map(str_z), 1010, 1000)
triggerall = !AIlevel
triggerall = map(cmd_236p)
triggerall = roundstate = 2 && statetype != A
triggerall = !map(projflag)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Fake Reppuken]
type = changestate
value = 1090
triggerall = !AIlevel
triggerall = map(cmd_236s)
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

[State -1, OTG Throw]
type = changestate
value = 830
triggerall = !AIlevel
triggerall = command = "holddown"
triggerall = map(cmd_pthrow)
triggerall = roundstate = 2 && statetype != A
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

[State -1, Raikou Mawashi Geri]
type = changestate
value = 256
triggerall = !AIlevel
triggerall = map(cmd_c)
triggerall = command = "holdback"
triggerall = command != "holddown" && statetype != A
trigger1 = var(5)

[State -1, Raikou Mawashi Geri]
type = changestate
value = 255
triggerall = !AIlevel
triggerall = map(cmd_c)
triggerall = command = "holdback"
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, Fudou Sakkatsu Uraken]
type = changestate
value = 226
triggerall = !AIlevel
triggerall = map(cmd_z)
triggerall = command = "holdfwd"
triggerall = command != "holddown" && statetype != A
trigger1 = var(5)

[State -1, Fudou Sakkatsu Uraken]
type = changestate
value = 225
triggerall = !AIlevel
triggerall = map(cmd_z)
triggerall = command = "holdfwd"
triggerall = command != "holddown" && statetype != A
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
value = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 28), 251, 250)
triggerall = !AIlevel
triggerall = map(cmd_c)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, SHP]
type = changestate
value = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 29), 221, 220)
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
value = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 32), 241, 240)
triggerall = !AIlevel
triggerall = map(cmd_b)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, SMP]
type = changestate
value = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 20), 211, 210)
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
trigger2 = (stateno = 200 || stateno = 231 || stateno = 400) && time >= 5
trigger3 = var(4)

[State -1, CLP]
type = changestate
value = 400
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 231 || stateno = 400) && time >= 5
trigger3 = var(4)

[State -1, SLK]
type = changestate
value = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 20), 231, 230)
triggerall = !AIlevel
triggerall = map(cmd_a)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 231 || stateno = 400) && time >= 5
trigger3 = var(4)

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 231 || stateno = 400) && time >= 5
trigger3 = var(4)

[State -1, AHK]
type = changestate
value = 651
triggerall = !AIlevel
triggerall = map(cmd_c)
triggerall = statetype = A
triggerall = !vel x || (var(3) = [1, 2])
trigger1 = ctrl
trigger2 = var(4)

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
trigger1 = ctrl

[State -1, Back Dash]
type = changestate
value = 105
triggerall = !AIlevel
triggerall = map(cmd_44)
triggerall = roundstate = 2 && statetype = S
trigger1 = ctrl

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
trigger1 = (enemynear, movetype = A) && !(enemynear, hitdefattr = SCA, AT) && (map(p2bodydistx) = [104, 154])

[State -1, Dodge]
type = changestate
value = 700
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (stateno = [100, 101])) && var(20) <= 164 && !var(26)
trigger1 = (enemynear, movetype = A) && !(enemynear, hitdefattr = SCA, AT) && (map(p2bodydistx) = [0, 60])

[State -1, Joudan Atemi Nage]
type = changestate
value = 1200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = (map(p2bodydistx) = [0, 72]) && (p2dist y = [-124, -48]) && inguarddist && !var(26)
triggerall = inguarddist && enemynear, vel x >= 0 && (enemynear, vel y = [-2, 8])
triggerall = (enemynear, statetype = A) || (enemynear, stateno = [1000, 4999]) || (enemynear, hitdefattr = A, NA) || (enemynear, hitdefattr = SCA, SA, HA)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Chuudan Atemi Nage]
type = changestate
value = 1220
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = (map(p2bodydistx) = [0, 72]) && inguarddist && !var(26)
triggerall = p2statetype != A && p2statetype != L
triggerall = (enemynear, stateno = [200, 499]) || (enemynear, hitdefattr = SC, NA)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Gedan Atemi Nage]
type = changestate
value = 1240
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = (map(p2bodydistx) = [0, 72]) && inguarddist && !var(26)
triggerall = p2statetype != A && p2statetype != L
triggerall = (enemynear, stateno = [200, 499]) || (enemynear, hitdefattr = SC, NA)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, EX Atemi Nage]
type = changestate
value = 1260
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = (map(p2bodydistx) = [0, 72]) && inguarddist && !var(26)
triggerall = p2statetype != A && p2statetype != L
triggerall = (enemynear, stateno = [200, 499]) || (enemynear, hitdefattr = SC, NA)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (100 * (AIlevel ** 2 / 64.0))

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

[State -1, Jaeiken CC]
type = changestate
value = 1100
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(20)
triggerall = (map(p2bodydistx) = [0, 88]) && p2statetype != A && p2statetype != L
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 900 && !animtime && ctrl
trigger3 = var(20) > 30 && stateno = 1000 && var(6)

[State -1, Reppuken CC]
type = changestate
value = 1000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = !map(projflag)
triggerall = var(20)
triggerall = p2statetype != A && p2statetype != L
trigger1 = var(20) > 30 && stateno = 1110 && var(6)

[State -1, Floor Throw]
type = changestate
value = 830
trigger1 = AIlevel && numenemy
trigger1 = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1)
trigger1 = roundstate = 2 && statetype != A
trigger1 = p2statetype = L && p2stateno != 5120
trigger1 = (map(p2bodydistx) = [0, 16]) && p2dist y = 0
trigger1 = ctrl && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Throw]
type = changestate
value = 800
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
triggerall = abs(map(p2bodydistx)) <= 26 && p2dist y = 0 
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
triggerall = enemynear, prevstateno != 5120 || enemynear, time >= 20
trigger1 = ctrl
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl
trigger2 = p2stateno = [120, 140]
trigger2 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Fudou Sakkatsu Uraken]
type = changestate
value = 226
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-17, ceil(const(size.xscale) * 28)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 80]) && (p2dist y = [-73, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = var(5) && random < (250 * (AIlevel ** 2 / 64.0))
trigger1 = (enemynear, gethitvar(hittime) >= 7)

[State -1, Raikou Mawashi Geri]
type = changestate
value = 256
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-17, ceil(const(size.xscale) * 28)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S
triggerall = (map(p2bodydistx) = [0, 48]) && (p2dist y = [-89, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = var(5) && random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (enemynear, gethitvar(hittime) >= 8)

[State -1, Fudou Sakkatsu Uraken]
type = changestate
value = 225
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-17, ceil(const(size.xscale) * 28)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [52, 80]) && (p2dist y = [-73, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Raikou Mawashi Geri]
type = changestate
value = 255
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-17, ceil(const(size.xscale) * 28)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = A
triggerall = (map(p2bodydistx) = [90, 130]) && (p2dist y = [-89, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SHPc]
type = changestate
value = 221
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-17, ceil(const(size.xscale) * 29)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 26]) && (p2dist y = [-83, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 4) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SHP]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) >= ceil(const(size.xscale) * 29)
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 84]) && (p2dist y = [-77, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 6) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SHKc]
type = changestate
value = 251
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-17, ceil(const(size.xscale) * 28)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 16]) && (p2dist y = [-68, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) >= ceil(const(size.xscale) * 28)
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [80, 102]) && (p2dist y = [-68, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, CHP]
type = changestate
value = 420
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 28]) && (p2dist y = [-125, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (ifelse(p2statetype = A, 200, 25) * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 450
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [59, 99]) && (p2dist y = [-27, 60])
triggerall = (p2statetype = S || (p2statetype = C && p2movetype = H))
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 4) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AHP]
type = changestate
value = 620
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 42]) && (p2dist y = [-112, 44]) && p2statetype = S
trigger1 = ctrl
trigger1 = vel y > 0 && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AHK]
type = changestate
value = 650
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A && vel x
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 80]) && (p2dist y = [-46, 40]) && p2statetype = A
trigger1 = ctrl
trigger1 = vel y <= 0 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AHK]
type = changestate
value = 651
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A && !vel x
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 24]) && (p2dist y = [-114, 33]) && p2statetype = A
trigger1 = ctrl
trigger1 = vel y <= 0 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, SMPc]
type = changestate
value = 211
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-17, ceil(const(size.xscale) * 20)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 20]) && (p2dist y = [-97, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) >= ceil(const(size.xscale) * 20)
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 52]) && (p2dist y = [-77, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 4) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SMKc]
type = changestate
value = 241
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-17, ceil(const(size.xscale) * 32)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 32]) && (p2dist y = [-68, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SMK]
type = changestate
value = 240
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) >= ceil(const(size.xscale) * 32)
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 48]) && (p2dist y = [-68, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 7) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CMP]
type = changestate
value = 410
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 56]) && (p2dist y = [-26, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 6) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CMK]
type = changestate
value = 440
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 56]) && (p2dist y = [-12, 0])
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
triggerall = p2statetype = A
triggerall = (map(p2bodydistx) = [0, 48]) && (p2dist y = [-134, 8]) && p2statetype = A
trigger1 = ctrl
trigger1 = vel y > 0 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AMK]
type = changestate
value = 640
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [-40, 38]) && (p2dist y = [-82, 62]) && p2statetype != A && p2statetype != L
trigger1 = ctrl
trigger1 = vel y > 0 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, SLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 48]) && (p2dist y = [-88, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SLKc]
type = changestate
value = 231
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-17, ceil(const(size.xscale) * 25)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 64]) && (p2dist y = [-48, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SLKf]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) >= ceil(const(size.xscale) * 25)
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 64]) && (p2dist y = [-48, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, CLP]
type = changestate
value = 400
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 50]) && (p2dist y = [-74, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, CLK]
type = changestate
value = 430
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [0, 52]) && (p2dist y = [-12, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, ALP]
type = changestate
value = 600
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [0, 42]) && (p2dist y = [-100, 44]) && p2statetype != A && p2statetype != L
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
triggerall = (map(p2bodydistx) = [0, 38]) && (p2dist y = [-80, 70]) && p2statetype != A && p2statetype != L
trigger1 = ctrl
trigger1 = vel y > 0 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, EX Jaeiken]
type = changestate
value = 1130
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = power >= 500 && var(20) <= 60
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (map(p2bodydistx) = [0, 128]) && p2statetype != A && p2statetype != L
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 8

[State -1, EX Hishou Nichirin Zan]
type = changestate
value = 1420
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = var(15) < 1 || var(20)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (map(p2bodydistx) = [0, 32]) && p2statetype != A && p2statetype != L
trigger1 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, gethitvar(hittime) >= 9

[State -1, EX Reppuken]
type = changestate
value = 1030
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = !map(projflag)
triggerall = var(15) < 1 || var(20)
triggerall = !inguarddist
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [40, 128])
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
trigger1 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, gethitvar(hittime) >= 9 && (map(p2bodydistx) = [0, 70])

[State -1, EX Shippuken]
type = changestate
value = 1320
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A && (var(3) != [1, 2])
triggerall = power >= 500 && var(20) <= 60
triggerall = !map(projflag)
triggerall = !inguarddist
triggerall = var(15) < 1 || var(20)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = map(p2bodydistx) >= 80 && p2dist y >= 80
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Jaeiken]
type = changestate
value = 1100
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = (map(p2bodydistx) = [0, 88]) && p2statetype != A && p2statetype != L
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 9

[State -1, Double Reppuken]
type = changestate
value = 1010
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = !map(projflag)
triggerall = !inguarddist
triggerall = var(15) < 1 || var(20)
triggerall = p2dist y >= -120 && enemynear, vel y >= 0
triggerall = p2statetype != A || enemynear, vel x < 0
trigger1 = var(6) && movecontact && random < (100 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, gethitvar(hittime) >= 9 && (map(p2bodydistx) = [0, 70])
trigger2 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger2 = enemynear, stateno = 5120 && enemynear, time = 4
trigger2 = (map(p2bodydistx) = [0, 70]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Hishou Nichirin Zan]
type = changestate
value = 1400
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = (map(p2bodydistx) = [0, 80]) && p2statetype != A && p2statetype != L
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (ifelse(p2statetype = C, 100, 25) * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movecontact && random < (ifelse((p2statetype = C && (p2stateno = [120, 155])), 100, 25) * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 9

[State -1, Shippuken]
type = changestate
value = 1300
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A && (var(3) != [1, 2])
triggerall = !map(projflag)
triggerall = !inguarddist
triggerall = var(15) < 1 || var(20)
triggerall = map(p2bodydistx) >= 80 && p2dist y >= 80
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Reppuken]
type = changestate
value = 1000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = !map(projflag)
triggerall = !inguarddist
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C || (p2statetype = A && map(p2bodydistx) > 200)
triggerall = map(p2bodydistx) >= 76 && p2dist y >= -120 && enemynear, vel y >= 0
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger2 = enemynear, stateno = 195 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Deadly Rave]
type = changestate
value = 3100
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && var(20) <= 60
triggerall = var(15) < 1
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (map(p2bodydistx) = [0, 88]) && (p2dist y = [-69, 0]) && p2statetype != A && p2statetype != L
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movehit || stateno = 1010) && stateno != 1420 && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 3

[State -1, Raging Dead End]
type = changestate
value = 3400
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && var(20) <= 60
triggerall = !(enemynear, ctrl) && (enemynear, movetype = A)
triggerall = (map(p2bodydistx) = [0, 72]) && (p2dist y = [-124, -48]) && inguarddist && !var(26)
triggerall = inguarddist && enemynear, vel x >= 0 && (enemynear, vel y = [-2, 8])
triggerall = (enemynear, hitdefattr = A, NA) || (enemynear, hitdefattr = SCA, SA, HA)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, MAX Rashoumon]
type = changestate
value = 3250
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 2000 && var(20) <= 60
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != 40)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
triggerall = (map(p2bodydistx) = [0, 34]) && (p2dist y = [-64, 0]) && p2statetype != A && p2statetype != L
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = (enemynear, movetype != H) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (stateno = [1000, 2999]) && stateno != 1420 && movehit && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = abs(enemynear, gethitvar(xvel)) <= 4.49 && enemynear, gethitvar(hittime) >= 6
trigger3 = var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 3350 && animelemtime(12) >= 0
trigger3 = abs(enemynear, gethitvar(xvel)) <= 4.49 && enemynear, gethitvar(hittime) >= 4

[State -1, MAX Raising Storm]
type = changestate
value = 3050
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 2000 && var(20) <= 60
triggerall = (var(15) < 2 || (stateno = [1000, 4999]))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = enemynear, statetype != L || enemynear, life <= 70
triggerall = (map(p2bodydistx) = [0, 52]) && (p2dist y = [-288, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movehit || stateno = 1010) && stateno != 1420 && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 4
trigger3 = var(7) && random < (500 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 1210 && animelemtime(8) = 1) || (stateno = 1230 && animelemtime(12) = 1) || (stateno = 1250 && animelemtime(9) = 1)
trigger4 = var(8) && random < (100 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 3350 && animelemtime(12) >= 0
trigger4 = enemynear, gethitvar(hittime) >= 4

[State -1, MAX Kyokuu Reppuu Zan]
type = changestate
value = 3350
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 2000 && var(20) <= 60
triggerall = (var(15) < 1 || (stateno = [1000, 4999]))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A)
triggerall = (map(p2bodydistx) = [0, 132]) && (p2dist y = [-100, 0]) && p2statetype != A && p2statetype != L
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = var(7) && (movehit || stateno = 1010) && stateno != 1420 && stateno != 1420 && random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, gethitvar(hittime) >= 11
trigger2 = var(7) && random < (500 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 1210 && animelemtime(8) = 1) || (stateno = 1230 && animelemtime(12) = 1) || (stateno = 1250 && animelemtime(9) = 1)

[State -1, Rashoumon]
type = changestate
value = 3200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 2000 && var(20) <= 60
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
triggerall = !inguarddist
triggerall = frontedgebodydist = [80, 150]
triggerall = !(enemynear, ctrl) && (enemynear, stateno != 40)
triggerall = (enemynear, movetype != A)
triggerall = (map(p2bodydistx) = [0, 26]) && (p2dist y = [-64, 0]) && p2statetype != A && p2statetype != L
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = (enemynear, movetype != H) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (stateno = [1000, 2999]) && stateno != 1420 && movehit && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = abs(enemynear, gethitvar(xvel)) <= 4.49 && enemynear, gethitvar(hittime) >= 6

[State -1, Raising Storm]
type = changestate
value = 3000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
triggerall = (var(15) < 1 || (stateno = [1000, 4999]))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, statetype = A)
triggerall = (map(p2bodydistx) = [0, 56]) && (p2dist y = [-104, 0]) && p2statetype != L
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && (movehit || stateno = 1010) && stateno != 1420 && random < (ifelse((var(20) = [1, 30]), 200, 50) * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 4
trigger3 = var(7) && random < (500 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 1210 && animelemtime(8) = 1) || (stateno = 1230 && animelemtime(12) = 1) || (stateno = 1250 && animelemtime(9) = 1)

[State -1, Kyokuu Reppuu Zan]
type = changestate
value = 3300
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
triggerall = !inguarddist
triggerall = (var(15) < 1 || (stateno = [1000, 4999]))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A)
triggerall = (map(p2bodydistx) = [0, 112]) && (p2dist y = [-100, 0]) && p2statetype != A && p2statetype != L
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = var(7) && movehit && stateno != 1420 && random < (ifelse((var(20) = [1, 30]), 200, 50) * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, gethitvar(hittime) >= 11

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
