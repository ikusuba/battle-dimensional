; _______________________________________
;| Edmond Honda by Phantom.of.the.Server |
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

[State -1, Orochi Kudaki]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = map(cmd_624624pp)
triggerall = roundstate = 2 && power >= 3000 && var(20) <= 60
triggerall = statetype != A || stateno = 1100 || stateno = 1130
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, MAX Oni Musou]
type = changestate
value = 3050
triggerall = !AIlevel
triggerall = map(cmd_4646pp)
triggerall = roundstate = 2 && power >= 2000 && var(20) <= 60
triggerall = statetype != A || stateno = 1100 || stateno = 1130 || stateno = 3000 || stateno = 3001
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || var(8)

[State -1, MAX Fuji Oroshi]
type = changestate
value = 3250
triggerall = !AIlevel
triggerall = map(cmd_4646kk)
triggerall = roundstate = 2 && power >= 2000 && var(20) <= 60
triggerall = statetype != A || stateno = 1100 || stateno = 1130 || stateno = 3000 || stateno = 3001
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7) || var(8)

[State -1, Oni Musou]
type = changestate
value = 3000
triggerall = !AIlevel
triggerall = map(cmd_4646p)
triggerall = roundstate = 2 && power >= 1000 && var(20) <= 60
triggerall = statetype != A || stateno = 1100 || stateno = 1130
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Fuji Oroshi]
type = changestate
value = 3200
triggerall = !AIlevel
triggerall = map(cmd_4646k)
triggerall = roundstate = 2 && power >= 1000 && var(20) <= 60
triggerall = statetype != A || stateno = 1100 || stateno = 1130
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, EX Super Hyakkan Otoshi]
type = changestate
value = 1230
triggerall = !AIlevel
triggerall = map(cmd_28kk)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Super Zutsuki]
type = changestate
value = 1130
triggerall = !AIlevel
triggerall = map(cmd_46pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Hyakuretsu Harite]
type = changestate
value = 1030
triggerall = !AIlevel
triggerall = map(cmd_mashpp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Ooichou Nage]
type = changestate
value = 1330
triggerall = !AIlevel
triggerall = map(cmd_63214pp)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Super Hyakkan Otoshi]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = map(cmd_28k)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Super Zutsuki]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = map(cmd_46p)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Hyakuretsu Harite]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = map(cmd_mashp)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Ooichou Nage]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = map(cmd_63214p)
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

[State -1, Harai-geri]
type = changestate
value = 255
triggerall = !AIlevel
triggerall = map(cmd_c)
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
value = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 16), 241, 240)
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

[State -1, CLP]
type = changestate
value = 400
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, SLK]
type = changestate
value = 230
triggerall = !AIlevel
triggerall = map(cmd_a)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel
triggerall = map(cmd_x)
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
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
value = ifelse(vel x || (var(3) = [1, 2]), 620, 621)
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
trigger1 = stateno = 1100 || stateno = 1130
trigger2 = stateno = 3000 || stateno = 3050
trigger3 = stateno = 3200 || stateno = 3250
value = 0
ignorehitpause = 1

[State -1, AI Lose Down Charge]
type = mapset
map = "charge2_ai"
triggerall = AIlevel
triggerall = time = 1
trigger1 = stateno = 1200 || stateno = 1230
value = 0
ignorehitpause = 1

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
trigger1 = random < (75 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (stateno = [100, 101])) && var(20) <= 164 && !var(26)
trigger1 = (enemynear, movetype = A) && !(enemynear, hitdefattr = SCA, AT) && (map(p2bodydistx) = [95, 127])

[State -1, Dodge]
type = changestate
value = 700
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (stateno = [100, 101])) && var(20) <= 164 && !var(26)
trigger1 = (enemynear, movetype = A) && !(enemynear, hitdefattr = SCA, AT) && (map(p2bodydistx) = [0, 60])

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
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

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
trigger1 = (enemynear, backedgebodydist <= 32 || enemynear, frontedgebodydist <= 32)

[State -1, Super Zutsuki CC]
type = changestate
value = 1100
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(20) > 30
triggerall = (map(p2bodydistx) = [-96, 96]) && (p2dist y = [-67, 0]) && p2statetype != L
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger2 = stateno = 900 && !animtime && ctrl
trigger3 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 1110 || stateno = 1210) && var(6)

[State -1, Dash Under]
type = changestate
value = 102
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = (enemynear, stateno = [5020, 5040]) && !(enemynear, hitfall)
triggerall = !(enemynear, ctrl) && p2dist y < -64 && enemynear, vel y < 4 && p2statetype = A
trigger1 = stateno = 52 && time = 2 && ctrl
trigger2 = stateno = [200, 499]
trigger2 = !animtime && ctrl

[State -1, SHP CC]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(20) > 30
triggerall = (map(p2bodydistx) = [28, 64]) && (p2dist y = [-86, 0]) && p2statetype = A
triggerall = (enemynear, backedgebodydist <= 32 || enemynear, frontedgebodydist <= 32)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger3 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger4 = (stateno = 1110 || stateno = 1210) && var(6)

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

[State -1, Harai-geri]
type = changestate
value = 255
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [61, 93]) && (p2dist y = [-12, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 9) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SHP]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = (p2dist y = [-86, 0])
triggerall = ifelse(p2statetype = A, (map(p2bodydistx) = [28, 64]), (map(p2bodydistx) = [-22, 64]))
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (ifelse(p2statetype = A, 250, 25) * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 7) && power >= 1000 && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = A
triggerall = (map(p2bodydistx) = [-22, 50]) && (p2dist y = [-70, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (ifelse(p2statetype = A, 200, 25) * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 4) && power >= 1000 && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CHP]
type = changestate
value = 420
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [64, 78]) && (p2dist y = [-12, 60])
triggerall = (p2statetype = S || (p2statetype = C && p2movetype = H))
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 4) && power >= 1000 && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 450
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [48, 52]) && (p2dist y = [-12, 60])
triggerall = (p2statetype = S || (p2statetype = C && p2movetype = H))
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 4) && power >= 1000 && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AHP]
type = changestate
value = ifelse(vel x || (var(3) = [1, 2]), 620, 621)
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A && vel x
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [-22, 40]) && (p2dist y = [-38, 45]) && p2statetype = S
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
triggerall = (map(p2bodydistx) = [-22, 59]) && (p2dist y = [-20, 63]) && p2statetype != A && p2statetype != L
trigger1 = ctrl
trigger1 = vel y > 0 && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [-22, 57]) && (p2dist y = [-40, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (ifelse(p2statetype = A, 200, 25) * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 4) && power >= 1000 && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SMKc]
type = changestate
value = 241
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) = [-26, ceil(const(size.xscale) * 16)]
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [-22, 20]) && (p2dist y = [-62, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (ifelse(p2statetype = A, 200, 25) * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 4) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SMKf]
type = changestate
value = 240
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(p2bodydistx) > ceil(const(size.xscale) * 16)
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [-22, 50]) && (p2dist y = [-40, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (ifelse(p2statetype = A, 200, 25) * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && power >= 1000 && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CMP]
type = changestate
value = 410
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [-22, 64]) && (p2dist y = [-26, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 4) && power >= 1000 && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CMK]
type = changestate
value = 440
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [-22, 49]) && (p2dist y = [-33, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && power >= 1000 && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AMP]
type = changestate
value = 610
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = A
triggerall = (map(p2bodydistx) = [-22, 57]) && (p2dist y = [-110, 16]) && p2statetype = A
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMK]
type = changestate
value = 640
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [-64, -16]) && (p2dist y = [-32, 51]) && p2statetype != A && p2statetype != L
trigger1 = ctrl
trigger1 = vel y > 0 && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [-22, 49]) && (p2dist y = [-35, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (ifelse(p2statetype = A, 200, 25) * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, SLK]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [-22, 48]) && (p2dist y = [-12, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (ifelse(p2statetype = A, 200, 25) * (AIlevel ** 2 / 64.0))
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
triggerall = (map(p2bodydistx) = [-22, 60]) && (p2dist y = [-19, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (ifelse(p2statetype = A, 200, 25) * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (prevstateno = [200, 499])
trigger2 = (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CLK]
type = changestate
value = 430
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = p2statetype = S || p2statetype = C
triggerall = (map(p2bodydistx) = [-22, 54]) && (p2dist y = [-12, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = random < (ifelse(p2statetype = A, 200, 25) * (AIlevel ** 2 / 64.0))
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
triggerall = (map(p2bodydistx) = [-22, 45]) && (p2dist y = [-40, 43]) && p2statetype != A && p2statetype != L
trigger1 = ctrl
trigger1 = vel y > 0 && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, ALK]
type = changestate
value = 630
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype = A
triggerall = var(15) < 1 || var(20)
triggerall = vel y > 0 || p2statetype = A
triggerall = (map(p2bodydistx) = [-44, 4]) && (p2dist y = [-42, 41]) && p2statetype != A && p2statetype != L
trigger1 = ctrl
trigger1 = vel y > 0 && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Ooichou Nage]
type = changestate
value = 1300
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
triggerall = p2statetype != A && p2statetype != L
triggerall = p2dist x >= 0 && map(p2bodydistx) <= ceil(32 * const(size.xscale)) && p2dist y = 0
triggerall = (enemynear, Hitover || !(enemynear, movetype = H) || var(20)) && !(enemynear, stateno = [150, 155]) && enemynear, anim != 5040
triggerall = !(enemynear, stateno = 40 && enemynear, time >= 0) && !(enemynear, stateno = 52 && !(enemynear, ctrl) && enemynear, prevstateno = [5020, 5040])
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = random < (ifelse((p2stateno = [120, 140]), 250, 125) * (AIlevel ** 2 / 64.0))

[State -1, Super Zutsuki]
type = changestate
value = 1100
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(charge4_ai) >= 45 || var(20)
triggerall = var(15) < 1 || var(20)
triggerall = (map(p2bodydistx) = [-22, 320]) && (p2dist y = [-66, 0]) && p2statetype != L
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = (map(p2bodydistx) = [-22, 16]) && p2statetype = A && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 7

[State -1, Super Hyakkan Otoshi]
type = changestate
value = 1200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(charge2_ai) >= 45 || var(20)
triggerall = var(15) < 1 || var(20)
triggerall = (map(p2bodydistx) = [-22, 152]) && (p2dist y = [-64, 0]) && p2stateno != 5120
triggerall = p2statetype != A || p2movetype = H
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = random < (ifelse(inguarddist, 50, 10) * (AIlevel ** 2 / 64.0))
trigger2 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger2 = p2stateno = 5100 && (enemynear, time = 1) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Hyakuretsu Harite]
type = changestate
value = 1000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = var(15) < 1 || var(20)
triggerall = (map(p2bodydistx) = [-22, 80]) && (p2dist y = [-54, 0])
triggerall = (p2statetype != A || p2movetype = H) && p2statetype != L
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = random < (ifelse((p2stateno = [120, 155]), 100, 50) * (AIlevel ** 2 / 64.0))
trigger2 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger2 = enemynear, gethitvar(hittime) >= 4 && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = enemynear, gethitvar(hittime) >= 8

[State -1, Orochi Kudaki]
type = changestate
value = 3100
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && !var(20)
triggerall = !map(unthrowable) && !(enemynear, prevstateno = 5120)
triggerall = !(enemynear, ctrl) && p2stateno != 5201
triggerall = p2dist x >= 0 && map(p2bodydistx) <= ceil(32 * const(size.xscale))
triggerall = (enemynear, Hitover || !(enemynear, movetype = H) || var(21)) && !(enemynear, stateno = [150, 155]) && enemynear, anim != 5040
triggerall = !(enemynear, stateno = 40 && enemynear, time >= 1) && !(enemynear, stateno = 52 && !(enemynear, ctrl) && enemynear, prevstateno = [5020, 5040])
triggerall = p2statetype != A && p2statetype != L && (p2dist y = [-48, 0])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, MAX Oni Musou]
type = changestate
value = 3050
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(charge4_ai) >= 45 || var(20)
triggerall = power >= 2000 && var(20) <= 60
triggerall = (var(15) < 4 || var(20) || (stateno = [1000, 4999]))
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (map(p2bodydistx) = [-78, 78]) && (p2dist y = [-67, 0])
triggerall = p2statetype != A && p2statetype != L && power < 3000
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movehit && random < (ifelse((var(20) = [1, 30]), 200, 50) * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 5

[State -1, MAX Fuji Oroshi]
type = changestate
value = 3250
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(charge4_ai) >= 45 || var(20)
triggerall = power >= 2000 && var(20) <= 60
triggerall = (var(15) < 2 || var(20) || (stateno = [1000, 4999]))
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = ifelse((enemynear, statetype = A && enemynear, movetype = H), (enemynear, hitfall), 1)
triggerall = (map(p2bodydistx) = [-112, 112]) && (p2dist y = [-64, 0])
triggerall = p2statetype != L && p2movetype != A
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movehit && random < (ifelse((var(20) = [1, 30]), 200, 50) * (AIlevel ** 2 / 64.0))
trigger2 = (map(p2bodydistx) = [-32, 32]) && enemynear, gethitvar(hittime) >= 5
trigger3 = var(8) && movehit
trigger3 = stateno = 3001 && animelemtime(5) = 1
trigger3 = enemynear, gethitvar(hittime) >= 5

[State -1, Oni Musou]
type = changestate
value = 3000
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(charge4_ai) >= 45 || var(20)
triggerall = power >= 1000 && var(20) <= 60
triggerall = (var(15) < 2 || var(20) || (stateno = [1000, 4999]))
triggerall = !inguarddist
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (map(p2bodydistx) = [-78, 78]) && (p2dist y = [-67, 0])
triggerall = (p2statetype != A || var(20)) && p2statetype != L && p2movetype != A
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movehit && random < (ifelse((var(20) = [1, 30]), 200, 50) * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 7

[State -1, Fuji Oroshi]
type = changestate
value = 3200
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(charge4_ai) >= 45 || var(20)
triggerall = power >= 1000 && var(20) <= 60
triggerall = (var(15) < 2 || var(20) || (stateno = [1000, 4999]))
triggerall = !inguarddist
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = ifelse((enemynear, statetype = A && enemynear, movetype = H), (enemynear, hitfall), 1)
triggerall = (map(p2bodydistx) = [-88, 88]) && (p2dist y = [-64, 0])
triggerall = p2statetype != L && p2movetype != A
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movehit && random < (ifelse((var(20) = [1, 30]), 50, 25) * (AIlevel ** 2 / 64.0))
trigger2 = (map(p2bodydistx) = [-32, 32]) && enemynear, gethitvar(hittime) >= 7

[State -1, EX Ooichou Nage]
type = changestate
value = 1330
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = !(enemynear, ctrl)
triggerall = p2statetype != A && p2statetype != L
triggerall = p2dist x >= 0 && map(p2bodydistx) <= ceil(34 * const(size.xscale)) && p2dist y = 0
triggerall = (enemynear, Hitover || !(enemynear, movetype = H) || var(20)) && !(enemynear, stateno = [150, 155]) && enemynear, anim != 5040
triggerall = !(enemynear, stateno = 40 && enemynear, time >= 0) && !(enemynear, stateno = 52 && !(enemynear, ctrl) && enemynear, prevstateno = [5020, 5040])
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = random < (ifelse((p2stateno = [120, 140]), 250, 125) * (AIlevel ** 2 / 64.0))

[State -1, EX Super Zutsuki]
type = changestate
value = 1130
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(charge4_ai) >= 45 || var(20)
triggerall = power >= 500 && var(20) <= 60
triggerall = (var(15) < 2 || var(20))
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (map(p2bodydistx) = [-22, 320]) && (p2dist y = [-66, 0]) && p2statetype != L
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = (map(p2bodydistx) = [-22, 16]) && p2statetype = A && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 7

[State -1, EX Super Hyakkan Otoshi]
type = changestate
value = 1230
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = map(charge2_ai) >= 45 || var(20)
triggerall = power >= 500 && var(20) <= 60
triggerall = (var(15) < 2 || var(20))
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (map(p2bodydistx) = [-22, 152]) && (p2dist y = [-64, 0])
triggerall = p2statetype != A && p2statetype != L
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, EX Hyakuretsu Harite]
type = changestate
value = 1030
triggerall = AIlevel && numenemy
triggerall = !(p2statetype = A && p2movetype = H) || (enemynear, hitfall)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (var(15) < 4 || var(20))
triggerall = (map(p2bodydistx) = [-22, 80]) && (p2dist y = [-54, 0])
triggerall = (p2statetype != A || p2movetype = H) && p2statetype != L
triggerall = !(p2movetype = H && (p2statetype = S || p2statetype = C)) || ((enemynear, gethitvar(hitshaketime) + enemynear, gethitvar(hittime)) > 5);temp
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = (p2stateno = [120, 155]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger2 = enemynear, gethitvar(hittime) >= 4 && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = enemynear, gethitvar(hittime) >= 8

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
