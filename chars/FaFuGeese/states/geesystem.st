; _______________________________________
;| Geese Howard by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<SYSTEM STATES>========================================
;==============================================================================================

;====================<STANDING>====================
[Statedef 0]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0

[State 0, Gone]
type = removeexplod
trigger1 = ishelper
[State 0, Gone]
type = destroyself
trigger1 = ishelper

[State 0, Anim]
type = changeanim
trigger1 = anim != 0 && anim != 5
trigger2 = anim = 5 && !animtime
value = 0

[State 0, Dead]
type = changestate
trigger1 = !alive
value = 5050


;====================<CROUCHING>====================
[Statedef 10]
type = C
physics = C
movetype = I
velset = 0, 0
sprpriority = 0

[State 10, No walking]
type = assertspecial
trigger1 = 1
flag = nowalk

[State 10, Anim]
type = changeanim
trigger1 = !time
trigger1 = anim = 12
value = 10
elem = 3 -animelemno(0)

[State 10, Anim]
type = changeanim
trigger1 = anim != 10
value = 10

[State 10, End]
type = selfstate
trigger1 = !animtime
value = 11


[Statedef 11]
type = C
physics = C
movetype = I
anim = 11
velset = 0, 0
sprpriority = 0

[State 11, No walking]
type = assertspecial
trigger1 = 1
flag = nowalk

[State 11, Anim]
type = changeanim
trigger1 = anim = 6 && !animtime
value = 11


[Statedef 12]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0

[State 12, No walking]
type = assertspecial
trigger1 = 1
flag = nowalk

[State 12, Anim]
type = changeanim
trigger1 = !time
trigger1 = anim = 10
value = 12
elem = 3 -animelemno(0)

[State 12, Anim]
type = changeanim
trigger1 = anim != 12
value = 12

[State 12, End]
type = selfstate
trigger1 = command = "holddown" && command != "holdup"
value = 10

[State 12, End]
type = selfstate
trigger1 = !animtime
value = 0


;====================<WALKING>====================
[Statedef 20]
type = S
physics = S
movetype = I
sprpriority = 0

[State 20, Vel]
type = velset
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, Vel]
type = velset
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, Anim]
type = changeanim
triggerall = vel x > 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 20

[State 20, Anim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 21


;====================<JUMPING>====================
[Statedef 40]
type = S
physics = S
movetype = I
anim = 40
ctrl = 0
velset = 0, 0
sprpriority = 1
facep2 = (prevstateno != 100)

[State 40, Keyboard Check]
type = changestate
trigger1 = !time
trigger1 = !AIlevel
trigger1 = prevstateno = 52
trigger1 = command = "holddown" && command = "holdup" 
value = 10
ctrl = 1

[State 40, Direction]
type = varset
trigger1 = !time
sysvar(1) = 0

[State 40, Direction]
type = varset
trigger1 = !AIlevel
trigger1 = time >= 1
trigger1 = command = "holdfwd" || command = "holdback"
sysvar(1) = (command = "holdfwd") - (command = "holdback")
persistent = 0

[State 40, Direction]
type = varset
trigger1 = AIlevel
sysvar(1) = ifelse((enemynear, movetype != A || backedgebodydist <= 10), 1, ifelse((enemynear, movetype = A), -1, 0))

[State 40, High Jump]
type = varset
trigger1 = !time
var(3) = 0

[State 40, High Jump]
type = varset
trigger1 = !time
trigger1 = !AIlevel
trigger1 = map(cmd_highjump)
var(3) = 3

[State 40, High Jump]
type = varset
triggerall = !time
triggerall = AIlevel
triggerall = random < 500
trigger1 = map(p2bodydistx) > 100
trigger2 = numenemy
trigger2 = enemynear, facing != facing
trigger2 = enemynear, backedgedist <= 10
trigger3 = numenemy
trigger3 = enemynear, facing = facing
trigger3 = enemynear, frontedgedist <= 10
var(3) = 3

[State 40, Running Jump]
type = varset
trigger1 = prevstateno = 100
var(3) = 3
[State 40, Running Jump]
type = varset
trigger1 = prevstateno = 100
sysvar(1) = 1

[State 40, Low Jump]
type = varset
trigger1 = !AIlevel && command != "holdup" && (var(3) != [1, 2])
var(3) = ifelse((var(3) = 3 && sysvar(1)), 2, 1)
[State 40, Low Jump]
type = varset
trigger1 = AIlevel && (var(3) != [1, 2])
trigger1 = (enemynear, statetype = C) && random < 500
var(3) = ifelse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Snd]
type = playsnd
trigger1 = !animtime
value = 0, ifelse((var(3) = [2, 3]), 41, 40)
~
[State 40, Dust]
type = helper
trigger1 = !animtime
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 40, Vel Normal]
type = velset
trigger1 = !animtime
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, Vel Short]
type = velset
trigger1 = !animtime && var(3) = 1
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = 0.76 * const(velocity.jump.y)

[State 40, Vel Medium]
type = velset
trigger1 = !animtime && var(3) = 2
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = 0.76 * const(velocity.jump.y)

[State 40, Vel Long]
type = velset
trigger1 = !animtime && var(3) = 3
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifelse(!sysvar(1), const(velocity.runjump.y), const(velocity.jump.y))

[State 40, End]
type = selfstate
trigger1 = !animtime
value = 50
ctrl = 1


[Statedef 50]
type = A
physics = N
movetype = I
sprpriority = 1

[State 50, Anim]
type = changeanim
trigger1 = !time
value = ifelse(!vel x, 41, ifelse(vel x > 0, 42, 43)) + 10 * (var(3) = [1, 2])
persistent = 0

[State 50, No Guard]
type = assertspecial
trigger1 = var(3) = [1, 2]
flag = noairguard

[State 50, Grounded Frame]
type = posfreeze
trigger1 = time < 1 && prevstateno = 40
value = 1
[State 50, Accel]
type = gravity
trigger1 = time >= 1 || prevstateno != 40

[State 50, Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


[Statedef 51]
type = A
physics = N
movetype = I
sprpriority = 1

[State 51, Accel]
type = gravity
trigger1 = 1

[State 51, Land]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


[Statedef 52]
type = S
physics = S
movetype = I
anim = 47
ctrl = 0
sprpriority = 1

[State 52, Anim 48]
type = changeanim
triggerall = !time
trigger1 = vel y >= (-1.05 * const(velocity.jump.y))
trigger2 = vel x >= (1.25 * const(velocity.jump.fwd.x))
trigger3 = vel x <= (1.25 * const(velocity.jump.back.x))
value = 48

[State 52, Anim 57]
type = changeanim
trigger1 = !time
trigger1 = (var(3) = 1 || var(3) = 2)
trigger1 = (prevstateno = [600, 699])
value = 57

[State 52, Stop]
type = velset
trigger1 = 1
x = 0
y = 0

[State 52, Pos]
type = posset
trigger1 = 1
y = 0

[State 52, Ctrl]
type = ctrlset
trigger1 = !time
trigger1 = prevstateno = 50 || prevstateno = 51 || prevstateno = 763 || (prevstateno = [5000, 5999])
trigger2 = time = 1
trigger2 = anim != 57
value = 1

[State 52, Trip Guard]
type = changestate
trigger1 = var(20) <= 0
trigger1 = ctrl && command = "holdback"
trigger1 = inguarddist && (prevstateno != [600, 699])
value = 120

[State 52, No Walk]
type = assertspecial
trigger1 = anim != 5
flag = nowalk

[State 52, Snd]
type = playsnd
trigger1 = !time
value = 0, 52

[State 52, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 52, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<RUN>===========================
[Statedef 100]
type = S
physics = N
movetype = I
anim = 100
ctrl = 0
sprpriority = 1

[State 100, Snd]
type = playsnd
trigger1 = !time
value = 0, 100

[State 100, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 100, Vel]
type = velset
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, step]
type = playsnd
trigger1 = (animelem = 3 || animelem = 6)
value = 0, ifelse((animelem = 3), 103, 106)

[State 100, Jump]
type = changestate
trigger1 = !AIlevel
trigger1 = command = "holdfwd" && command = "holdup"
value = 40
[State 100, Jump]
type = changestate
trigger1 = AIlevel && random < 25
value = 40

[State 100, End]
type = changestate
trigger1 = !AIlevel
trigger1 = command != "holdfwd" || command = "holdback"
trigger2 = AIlevel && map(p2bodydistx) <= 90
trigger3 = p2dist x < -const(size.ground.back)
value = 101


;--- STOP ---
[Statedef 101]
type = S
physics = S
movetype = I
anim = 101
ctrl = 0
sprpriority = 1

[State 101, Snd]
type = playsnd
trigger1 = !time
value = 0, 101

[State 101, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = 3
postype = p1
pos = 0, 0
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 101, Jump]
type = changestate
trigger1 = !AIlevel && command = "holdup"
value = 40
[State 101, End]
type = changestate
trigger1 = !animtime
value = ifelse(command = "holddown", 10, 0)
ctrl = 1


;======================<DASH>===========================
[Statedef 102]
type = S
physics = N
movetype = I
anim = 102
ctrl = 0
sprpriority = 1

[State 102, Run]
type = varset
trigger1 = !time
sysvar(1) = 1

[State 102, Run]
type = varset
triggerall = time <= 5
trigger1 = !AIlevel && command != "holdfwd"
trigger2 = AIlevel && map(p2bodydistx) < 120
sysvar(1) = 0

[State 102, Run]
type = changestate
trigger1 = time = 5 && sysvar(1)
value = 100

[State 102, Freeze]
type = changeanim
trigger1 = time <= 1
trigger2 = time < 5
trigger2 = sysvar(1) = 1
value = 102
elem = 1

[State 102, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 102

[State 102, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 102, Vel]
type = velset
trigger1 = animelem = 2
x = 6.154

[State 102, End]
type = changestate
trigger1 = !animtime
value = 103


;--- STOP ---
[Statedef 103]
type = S
physics = S
ctrl = 1
anim = 103
velset = 0, 0

[State 103, Snd]
type = playsnd
trigger1 = !time
value = 0, 103
[State 103, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 103, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<BACK DASH>==========================
[Statedef 105]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 105
ctrl = 0
sprpriority = 1

[State 105, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 105
[State 105, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 105, Vel]
type = velset
trigger1 = animelem = 2
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, Land]
type = changestate
trigger1 = !animtime
value = 106


;--- LAND ---
[Statedef 106]
type = S
physics = S
ctrl = 0
anim = 106
velset = 0, 0

[State 106, Pos]
type = posset
trigger1 = 1
y = 0

[State 106, Snd]
type = playsnd
trigger1 = !time
value = 0, 106
[State 106, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 106, Ctrl]
type = ctrlset
trigger1 = time >= 2
value = 1
[State 106, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;====================<DODGE>====================
[Statedef 700]
type = S
physics = S
movetype = I
anim = 700
ctrl = 0
velset = 0, 0
sprpriority = -2

[State 700, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, 0
channel = 0

[State 700, Snd]
type = playsnd
trigger1 = animelem = 1
value = 1, 3

[State 700, Push]
type = playerpush
trigger1 = 1
value = 0
[State 700, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1

[State 700, Attack]
type = changestate
trigger1 = !AIlevel && (time = [15, 25])
trigger1 = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
value = ifelse((command = "x" || command = "y" || command = "z"), 211, 240)
[State 700, Attack]
type = changestate
trigger1 = AIlevel && (time = [15, 25]) && numenemy
trigger1 = (enemynear, movetype != A) && (map(p2bodydistx) = [-60, 60]) && (p2dist y >= -60)
value = ifelse(random < 666, 211, 240)

[State 700, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;====================<ROLL>====================
;--- Forward ---
[Statedef 710]
type = S
physics = N
movetype = I
anim = 710
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 710, Push]
type = playerpush
trigger1 = 1
value = 0
[State 710, HB]
type = hitby
trigger1 = animelemtime(7) < 0
value = SCA, AT
time = 1

[State 710, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, ifelse(random < 500, 1, 3)
channel = 0

[State 710, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 102

[State 710, Vel]
type = velset
trigger1 = animelem = 2
x = 4.76

[State 710, Vel]
type = velset
trigger1 = animelem = 8
x = 0

[State 710, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Backward ---
[Statedef 715]
type = S
physics = N
movetype = I
anim = 715
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 715, Push]
type = playerpush
trigger1 = 1
value = 0
[State 715, HB]
type = hitby
trigger1 = animelemtime(7) < 0
value = SCA, AT
time = 1

[State 715, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, ifelse(random < 500, 1, 3)
channel = 0

[State 715, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 102

[State 715, Vel]
type = velset
trigger1 = animelem = 2
x = -3.57

[State 715, Vel]
type = velset
trigger1 = animelem = 8
x = 0

[State 715, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==========<POWER CHARGE>==========
[Statedef 730]
type = S
physics = S
movetype = I
anim = 730
velset = 0, 0
ctrl = 0

[State 730, Power]
type = poweradd
trigger1 = 1
value = 2 + ifelse(time < 60, 0, (time -60) / 12)

[State 730, Snd]
type = playsnd
trigger1 = time = 8
value = 4, 5
channel = 0

[State 730, Flash]
type = palfx
trigger1 = 1
time = 1
add = 75 + ceil(sin(time / 6.0 * pi) * 75), 25 + ceil(sin(time / 6.0 * pi) * 25), 0

[State 730, FX]
type = helper
trigger1 = !numhelper(8330)
helpertype = normal
stateno = 8330
ID = 8330
name = "Power Charge"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 730, FX]
type = helper
trigger1 = !numhelper(8331)
helpertype = normal
stateno = 8331
ID = 8331
name = "Particles"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 730, End]
type = changestate
triggerall = time >= 8
trigger1 = power >= const(data.power) || power >= powermax || roundstate != 2
trigger2 = !AIlevel && (command != "/b" || command != "/y")
trigger3 = AIlevel && (inguarddist || map(p2bodydistx) <= 120)
value = 731 + 0 * (var(58) := 5)
ctrl = 1


;--- END ---
[Statedef 731]
type = S
physics = S
movetype = I
anim = 731
velset = 0, 0
ctrl = 1

[State 731, Snd]
type = stopsnd
trigger1 = !time
channel = 0

[State 730, Snd]
type = playsnd
trigger1 = !time
trigger1 = power >= const(data.power)
value = 6, 7
channel = 0

[State 730, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;====================<ZERO COUNTER>====================
[Statedef 750]
type = S
physics = S
movetype = I
anim = 750
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = -1000
facep2 = 1

[State 750, Button]
type = varset
trigger1 = !time
trigger1 = !AIlevel
var(10) = (command = "counter_k")
ignorehitpause = 1
[State 750, Button AI]
type = varset
trigger1 = !time
trigger1 = AIlevel
var(10) = ifelse((p2statetype = A), 0, ifelse((p2statetype = C), 1, ifelse(random < 500, 0, 1)))
ignorehitpause = 1

[State 750, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 750, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 750, Snd]
type = playsnd
trigger1 = !time
value = 4, 0
channel = 0

[State 750, SuperPause FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8350
ID = 8350
name = "Zero Counter"
postype = p1
pos = 25, -63
supermovetime = 255
ownpal = 1
[State 750, Super Pause]
type = superpause
trigger1 = !time
time = 15
movetime = 15
p2defmul = 1
anim = -1
sound = s0, 750
darken = 0

[State 750, End]
type = changestate
trigger1 = time >= 15
value = ifelse(var(10) = 1, 2910, 2900)


;====================<PARRY>====================
;--- STANDING ---
[Statedef 760]
type = S
physics = S
movetype = I
anim = 760
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State 760, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1

[State 760, Fireball Pause]
type = pause
trigger1 = !time
trigger1 = numenemy
trigger1 = prevstateno = [5000, 5020]
trigger1 = enemynear, movereversed != 1
time = 15
movetime = 15
;endcmdbuftime = 15
pausebg = 0

[State 760, Consecutive Parries]
type = posadd
trigger1 = !time
trigger1 = numhelper(765)
trigger1 = helper(765), var(3)
x = -8

[State 760, Stop]
type = posfreeze
trigger1 = 1
value = 1
[State 760, No walking]
type = mapset
trigger1 = 1
map = "parrynowalk"
value = 4

[State 760, Snd]
type = playsnd
trigger1 = !time
value = 4, 6
channel = 0
[State 760, Snd]
type = playsnd
trigger1 = !time
value = 0, 760

[State 760, Flash]
type = palfx
trigger1 = !time
add = 0, 64, 255
sinadd = 0, -64, -255, 60
time = 15
[State 760, FX]
type = explod
trigger1 = !time
anim = 8360
sprpriority = 5
postype = p1
pos = ceil(23 * const(size.xscale)), ceil(-76 * const(size.yscale))
pausemovetime = -1
supermovetime = -1
scale = 0.5, 0.5
ownpal = 1

[State 760, Shake]
type = envshake
trigger1 = !time
time = 1
ampl = 0

[State 760, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- CROUCHING ---
[Statedef 761]
type = C
physics = C
movetype = I
anim = 761
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State 761, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1

[State 761, Fireball Pause]
type = pause
trigger1 = !time
trigger1 = numenemy
trigger1 = prevstateno = [5000, 5020]
trigger1 = enemynear, movereversed != 1
time = 15
movetime = 15
;endcmdbuftime = 15
pausebg = 0

[State 761, Stop]
type = posfreeze
trigger1 = 1
value = 1
[State 761, No walking]
type = mapset
trigger1 = 1
map = "parrynowalk"
value = 4

[State 761, Snd]
type = playsnd
trigger1 = !time
value = 4, 6
channel = 0
[State 761, Snd]
type = playsnd
trigger1 = !time
value = 0, 760

[State 761, Flash]
type = palfx
trigger1 = !time
add = 0, 64, 255
sinadd = 0, -64, -255, 60
time = 15
[State 761, FX]
type = explod
trigger1 = !time
anim = 8360
sprpriority = 5
postype = p1
pos = ceil(23 * const(size.xscale)), ceil(-48 * const(size.yscale))
pausemovetime = -1
supermovetime = -1
scale = 0.5, 0.5
ownpal = 1

[State 761, Shake]
type = envshake
trigger1 = !time
time = 1
ampl = 0

[State 761, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;--- JUMPING ---
[Statedef 762]
type = A
physics = N
movetype = I
anim = 762
ctrl = 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State 762, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1

[State 762, Fireball Pause]
type = pause
trigger1 = !time
trigger1 = numenemy
trigger1 = prevstateno = [5000, 5020]
trigger1 = enemynear, movereversed != 1
time = 15
movetime = 15
;endcmdbuftime = 15
pausebg = 0

[State 762, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 762, Snd]
type = playsnd
trigger1 = !time
value = 4, 6
channel = 0
[State 762, Snd]
type = playsnd
trigger1 = !time
value = 0, 760

[State 762, Flash]
type = palfx
trigger1 = !time
add = 0, 64, 255
sinadd = 0, -64, -255, 60
time = 15
[State 762, FX]
type = explod
trigger1 = !time
anim = 8360
sprpriority = 5
postype = p1
pos = ceil(16 * const(size.xscale)), ceil(-84 * const(size.yscale))
pausemovetime = -1
supermovetime = -1
scale = 0.5, 0.5
ownpal = 1

[State 762, Shake]
type = envshake
trigger1 = !time
time = 1
ampl = 0

[State 762, End]
type = changestate
trigger1 = !animtime
value = 763
ctrl = 1

[Statedef 763]
type = A
physics = N
movetype = I
anim = 763
ctrl = 1

[State 763, Vel]
type = velset
trigger1 = !time
x = ifelse(vel x > 2, 2, ifelse(vel x < -2, -2, vel x))
y = ifelse(vel y < -2, vel y, -2)

[State 763, Accel]
type = gravity
trigger1 = 1

[State 763, Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;--- HELPER ---
[Statedef 765]
type = A
physics = N
movetype = I
anim = ifelse(root, statetype = C, 766, ifelse(root, statetype = A, 767, 765))
velset = 0, 0
ctrl = 0

[State 765, NHB]
type = nothitby
trigger1 = 1
value = SCA

[State 765, Bind]
type = bindtoroot
trigger1 = 1
time = -1

[State 765, Anim]
type = changeanim
triggerall = !time
trigger1 = !(root, AIlevel)
trigger1 = root, command = "D"
trigger2 = root, AIlevel
trigger2 = (root, statetype != A) && p2statetype = C
value = 766

[State 765, Anim]
type = changeanim
triggerall = !time
trigger1 = !(root, AIlevel)
trigger1 = root, command = "F"
trigger2 = root, AIlevel
trigger2 = anim != 766
value = ifelse((root, statetype = A), 767, 765)

[State 765, Anim]
type = changeanim
trigger1 = anim = 765 || anim = 767
value = ifelse((root, statetype = A), 767, 765)

[State 765, Consecutive Parries]
type = varset
triggerall = !time
trigger1 = root, stateno = [760, 762]
trigger2 = root, map(parrynowalk)
var(3) = 1

[State 765, Disable]
type = varset
trigger1 = time >= ifelse((root, statetype = A), 8, 10)
trigger2 = facing != (root, facing)
trigger3 = !(root, ctrl)
trigger3 = (root, stateno != [760, 762])
trigger3 = (root, stateno != 5120)
var(0) = 1

[State 765, Disable]
type = varset
triggerall = !var(0)
triggerall = !(root, AIlevel)
trigger1 = root, p2dist x >= 0
trigger1 = root, command = "holdback"
trigger2 = root, p2dist x < 0
trigger2 = root, command = "holdfwd"
trigger3 = time < 5
trigger3 = root, p2dist x >= 0
trigger3 = (root, command = "holdfwd" + root, command = "holddown") > 1
trigger4 = time < 5
trigger4 = root, p2dist x < 0
trigger4 = (root, command = "holdback" + root, command = "holddown") > 1
trigger5 = time >= 5
trigger5 = root, p2dist x >= 0
trigger5 = root, command = "holdfwd" || root, command = "holddown"
trigger6 = time >= 5
trigger6 = root, p2dist x < 0
trigger6 = root, command = "holdback" || root, command = "holddown"
trigger7 = time >= 1
trigger7 = root, p2dist x >= 0
trigger7 = (((anim = 765 || anim = 767) && root, command = "F") || (anim = 766 && root, command = "D"))
trigger8 = time >= 1
trigger8 = root, p2dist x >= 0
trigger8 = (((anim = 765 || anim = 767) && root, command = "F") || (anim = 766 && root, command = "D"))
var(0) = 1

[State 765, Disable]
type = changeanim
trigger1 = var(0) = 1
value = 9999

[State 765, Standing / Air]
type = reversaldef
trigger1 = !var(0)
trigger1 = anim = 765 || anim = 767
trigger1 = (root, stateno != 5120) || !(root, animtime)
reversal.attr = SCA, AA
p1stateno = 766
pausetime = 0, 15
sparkno = -1
numhits = 0

[State 765, Crouching]
type = reversaldef
trigger1 = !var(0)
trigger1 = anim = 766
reversal.attr = SC, AA
p1stateno = 766
pausetime = 0, 15
sparkno = -1
numhits = 0

[State 765, Disable]
type = reversaldef
trigger1 = var(0) = 1
reversal.attr =
pausetime = 0, 0
sparkno = -1
numhits = 0

[State 765, End]
type = destroyself
trigger1 = time >= 23
trigger2 = (root, movetype != I)
trigger3 = !(root, ctrl) && (root, stateno != [760, 762]) && (root, stateno != 5120)
trigger4 = (root, stateno = [760, 762]) && (root, time <= 1)


;--- Success ---
[Statedef 766]
movetype = I
ctrl = 0
[State 766, Disable]
type = varset
trigger1 = 1
var(0) = 1
[State 766, End]
type = destroyself
trigger1 = root, stateno = [760, 762]
trigger2 = time >= 2


;====================<CUSTOM COMBO>====================
;--- GROUND ---
[Statedef 900]
type = S
physics = S
movetype = A
anim = 900
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = -2000

[State 900, Corner Push]
type = varset
trigger1 = time = 4
fvar(5) = 0

[State 900, NHB]
type = nothitby
trigger1 = !time
value = SCA
time = 38
[State 900, Stop]
type = posfreeze
trigger1 = 1
value = 1
[State 900, Var]
type = varset
trigger1 = time >= 4
var(20) = 300

[State 900, Snd]
type = playsnd
trigger1 = time = 4
value = 6, 4
channel = 0

[State 900, SuperPause FX]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8400
ID = 8400
name = "Custom Combo Startup"
postype = p1
pos = 9, -61
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 900, Super Pause]
type = superpause
trigger1 = time = 4
time = 30
movetime = 30
anim = -1
sound = s0, 900
p2defmul = 1
darken = 0

[State 900, AfterImage]
type = afterimage
trigger1 = !animtime
time = 2
timegap = 1
framegap = 4
length = 13
palbright = 0, 0, 0
palcontrast = 64, 128, 192
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add1

[State 900, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- AIR ---
[Statedef 905]
type = A
physics = N
movetype = A
anim = 905
ctrl = 0
sprpriority = 2
poweradd = -2000

[State 905, Corner Push]
type = varset
trigger1 = time = 4
fvar(5) = 0

[State 905, NHB]
type = nothitby
trigger1 = !time
value = SCA
time = 38

[State 905, Var]
type = varset
trigger1 = time >= 4
var(20) = 240

[State 905, Snd]
type = playsnd
trigger1 = time = 4
value = 6, 4
channel = 0

[State 905, SuperPause FX]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8400
ID = 8400
name = "Custom Combo Startup"
postype = p1
pos = -21, -92
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 905, Super Pause]
type = superpause
trigger1 = time = 4
time = 30
movetime = 30
anim = -1
sound = s0, 900
p2defmul = 1
darken = 0

[State 905, AfterImage]
type = afterimage
trigger1 = !animtime
time = 2
timegap = 1
framegap = 4
length = 13
palbright = 0, 0, 0
palcontrast = 64, 128, 192
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add1

[State 905, End]
type = changestate
trigger1 = !animtime
value = 906
ctrl = 1

[State 905, Stop]
type = posfreeze
trigger1 = 1
value = 1


[Statedef 906]
type = A
physics = N
movetype = I
anim = 906
ctrl = 1

[State 906, Accel]
type = gravity
trigger1 = 1

[State 906, Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;==========<FALL RECOVERY>==========
[Statedef 5200]
type = A
movetype = H
physics = N

[State 5200, Anim]
type = changeanim
trigger1 = anim = 5035 && !animtime
value = 5050

[State 5200, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 5200, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 10
value = 5201


[Statedef 5201]
type = S
movetype = I
physics = N
anim = 5200
ctrl = 0
facep2 = 1

[State 5201, Pos]
type = posset
trigger1 = 1
y = 0

[State 5201, Vel]
type = velset
trigger1 = !time
x = -8
y = 0

[State 5201, Vel]
type = velmul
trigger1 = 1
x = 0.9

[State 5201, Snd]
type = playsnd
trigger1 = !time
value = 4, 6
channel = 0

[State 5201, Snd]
type = playsnd
trigger1 = !time
value = 0, 5200

[State 5201, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 20
time = 5

[State 5201, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8200
ID = 8200
name = "Recover FX"
postype = p1
pos = 0, ceil(-18 * const(size.yscale))
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 5201, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 5201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- AIR ---
[Statedef 5210]
type = A
movetype = I
physics = N
anim = 5210
ctrl = 0

[State 5210, Accel]
type = veladd
trigger1 = 1
y = const(movement.air.gethit.airrecover.yaccel)

[state 5210, Vel]
type = velmul
trigger1 = !time
x = const(velocity.air.gethit.airrecover.mul.x)
y = const(velocity.air.gethit.airrecover.mul.y)

[state 5210, Vel]
type = veladd
trigger1 = !time
x = const(velocity.air.gethit.airrecover.add.x)
y = const(velocity.air.gethit.airrecover.add.y)

[state 5210, Up]
type = veladd
trigger1 = !time
trigger1 = command = "holdup"
y = const(velocity.air.gethit.airrecover.up)

[state 5210, Down]
type = veladd
trigger1 = !time
trigger1 = command = "holddown"
y = const(velocity.air.gethit.airrecover.down)

[state 5210, Forward]
type = veladd
trigger1 = !time
trigger1 = command = "holdfwd"
x = const(velocity.air.gethit.airrecover.fwd)

[state 5210, Back]
type = veladd
trigger1 = !time
trigger1 = command = "holdback"
x = const(velocity.air.gethit.airrecover.back)

[State 5210, Turn]
type = turn
trigger1 = !time
trigger1 = p2dist x < 0

[State 5210, Snd]
type = playsnd
trigger1 = !time
value = 4, 6
channel = 0

[State 5210, Snd]
type = playsnd
trigger1 = !time
value = 0, 5200

[State 5210, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 20
time = 5

[State 5210, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8200
ID = 8200
name = "Recover FX"
postype = p1
pos = 0, ceil(-66 * const(size.yscale))
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 5210, NHB]
type = nothitby
trigger1 = time < 14
value = SCA
time = 1

[State 5210, Ctrl]
type = ctrlset
trigger1 = time >= 14
value = 1

[State 5210, Land]
type = changestate
trigger1 = vel y > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;========================<GUARD>========================
;--- START ---
[Statedef 120]
type = U
physics = U
anim = 120 + (statetype = C) + (statetype = A) * 2

[State 120, Do or do not]
type = assertspecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State 120, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = S
physics = S

[State 120, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = C
physics = C

[State 120, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = A
physics = A

[State 120, Vel]
type = velset
trigger1 = !time
trigger1 = statetype != A
x = 0
y = 0

[State 120, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && numenemy
trigger2 = statetype = S && (enemynear, movetype = A)
trigger2 = (enemynear, statetype = C) || (enemynear, hitdefattr = C, AA, AP)
statetype = C
physics = C

[State 120, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && numenemy
trigger2 = statetype = C && (enemynear, movetype = A)
trigger2 = !(enemynear, statetype = C) && !(enemynear, hitdefattr = C, AA, AP)
statetype = S
physics = S

[State 120, End]
type = changestate
trigger1 = !animtime
value = 130 + (statetype = C) + (statetype = A) * 2

[State 120, Stop Guarding]
type = changestate
trigger1 = !inguarddist
trigger2 = !AIlevel
trigger2 = p2dist x >= 0
trigger2 = command != "holdback" || command = "holdfwd"
trigger3 = !AIlevel
trigger3 = p2dist x < 0
trigger3 = command != "holdfwd" || command = "holdback"
trigger4 = AIlevel && numenemy
trigger4 = enemynear, hitdefattr = SCA, AT
value = 140

[State 120, No Walking]
type = assertspecial
triggerall = ctrl
trigger1 = p2dist x >= 0
trigger1 = command != "holdfwd"
trigger2 = p2dist x < 0
trigger2 = command != "holdback"
flag = nowalk


;--- STAND GUARD (Guarding) ---
[Statedef 130]
type = S
physics = S
velset = ifelse(prevstateno = 132 && abs(vel x) < 5, 0, vel x), 0

[State 130, Do or do not]
type = assertspecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard

[State 130, Anim]
type = changeanim
trigger1 = anim != 130
value = 130

[State 130, AI fix]
type = changestate
trigger1 = AIlevel && numenemy
trigger1 = time >= 120 || enemynear, time >= 60
trigger1 = random < 17
value = 40

[State 130, Stop when Landing]
type = velset
trigger1 = !time
trigger1 = abs(vel x) < 5
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
x = 0

[State 130, Snd]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
value = 0, 52

[State 130, Dust]
type = explod
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 130, High to Low]
type = changestate
trigger1 = !AIlevel && command = "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, statetype = C) || (enemynear, hitdefattr = C, AA, AP)
value = 131

[State 130, Stop Guarding]
type = changestate
trigger1 = !inguarddist
trigger2 = !AIlevel
trigger2 = p2dist x >= 0
trigger2 = command != "holdback" || command = "holdfwd"
trigger3 = !AIlevel
trigger3 = p2dist x < 0
trigger3 = command != "holdfwd" || command = "holdback"
trigger4 = AIlevel && numenemy
trigger4 = enemynear, hitdefattr = SCA, AT
value = 140

[State 130, No Walking]
type = assertspecial
triggerall = ctrl
trigger1 = p2dist x >= 0
trigger1 = command != "holdfwd"
trigger2 = p2dist x < 0
trigger2 = command != "holdback"
flag = nowalk


;--- CROUCH GUARD (Guarding) ---
[Statedef 131]
type = C
physics = C
velset = ifelse(prevstateno = 132 && abs(vel x) < 5, 0, vel x), 0

[State 131, Do or do not]
type = assertspecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard

[State 131, Anim]
type = changeanim
trigger1 = anim != 131
value = 131

[State 131, Low to High]
type = changestate
trigger1 = !AIlevel && command != "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = !(enemynear, statetype = C) && !(enemynear, hitdefattr = C, AA, AP)
value = 130

[State 131, AI fix]
type = changestate
trigger1 = AIlevel && numenemy
trigger1 = time >= 120 || enemynear, time >= 60
trigger1 = random < 17
value = 40

[State 131, Stop Guarding]
type = changestate
trigger1 = !inguarddist
trigger2 = !AIlevel
trigger2 = p2dist x >= 0
trigger2 = command != "holdback" || command = "holdfwd"
trigger3 = !AIlevel
trigger3 = p2dist x < 0
trigger3 = command != "holdfwd" || command = "holdback"
trigger4 = AIlevel && numenemy
trigger4 = enemynear, hitdefattr = SCA, AT
value = 140


;--- AIR GUARD (Guarding) ---
[Statedef 132]
type = A
physics = N

[State 132, Do or do not]
type = assertspecial
trigger1 = 1
flag = noairguard

[State 132, Anim]
type = changeanim
trigger1 = anim != 132
value = 132

[State 132, Accel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[State 132, Var]
type = varset
trigger1 = 1
sysvar(0) = vel y > 0 && (pos y > -vel y)

[State 132, Vel]
type = velset
trigger1 = sysvar(0)
y = 0

[State 132, Pos]
type = posset
trigger1 = sysvar(0)
y = 0

[State 132, End]
type = changestate
triggerall = sysvar(0) && inguarddist
trigger1 = !AIlevel
trigger1 = ifelse(p2dist x < 0, command = "holdfwd", command = "holdback")
trigger2 = AIlevel
value = 130

[State 132, End]
type = changestate
trigger1 = sysvar(0)
value = 52

;[State 132, Stop guarding was here]


;--- GUARD (End) ---
[Statedef 140]
type = U
physics = U
ctrl = 1

[State 140, Anim]
type = changeanim
trigger1 = !time
value = 140 + (statetype = C) + (statetype = A) * 2

[State 140, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = S
physics = S

[State 140, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = C
physics = C

[State 140, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = A
physics = A

[State 140, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && numenemy
trigger2 = statetype = S && (enemynear, movetype = A) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, statetype = C) || (enemynear, hitdefattr = C, AA, AP)
statetype = C
physics = C

[State 140, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && numenemy
trigger2 = statetype = C && (enemynear, movetype = A) && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = !(enemynear, statetype = C) && !(enemynear, hitdefattr = C, AA, AP)
statetype = S
physics = S

[State 140, No Walking]
type = assertspecial
triggerall = ctrl
trigger1 = p2dist x >= 0
trigger1 = command != "holdfwd"
trigger2 = p2dist x < 0
trigger2 = command != "holdback"
flag = nowalk

[State 140, End]
type = changestate
trigger1 = !animtime
value = (statetype = C) * 11 + (statetype = A) * 51


;--- STAND GUARD HIT (Shaking) ---
[Statedef 150]
type = S
movetype = H
physics = N
velset = 0, 0

[State 150, Anim]
type = changeanim
trigger1 = 1
value = 150

[State 150, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && p2statetype = C))

[State 150, High to Low]
type = statetypeset
triggerall = statetype = S
trigger1 = !AIlevel
trigger1 = command = "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, statetype = C) || (enemynear, hitdefattr = C, AA, AP)
statetype = C
physics = C

[State 150, Low to High]
type = statetypeset
triggerall = statetype = C
trigger1 = !AIlevel
trigger1 = command != "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = !(enemynear, statetype = C) && !(enemynear, hitdefattr = C, AA, AP)
statetype = S
physics = S


;--- STAND GUARD HIT 2 (Knocked back) ---
[Statedef 151]
type = S
physics = S
movetype = H
anim = 130

[State 151, Vel]
type = hitvelset
trigger1 = !time
x = 1

[State 151, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0

[State 151, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1

[State 151, High to Low]
type = statetypeset
triggerall = statetype = S
trigger1 = !AIlevel
trigger1 = command = "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, statetype = C) || (enemynear, hitdefattr = C, AA, AP)
statetype = C
physics = C

[State 151, Low to High]
type = statetypeset
triggerall = statetype = C
trigger1 = !AIlevel
trigger1 = command != "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = !(enemynear, statetype = C) && !(enemynear, hitdefattr = C, AA, AP)
statetype = S
physics = S

[State 151, End]
type = changestate
trigger1 = hitover
value = 130
ctrl = 1


;--- CROUCH GUARD HIT (Shaking) ---
[Statedef 152]
type = C
physics = N
movetype = H
velset = 0, 0

[State 152, Anim]
type = changeanim
trigger1 = 1
value = 151

[State 152, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && p2statetype = C))

[State 152, High to Low]
type = statetypeset
triggerall = statetype = S
trigger1 = !AIlevel
trigger1 = command = "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, statetype = C) || (enemynear, hitdefattr = C, AA, AP)
statetype = C
physics = C

[State 152, Low to High]
type = statetypeset
triggerall = statetype = C
trigger1 = !AIlevel
trigger1 = command != "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = !(enemynear, statetype = C) && !(enemynear, hitdefattr = C, AA, AP)
statetype = S
physics = S


;--- CROUCH GUARD HIT 2 (Knocked back) ---
[Statedef 153]
type = C
physics = C
movetype = H
anim = 131

[State 153, Vel]
type = hitvelset
trigger1 = !time
x = 1

[State 153, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0

[State 153, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1

[State 153, High to Low]
type = statetypeset
triggerall = statetype = S
trigger1 = !AIlevel
trigger1 = command = "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, statetype = C) || (enemynear, hitdefattr = C, AA, AP)
statetype = C
physics = C

[State 153, Low to High]
type = statetypeset
triggerall = statetype = C
trigger1 = !AIlevel
trigger1 = command != "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = !(enemynear, statetype = C) && !(enemynear, hitdefattr = C, AA, AP)
statetype = S
physics = S

[State 153, End]
type = changestate
trigger1 = hitover
value = 131
ctrl = 1


;--- AIR GUARD HIT (Shaking) ---
[Statedef 154]
type = A
physics = N
movetype = H
velset = 0, 0

[State 154, Anim]
type = changeanim
trigger1 = 1
value = 152

[State 154, End]
type = changestate
trigger1 = hitshakeover
value = 155

;--- AIR GUARD HIT 2 (Knocked away) ---
[Statedef 155]
type = A
physics = N
movetype = H
anim = 132

[State 155, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1

[State 155, Accel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[State 155, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1

[State 155, Var]
type = varset
trigger1 = 1
sysvar(0) = vel y > 0 && (pos y > -vel y)

[State 155, Vel]
type = velset
trigger1 = sysvar(0)
y = 0

[State 155, Pos]
type = posset
trigger1 = sysvar(0)
y = 0

[State 155, End]
type = changestate
triggerall = sysvar(0) && inguarddist
trigger1 = !AIlevel
trigger1 = ifelse(p2dist x < 0, command = "holdfwd", command = "holdback")
trigger2 = AIlevel
value = 130

[State 155, End]
type = changestate
trigger1 = sysvar(0)
value = 52


;====================<LOSE>====================
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0, 0

[State 170, Assert]
type = assertspecial
trigger1 = time < 60
flag = roundnotover

[State 170, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5000, 0
channel = 0
volumescale = 75


;====================<DRAW GAME>====================
[Statedef 175]
type = S
ctrl = 0
velset = 0, 0
[State 175, switch]
type = changestate
trigger1 = !time
value = 170


;====================<CONTINUE?>====================
[Statedef 5500]
type = S
anim = 5300
velset = 0, 0
ctrl = 0
[State 5500, Anim]
type = changeanim
trigger1 = !time
value = 5500


;====================<INITIALIZE>====================
;--- Before Config ---
[Statedef 5900]
type = S

[State 5900, Var Reset]
type = varrangeset
trigger1 = !roundsexisted
value = 0

[State 5900, Var Reset]
type = varrangeset
trigger1 = !roundsexisted
fvalue = 0

[State 5900, Palette]
type = remappal
trigger1 = 1
source = 1, 1
dest = 1, palno

[State 5900, End]
type = changestate
trigger1 = 1
value = 5901


;--- After Config ---
[Statedef 5902]
type = S

[State 5902, Intro VS Terry]
type = changestate
triggerall = numenemy
triggerall = !numpartner && numenemy = 1
triggerall = roundno = 1 || !(enemy, roundsexisted)
trigger1 = enemy, name = "Terry Bogard" || enemy, name = "Terry" || enemy, name = "cvsterry" || enemy, name = "Ultimate Terry"
trigger2 = enemy, name = "Andy Bogard" || enemy, name = "Andy" || enemy, name = "cvsandy"
value = 6910

[State 5902, Intro VS Rock]
type = changestate
triggerall = numenemy
triggerall = !numpartner && numenemy = 1
triggerall = roundno = 1 || !(enemy, roundsexisted)
trigger1 = enemy, name = "Rock Howard" || enemy, name = "cvsrock"
value = 6911

[State 5902, Intro VS Vega]
type = changestate
triggerall = numenemy
triggerall = !numpartner && numenemy = 1
triggerall = !(enemy, roundsexisted)
trigger1 = enemy, name = "Vega" && enemy, authorname = "Phantom.of.the.Server"
trigger2 = enemy, name = "Vega" && enemy, authorname = "Froz"
value = 6912

[State 5902, Turns Intro]
type = changestate
trigger1 = teammode = turns
trigger1 = !roundsexisted && roundno >= 2
value = 6900

[State 5902, Intro]
type = changestate
trigger1 = roundno = 1
value = 190 + (random % 2)
[State 5902, End]
type = changestate
trigger1 = 1
value = 0


;====================<INTRO 1>====================
[Statedef 190]
type = S
physics = S
anim = 190
[State 190, Intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 190, Snd]
type = playsnd
trigger1 = animelem = 2
value = 6, ifelse(random < 500, 5, 6)
channel = 0

[State 190, End]
type = changestate
trigger1 = !animtime
value = 0


;====================<INTRO 2>====================
[Statedef 191]
type = S
physics = S
anim = 191
[State 191, Intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 191, Snd]
type = playsnd
trigger1 = time = 8
value = 6, ifelse(random < 500, 5, 6)
channel = 0

[State 191, Snd]
type = playsnd
trigger1 = animelem = 2
value = 7, 2
[State 191, Coat]
type = helper
trigger1 = animelem = 9
helpertype = normal
stateno = 6000
ID = 6000
name = "Coat"
postype = p1
ownpal = 1

[State 191, End]
type = changestate
trigger1 = !animtime
value = 0


;====================<TURNS INTRO>====================
[Statedef 6900]
type = A
anim = 6900
velset = 0, 0
ctrl = 0

[State 6900, Intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 6900, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 6900, Camera]
type = helper
trigger1 = !numhelper(8999)
helpertype = normal
stateno = 8999
ID = 8999
name = "Camera"
postype = p1

[State 6900, Pos]
type = posset
trigger1 = !time
x = (-320 + abs(pos x)) * facing

[State 6900, Vel]
type = velset
trigger1 = !time
x = (helper(8999), rootdist x) / -40.0
y = -10.25
[State 6900, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 6900, End]
type = changestate
trigger1 = time
trigger1 = vel y > 0 && (pos y > -vel y)
value = 6901


;--- Land ---
[Statedef 6901]
type = S
physics = S
anim = 6901
velset = 0, 0

[State 6901, Intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 6901, Pos]
type = posset
trigger1 = !time
trigger1 = numhelper(8999)
x = ceil(helper(8999), pos x)

[State 6901, Pos]
type = posset
trigger1 = !time
y = 0

[State 6901, Snd]
type = playsnd
trigger1 = animelem = 6
value = 6, 3
channel = 0

[State 6901, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 6901, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 6901, End]
type = changestate
trigger1 = !animtime
value = 0


;====================<INTRO vs TERRY>====================
[Statedef 6910]
type = S
physics = S
anim = 6910
[State 6910, Intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 6910, Snd]
type = playsnd
trigger1 = animelem = 6
value = 6, 14
channel = 0

[State 6910, End]
type = changestate
trigger1 = !animtime
value = 0


;====================<INTRO vs ROCK>====================
[Statedef 6911]
type = S
physics = S
anim = 6911
[State 6911, Intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 6911, Snd]
type = playsnd
trigger1 = animelem = 2
value = 6, 1
channel = 0
[State 6911, Snd]
type = playsnd
trigger1 = animelem = 13
value = 6, 8
channel = 0

[State 6911, End]
type = changestate
trigger1 = !animtime
value = 0


;====================<INTRO vs VEGA>====================
[Statedef 6912]
type = S
physics = S
anim = 6912
[State 6912, Intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 6912, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 1
channel = 0
[State 6912, Snd]
type = playsnd
trigger1 = animelem = 21
value = 6, 7
channel = 0

[State 6912, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 9
value = 7, 0
[State 6912, Reppuken]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 6010
ID = 6010
name = "Reppuken Intro"
postype = p1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 6912, End]
type = changestate
trigger1 = !animtime
value = 0


;====================<WIN POSE DECIDER>====================
[Statedef 180]
type = S

[State 180, Quote]
type = victoryquote
trigger1 = 1
value = 1 + (random % 6)

[State 180, Nightmare]
type = changestate
triggerall = numenemy
triggerall = matchover || (enemy, teammode = turns)
trigger1 = enemy, name = "Terry Bogard" || enemy, name = "Terry" || enemy, name = "cvsterry" || enemy, name = "Ultimate Terry"
trigger2 = enemy, name = "Rock Howard" || enemy, name = "cvsrock"
trigger3 = enemy, name = "Andy Bogard" || enemy, name = "Andy" || enemy, name = "cvsandy"
trigger4 = enemy, name = "Joe Higashi" || enemy, name = "cvsjoe" || enemy, name = "Ultimate Joe"
trigger5 = enemy, name = "Kim Kaphwan" || enemy, name = "cvskim"
trigger6 = enemy, name = "Mai Shiranui" || enemy, name = "cvsmai"
value = 6913

[State 180, win]
type = changestate
trigger1 = command = "/x" || command = "/y" || command = "/z"
value = ifelse(command = "/z", 183, ifelse(command = "/y", 182, 181))

[State 180, win]
type = changestate
trigger1 = command = "/a" || command = "/b" || command = "/c"
value = ifelse(command = "/c", 183, ifelse(command = "/b", 182, 184))

[State 180, win]
type = changestate
trigger1 = command = "/s"
value = 6913

[State 180, win]
type = changestate
trigger1 = 1
value = 181 + (random % 4)


;====================<WIN 1>====================
[Statedef 181]
type = S
physics = S
anim = 181
ctrl = 0

[State 181, Assert]
type = assertspecial
trigger1 = time < 60
flag = roundnotover

[State 181, Snd]
type = playsnd
trigger1 = animelem = 6
value = 6, 1
channel = 0


;====================<WIN 2>====================
[Statedef 182]
type = S
physics = S
anim = 182
ctrl = 0

[State 182, Assert]
type = assertspecial
trigger1 = time < 60
flag = roundnotover

[State 182, Snd]
type = playsnd
trigger1 = animelem = 8
value = 1, 2
channel = 1
volumescale = 67

[State 182, Snd]
type = playsnd
trigger1 = animelem = 13
value = 6, 0
channel = 0


;====================<WIN 3>====================
[Statedef 183]
type = S
physics = S
anim = 183
ctrl = 0

[State 183, Assert]
type = assertspecial
trigger1 = time < 60
flag = roundnotover

[State 183, Snd]
type = playsnd
trigger1 = animelem = 8
value = 1, 2
channel = 1
volumescale = 67


;====================<WIN 4>====================
[Statedef 184]
type = S
physics = S
anim = 184
ctrl = 0
[State 184, Assert]
type = assertspecial
trigger1 = time < 60
flag = roundnotover

[State 184, Snd]
type = playsnd
trigger1 = animelem = 2
value = 6, 9
channel = 0


;====================<WIN NIGHTMARE>====================
[Statedef 6913]
type = S
physics = S
anim = 6913
ctrl = 0
[State 6913, Assert]
type = assertspecial
trigger1 = time < 60
flag = roundnotover

[State 6913, Snd]
type = playsnd
trigger1 = animelem = 2
value = 6, 13
channel = 0


;====================<TAUNT>====================
[Statedef 195]
type = S
physics = S
movetype = I
anim = 195
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 195, Snd]
type = playsnd
trigger1 = animelem = 2
value = 6, ifelse(random < 500, 3, 4)
channel = 0

[State 195, Snd]
type = playsnd
trigger1 = animelem = 6 || animelem = 10
value = 1, 0
channel = 1
volumescale = 50

[State 195, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;====================<K.O.>====================
[Statedef 5150]
type = L
movetype = H
physics = N
sprpriority = -3

[State 5150, Anim]
type = changeanim
trigger1 = !time
value = 5150

[State 5150, Anim]
type = changeanim
trigger1 = anim != 5140
trigger1 = roundstate = 4
trigger1 = teammode != turns
trigger1 = !matchover
value = 5140

[State 5150, Anim]
type = turn
trigger1 = anim = 5140 && animelem = 5
trigger1 = p2dist x < 0
persistent = 0

[State 5150, Sound]
type = playsnd
trigger1 = anim = 5140 && animelem = 5
value = 6, 2
channel = 0
persistent = 0

[State 5150, Vel]
type = velmul
trigger1 = 1
x = 0.85
[State 5150, Vel]
type = velset
trigger1 = abs(vel x) < 0.05
x = 0

[State 5150, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1


;====================<CHEAP K.O.>====================
[Statedef 5950]
type = S
movetype = H
physics = S
anim = 5950
velset = 0, 0

[State 5950, NHB]
type = nothitby
trigger1 = 1
value = SCA
[State 5950, Pos]
type = posset
trigger1 = 1
y = 0

[State 5950, KO Snd]
type = assertspecial
trigger1 = 1
flag = nokosnd
[State 5950, KO Snd]
type = stopsnd
trigger1 = !time
trigger1 = !alive
channel = 0
[State 5950, KO Snd]
type = playsnd
trigger1 = animelem = 2 && !alive
value = 11, 1

[State 5981, Snd]
type = playsnd
trigger1 = animelem = 12
value = F7, 0
[State 5981, FX]
type = explod
trigger1 = animelem = 12
anim = F60
postype = p1
pos = 0, 0
sprpriority = -10

[State 5950, End]
type = changestate
trigger1 = !animtime
value = ifelse(alive, 5110, 5150)


;========================<TARGET AIR RESET>========================
[Statedef 1115040]
type = A
physics = N
movetype = H
velset = 0, 0

[State 1115040, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = gethitvar(hitshaketime) + ceil((-gethitvar(yvel) + ((gethitvar(yvel) ** 2) - 4 * (0.5 * gethitvar(yaccel)) * (pos y)) ** 0.5) / gethitvar(yaccel)) + 2

[State 1115040, End]
type = selfstate
trigger1 = 1
value = 5020


;==================================================================================================
;===========================================<STATE -2>=============================================
;==================================================================================================
[Statedef -2]

[State -2, Hit Detection]
type = varset
trigger1 = movecontact = 1 && var(30) < 0
var(30) = hitpausetime
ignorehitpause = 1

[State -2, HitSound]
type = playsnd
trigger1 = movecontact = 1 && var(30) = hitpausetime
trigger1 = movehit = 1 && var(31) >= 0
value = 2, var(31)
channel = 2
ignorehitpause = 1

[State -2, GuardSound]
type = playsnd
trigger1 = movecontact = 1 && var(30) = hitpausetime
trigger1 = moveguarded = 1 && var(32) >= 0
value = 3, var(32)
channel = 2
ignorehitpause = 1

[State -2, Sparks Custom]
type = helper
triggerall = map(mysparks)
triggerall = movecontact = 1 && var(30) = hitpausetime
trigger1 = movehit = 1
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014
trigger2 = moveguarded = 1
trigger2 = var(34) = 8000 || var(34) = 8001
helpertype = normal
stateno = ifelse(moveguarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = p1
facing = ifelse(p2dist x < 0, -1, 1)
pos = ceil(cond(p2dist x > (var(36) * const(size.xscale)), (var(36) * const(size.xscale)), cond(p2dist x > (var(35) * const(size.xscale)), p2dist x, (var(35) * const(size.xscale))))), ceil(var(37) * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Sparks Screenpack]
type = explod
triggerall = !map(mysparks)
triggerall = movecontact = 1 && var(30) = hitpausetime
trigger1 = movehit = 1
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014
trigger2 = moveguarded = 1
trigger2 = var(34) = 8000 || var(34) = 8001
anim = Fifelse(moveguarded, 40, ifelse(var(33) = 8014, 3, ifelse(var(33) = 8012 || var(33) = 8013, 2, ifelse(var(33) = 8011, 1, 0))))
ID = 8000
postype = p1
facing = ifelse(p2dist x < 0, -1, 1)
pos = ceil(cond(p2dist x > (var(36) * const(size.xscale)), (var(36) * const(size.xscale)), cond(p2dist x > (var(35) * const(size.xscale)), p2dist x, (var(35) * const(size.xscale))))), ceil(var(37) * const(size.yscale))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State -2, Counter FX]
type = helper
trigger1 = movehit = 1
trigger1 = movecountered = 1
trigger1 = map(counterhit)
trigger1 = var(30) = hitpausetime
trigger1 = hitdefattr != SCA, AT
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p1
pos = ceil(cond(p2dist x > (var(36) * const(size.xscale)), (var(36) * const(size.xscale)), cond(p2dist x > (var(35) * const(size.xscale)), p2dist x, (var(35) * const(size.xscale))))), ceil(var(37) * const(size.yscale))
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -2, Counter Flag]
type = mapset
trigger1 = numenemy
map = "counterhit"
value = (enemynear, movetype = A)
ignorehitpause = 1

[State -2, Hit Detection]
type = varset
trigger1 = 1
var(30) = -1
[State -2, Hit Detection]
type = varrangeset
trigger1 = movetype = I
trigger2 = movetype = H && time
first = 30
last = 37
value = -1
ignorehitpause = 1

[State -2, P2 Facing]
type = targetfacing
triggerall = movecontact = 1 && numtarget
triggerall = !(target, hitfall) && (target, time <= 1)
trigger1 = !(target, hitshakeover)
trigger2 = target, stateno = [150, 155]
value = ifelse(p2dist x >= 0, -1, 1)
ignorehitpause = 1

[State -2, P2 Air Reset]
type = targetstate
trigger1 = numtarget = 1
trigger1 = target, stateno = 5020
trigger1 = target, prevstateno != 1115040
trigger1 = target, alive && !(target, hitfall)
value = 1115040
ignorehitpause = 1

[State -2, P2 Air Reset Trip Guard]
redirectID = enemynear, ID
type = ctrlset
trigger1 = numenemy
trigger1 = enemynear, ctrl = 0
trigger1 = enemynear, stateno = 52
trigger1 = enemynear, prevstateno = [5000, 5999];5040 really
value = 1
ignorehitpause = 1

[State -2, P2 Safe Fall]
redirectID = enemynear, ID
type = selfstate
trigger1 = numenemy
;trigger1 = enemynear, command = "recovery";currently broken in Ikemen
trigger1 = (enemynear, command = "x" + enemynear, command = "y" + enemynear, command = "z") >= 2 || (enemynear, command = "$D")
trigger1 = (enemynear, stateno = [5030, 5050]) || (enemynear, incustomstate)
trigger1 = enemynear, pos y >= enemynear, const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = enemynear, gethitvar(isbound) = 0
trigger1 = enemynear, vel y > 0
trigger1 = enemynear, hitfall
trigger1 = enemynear, movetype = H
trigger1 = enemynear, statetype = A
trigger1 = enemynear, gethitvar(fall.recover)
trigger1 = enemynear, dizzy = 0
trigger1 = enemynear, alive
value = 5200
ignorehitpause = 1

[State -2, Juggle Increase]
type = varadd
trigger1 = movehit = 1
trigger1 = !(hitdefattr = SCA, AT)
trigger1 = numenemy
trigger1 = enemynear, hitfall
trigger1 = enemynear, statetype = A || enemynear, statetype = L
var(15) = 1

[State -2, Juggle Reset Single]
type = varset
triggerall = numenemy = 1 && var(15)
trigger1 = (enemy, statetype != A) && (enemy, stateno != 5080) && (enemy, time >= 1)
trigger2 = (enemy, movetype != H) || (enemy, stateno = [120, 155]) || (enemy, ctrl) || !(enemy, hitfall)
var(15) = 0
ignorehitpause = 1

[State -2, Juggle Reset Simul]
type = varset
triggerall = numenemy >= 2 && var(15)
trigger1 = (enemynear(0), statetype != A) && (enemynear(0), stateno != 5080) && (enemynear(0), time >= 1)
trigger1 = (((enemynear(0), pos x) - pos x) * facing) >= 0
trigger2 = (enemynear(0), movetype != H) || (enemynear(0), stateno = [120, 155]) || (enemynear(0), ctrl) || !(enemynear(0), hitfall)
trigger2 = (((enemynear(0), pos x) - pos x) * facing) >= 0
trigger3 = (enemynear(1), statetype != A) && (enemynear(1), stateno != 5080) && (enemynear(1), time >= 1)
trigger3 = (((enemynear(1), pos x) - pos x) * facing) = [0, 160]
trigger4 = (enemynear(1), movetype != H) || (enemynear(1), stateno = [120, 155]) || (enemynear(1), ctrl) || !(enemynear(1), hitfall)
trigger4 = (((enemynear(1), pos x) - pos x) * facing) = [0, 160]
var(15) = 0
ignorehitpause = 1

[State -2, Free Juggling]
type = varset
trigger1 = roundstate != 2
var(15) = 0
ignorehitpause = 1

[State -2, Custom Combo End]
type = varset
triggerall = var(20) != 0
trigger1 = var(20) < 0
trigger2 = standby
trigger3 = movetype = H
trigger4 = roundstate != 2
trigger5 = (stateno = [3000, 4999])
var(20) = 0
ignorehitpause = 1

[State -2, Custom Combo Time]
type = varadd
trigger1 = var(20) > 0
var(20) = -1
ignorehitpause = 1

[State -2, Custom Combo Asserts]
type = assertspecial
trigger1 = var(20) > 0
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard
ignorehitpause = 1

[State -2, Custom Combo PalFX]
type = palfx
trigger1 = var(20) > 60
time = 2
add = 24 + ceil(sin(var(20) / 16.0 * pi) * 24), 24 + ceil(sin(var(20) / 16.0 * pi) * 24), 24 + ceil(sin(var(20) / 16.0 * pi) * 24)
ignorehitpause = 1
[State -2, Custom Combo PalFX]
type = palfx
trigger1 = var(20) = [1, 60]
trigger1 = !(gametime % 4)
time = 2
add = 0, 96, 256
ignorehitpause = 1

[State -2, Dizzy Off - Reset];placeholder until dizzy points are individually specified or you can turn them off altogether
type = mapset
trigger1 = 1
map = "dizzyoff"
value = 0
ignorehitpause = 1

[State -2, Dizzy Off - Check Conditions]
type = mapset
trigger1 = var(20)
map = "dizzyoff"
value = 1
ignorehitpause = 1

[State -2, Dizzy Off - Save Points]
type = mapset
trigger1 = !map(dizzyoff)
map = "dizzysave"
value = enemynear, dizzypoints
ignorehitpause = 1

[State -2, Dizzy Off - Save Points]
type = mapset
trigger1 = map(dizzyoff)
trigger1 = map(dizzysave) < enemynear, dizzypoints
map = "dizzysave"
value = enemynear, dizzypoints
ignorehitpause = 1

[State -2, Dizzy Off - Freeze Points]
redirectID = enemynear, ID
type = dizzypointsset
trigger1 = map(dizzyoff)
trigger1 = numenemy
trigger1 = (enemynear, dizzypoints) < map(dizzysave)
value = map(dizzysave)
ignorehitpause = 1

[State -2, Dizzy Off - Freeze Points]
redirectID = enemynear, ID
type = dizzypointsset
trigger1 = map(dizzyoff)
trigger1 = numenemy
trigger1 = enemynear, dizzypoints <= 0
value = enemynear, dizzypointsmax
ignorehitpause = 1

[State -2, Unthrowable Flag]
type = mapadd
trigger1 = map(unthrowable) > 0
trigger1 = numenemy
trigger1 = enemynear, stateno != 52 || enemynear, ctrl || enemynear, time >= 6
map = "unthrowable"
value = -1
ignorehitpause = 1

[State -2, Unthrowable Flag - Jump Start]
type = mapset
trigger1 = numenemy
trigger1 = enemynear, stateno = 40
trigger1 = enemynear, anim != [0, 29]
map = "unthrowable"
value = 1
ignorehitpause = 1

[State -2, Unthrowable Flag - Hurt]
type = mapset
triggerall = numenemy
triggerall = enemynear, anim != 5300
triggerall = enemynear, stateno != const(statedizzy)
trigger1 = enemynear, stateno = [150, 155]
trigger2 = enemynear, stateno = 51
trigger2 = enemynear, prevstateno = [140, 155]
trigger3 = enemynear, stateno = 5040
trigger4 = enemynear, stateno = 5120;just in case
trigger5 = enemynear, stateno = [5200, 5201]
trigger6 = !var(20) && !var(21) && !var(22)
trigger6 = enemynear, movetype = H
trigger6 = enemynear, statetype != A
trigger7 = enemynear, movetype = H
trigger7 = enemynear, statetype = A
trigger7 = enemynear, hitfall = 0
map = "unthrowable"
value = 3
ignorehitpause = 1

[State -2, Damage Scaling - Reset]
type = varset
trigger1 = numenemy
trigger1 = enemynear, movetype != H
trigger1 = enemynear, dizzy = 0
trigger1 = enemynear, stateno != enemynear, const(statedizzy)
var(42) = 0 + (var(43) := 0)
ignorehitpause = 1

[State -2, Damage Scaling - Attack Connected Flag]
type = varset
trigger1 = movecontact = 1
trigger1 = hitcount <= 1
var(43) = 1
ignorehitpause = 1

[State -2, Damage Scaling - Base Formula]
type = varset
trigger1 = 1
fvar(10) = ifelse(var(42) <= 0, 1, ifelse(var(42) >= 9, 0.1, 1 - 0.1 * var(42)))
ignorehitpause = 1

[State -2, Damage Scaling - Custom Combos]
type = varset
trigger1 = var(20)
trigger1 = numenemy
fvar(10) = ifelse((enemynear, receiveddamage) <= 0, 1.0, ifelse((enemynear, receiveddamage) >= 350, 0.1, 1 - ((enemynear, receiveddamage) * 0.00257)))
ignorehitpause = 1

[State -2, Damage Scaling - Override Fall Defense Bonus]
type = varset
trigger1 = numenemy = 1
trigger1 = enemynear, gethitvar(fallcount) >= 1
trigger1 = enemynear, const(data.fall.defence_mul) = 1.50;default
fvar(10) = fvar(10) / ((2.0 / 3.0) ** enemynear, gethitvar(fallcount))
ignorehitpause = 1

[State -2, Damage Scaling - Add Guts]
type = varset
trigger1 = numenemy
trigger1 = enemynear, receiveddamage >= (enemynear, lifemax * 0.50)
fvar(10) = fvar(10) * ifelse(enemynear, receiveddamage >= (enemynear, lifemax * 0.85), 0.75, ifelse(enemynear, receiveddamage >= (enemynear, lifemax * 0.70), 0.90, 0.95))
ignorehitpause = 1

[State -2, Damage Scaling - Root Multiplier]
type = attackmulset
trigger1 = 1
value = fvar(10) * ifelse(map(counterhit), 1.2, 1)
ignorehitpause = 1

[State -2, Drop Target]
type = targetdrop
triggerall = numtarget = 1
trigger1 = target, stateno = 5040
trigger2 = target, stateno = [5200, 5210]
ignorehitpause = 1

[State -2, Dizzy Voice]
type = playsnd
trigger1 = time = 1
trigger1 = anim = 5300
value = 5000, 0
channel = 0

[State -2, Voice Pos]
type = sndpan
trigger1 = 1
channel = 0
pan = 0
ignorehitpause = 1

[State -2, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Damage = %.1f%% Juggle = %d Unthrowable = %d"
params = fvar(10) * 100, var(15), (map(unthrowable) != 0)
ignorehitpause = 1

[State -2, Debug]
type = appendtoclipboard
trigger1 = 1
text = "\nBy PotS - https://network.mugenguild.com/pots/"
ignorehitpause = 1


;==================================================================================================
;===========================================<STATE -3>=============================================
;==================================================================================================
[Statedef -3]

[State -3, Turning Threshold]
type = assertspecial
trigger1 = roundstate = 2
trigger1 = backedgebodydist > 0
trigger1 = p2dist x >= -const(size.ground.back)
flag = noautoturn

[State -3, Infinite Prevention]
redirectID = enemynear, ID
type = hitfallset
trigger1 = numenemy
trigger1 = teammode != simul
trigger1 = enemynear, hitfall = 0
trigger1 = enemynear, movetype = H
trigger1 = enemynear, statetype != A
trigger1 = enemynear, gethitvar(hitcount) >= 50
trigger1 = stateno != [3000, 4999]
trigger1 = !var(20)
value = 1
ignorehitpause = 1

[State -3, Unguardable Freeze]
type = assertspecial
triggerall = movetype = A
triggerall = !movecontact && !numtarget
triggerall = var(20) || stateno = 3100
trigger1 = numenemy >= 1
trigger1 = enemynear(0), time <= 0
trigger1 = enemynear(0), stateno = 120
trigger1 = enemynear(0), anim != [120, 155]
trigger2 = numenemy >= 2
trigger2 = enemynear(0), time <= 0 && enemynear(1), time <= 0
trigger2 = enemynear(0), stateno = 120 && enemynear(1), stateno = 120
trigger2 = (enemynear(0), anim != [120, 155]) && (enemynear(1), anim != [120, 155])
flag = unguardable

[State -3, ProjContact Reset]
type = varset
triggerall = var(18)
trigger1 = (stateno != [1000, 1030]) && (stateno != [1300, 1301]) && (stateno != [3001, 3002])
trigger1 = (stateno != [3051, 3052]) && stateno != 3300 && (stateno != [3350, 3351]) && stateno != 3420
trigger2 = (stateno = [1000, 1030]) && animelemtime(4) < 0
trigger3 = stateno = 1300 && animelemtime(5) < 0
trigger4 = (stateno = 1320 || stateno = 1321) && animelemtime(3) < 0
trigger5 = stateno = 3300 && animelemtime(3) < 0
trigger6 = stateno = 3350 && animelemtime(3) < 0
trigger7 = stateno = 3420 && animelemtime(7) < 0
var(18) = 0

[State -3, ProjContact Timer]
type = varadd
trigger1 = var(18)
var(18) = 1

[State -3, Projectile Flag]
type = mapset
trigger1 = 1
map = "projflag"
value = 0
ignorehitpause = 1

[State -3, Projectile Flag]
type = mapset
triggerall = var(20) <= 0
triggerall = map(projflag) != 1
trigger1 = stateno != 1000 && numhelper(1005)
trigger1 = helper(1005), stateno = 1005
trigger2 = stateno != 1010 && numhelper(1015)
trigger2 = helper(1015), stateno = 1015
trigger3 = stateno != 1010 && numhelper(1020)
trigger3 = helper(1020), stateno = 1020
trigger4 = stateno != 1030 && numhelper(1035)
trigger4 = helper(1035), stateno = [1035, 1037]
trigger5 = stateno != 1300 && numhelper(1305)
trigger5 = helper(1305), stateno = 1305
trigger6 = stateno != 1320 && stateno != 1321 && numhelper(1325)
trigger6 = helper(1325), stateno = 1325
trigger7 = stateno != 3420 && numhelper(3425)
trigger7 = helper(3425), stateno = 3425
map = "projflag"
value = 1
ignorehitpause = 1

[State -3, Cancel into Normals Reset]
type = varset
trigger1 = movetype = H
trigger2 = movereversed != [1, 2]
var(4) = 0
ignorehitpause = 1
[State -3, Cancel into Normals Check]
type = varset
triggerall = var(20)
trigger1 = var(20) && (stateno = [200, 699]) && (movecontact + movereversed)
trigger2 = var(20) && (stateno = [1000, 2999]) && statetype != A && ((movecontact + movereversed) || var(18))
trigger3 = var(20) && stateno = 1210 && animelemtime(8) >= 0
trigger4 = var(20) && stateno = 1230 && animelemtime(12) >= 0
trigger5 = var(20) && stateno = 1250 && animelemtime(9) >= 0
var(4) = 1
ignorehitpause = 1

[State -3, Command Cancel Reset]
type = varset
trigger1 = movetype = H
trigger2 = movereversed != [1, 2]
var(5) = 0
ignorehitpause = 1
[State -3, Command Cancel Check]
type = varset
triggerall = !var(20)
triggerall = stateno = [200, 499]
trigger1 = stateno = 200
trigger1 = (movecontact + movereversed)
trigger2 = stateno = 210
trigger2 = (movecontact + movereversed) && animelemtime(5) < 0
trigger3 = stateno = 211
trigger3 = (movecontact + movereversed) && animelemtime(5) < 0
trigger4 = stateno = 221
trigger4 = (movecontact + movereversed) && animelemtime(6) < 0
trigger5 = stateno = 226
trigger5 = animelemtime(7) < 0 && (movecontact + movereversed)
trigger6 = stateno = 231
trigger6 = (movecontact + movereversed)
trigger7 = stateno = 241
trigger7 = (movecontact + movereversed) && animelemtime(4) < 0
trigger8 = stateno = 251
trigger8 = (movecontact + movereversed) && animelemtime(6) < 0
trigger9 = stateno = 400
trigger9 = (movecontact + movereversed)
trigger10 = stateno = 420
trigger10 = (movecontact + movereversed) && animelemtime(4) < 0
trigger11 = stateno = 430
trigger11 = (movecontact + movereversed) && animelemtime(4) < 0
trigger12 = stateno = 440
trigger12 = (movecontact + movereversed) && animelemtime(5) < 0
trigger13 = stateno = 450
trigger13 = (movecontact + movereversed) && animelemtime(4) < 0
var(5) = 1
ignorehitpause = 1

[State -3, Cancel Reset]
type = varset
trigger1 = movetype = H
trigger2 = movereversed != [1, 2]
var(6) = 0
ignorehitpause = 1
[State -3, Cancel Check]
type = varset
triggerall = stateno = [200, 2999]
trigger1 = var(20) && (stateno = [200, 699])
trigger2 = var(20) && (stateno = [1000, 2999]) && ((movecontact + movereversed) || var(18))
trigger3 = (stateno = [200, 699]) && time <= 2 && !AIlevel
trigger3 = prevstateno != [200, 699]
trigger4 = stateno = 200
trigger5 = stateno = 210
trigger5 = animelemtime(5) < 0 && (movecontact + movereversed)
trigger6 = stateno = 211
trigger6 = animelemtime(5) < 0 && (movecontact + movereversed)
trigger7 = stateno = 221
trigger7 = animelemtime(6) < 0 && (movecontact + movereversed)
trigger8 = stateno = 226
trigger8 = animelemtime(7) < 0 && (movecontact + movereversed)
trigger9 = stateno = 231
trigger10 = stateno = 241
trigger10 = animelemtime(4) < 0 && (movecontact + movereversed)
trigger11 = stateno = 251
trigger11 = animelemtime(6) < 0 && (movecontact + movereversed)
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger13 = animelemtime(4) < 0 && (movecontact + movereversed)
trigger14 = stateno = 430
trigger14 = animelemtime(4) < 0 && (movecontact + movereversed)
trigger15 = stateno = 440
trigger15 = animelemtime(5) < 0 && (movecontact + movereversed)
trigger16 = stateno = 450
trigger16 = animelemtime(4) < 0 && (movecontact + movereversed)
trigger17 = stateno = 1210
trigger17 = var(20) && animelemtime(8) >= 0
trigger18 = stateno = 1230
trigger18 = var(20) && animelemtime(12) >= 0
trigger19 = stateno = 1250
trigger19 = var(20) && animelemtime(9) >= 0
var(6) = 1
ignorehitpause = 1

[State -3, Super Cancel Reset]
type = varset
trigger1 = movetype = H
trigger2 = movereversed != [1, 2]
var(7) = 0
ignorehitpause = 1
[State -3, Super Cancel Check]
type = varset
triggerall = stateno = [200, 2999]
trigger1 = var(6)
trigger2 = stateno = 230
trigger2 = animelemtime(4) < 0 && (movecontact + movereversed)
trigger3 = stateno = 410
trigger3 = animelemtime(6) < 0 && (movecontact + movereversed)
trigger4 = stateno = 420
trigger4 = animelemtime(6) < 0 && (movecontact + movereversed)
trigger5 = stateno = 1000 && var(18)
trigger6 = stateno = 1010 && var(18)
trigger7 = stateno = 1030 && var(18)
trigger8 = stateno = 1110 && animelemtime(9) < 0 
trigger8 = (movecontact + movereversed) = [1, 8]
trigger9 = stateno = 1140 && animelemtime(8) < 0
trigger9 = (movecontact + movereversed) = [1, 8]
trigger10 = stateno = 1210 && animelemtime(8) >= 0
trigger11 = stateno = 1230 && animelemtime(12) >= 0
trigger12 = stateno = 1250 && animelemtime(9) >= 0
trigger13 = (stateno = 1400 || stateno = 1420) && animelemtime(6) < 0
trigger13 = (movecontact + movereversed) = [1, 8]
var(7) = 1
ignorehitpause = 1

[State -3, Hyper Cancel Reset]
type = varset
trigger1 = movetype = H
trigger2 = movereversed != [1, 2]
var(8) = 0
ignorehitpause = 1
[State -3, Hyper Cancel Check]
type = varset
trigger1 = stateno = 3300
trigger1 = animelemtime(3) >= 0 && animelemtime(17) < 0 && var(18)
var(8) = 1
ignorehitpause = 1

[State -3, Super Cancel Flag Reset]
type = varset
trigger1 = var(21)
trigger1 = (stateno != [3000, 4999]) || movetype = H
var(21) = 0
ignorehitpause = 1
[State -3, Hyper Cancel Flag Reset]
type = varset
trigger1 = var(22)
trigger1 = (stateno != [3000, 4999]) || movetype = H
var(22) = 0
ignorehitpause = 1

[State -3, Parry Detection]
type = helper
triggerall = roundstate = 2
triggerall = !numhelper(765) && !var(20)
triggerall = (movetype = I && ctrl) || (stateno = [760, 762]) || stateno = 5120
trigger1 = !AIlevel
trigger1 = command != "rlsdir"
trigger1 = statetype = S || statetype = C || stateno = 5120
trigger1 = (p2dist x >= 0 && command = "F") || (p2dist x < 0 && command = "B") || (command = "D")
trigger2 = !AIlevel
trigger2 = command != "rlsdir"
trigger2 = statetype = A
trigger2 = var(3) != 1 && var(3) != 2
trigger2 = (p2dist x >= 0 && command = "F") || (p2dist x < 0 && command = "B")
trigger3 = AIlevel
trigger3 = inguarddist
trigger3 = stateno != [760, 762]
trigger3 = random < (50 * (AIlevel ** 2 / 64.0))
trigger4 = AIlevel
trigger4 = stateno = [760, 762]
trigger4 = time = 14 && random < 667
helpertype = normal
stateno = 765
ID = 765
name = "Parry Detection"
postype = p1
pausemovetime = 65535
supermovetime = 65535

[State -3, Parry Attacks]
type = changestate
trigger1 = (stateno != [760, 762]) && numhelper(765)
trigger1 = helper(765), stateno = 766
value = ifelse((helper(765), anim = 767), 762, ifelse((helper(765), anim = 766), 761, 760))
ignorehitpause = 1
[State -3, Parry Projectiles]
type = hitoverride
trigger1 = (stateno != [760, 762]) && numhelper(765)
trigger1 = !(helper(765), var(0)) && (helper(765), anim = 765)
attr = SA, AP
stateno = 760
slot = 0
time = 1
ignorehitpause = 1
[State -3, Parry Projectiles]
type = hitoverride
trigger1 = (stateno != [760, 762]) && numhelper(765)
trigger1 = !(helper(765), var(0)) && (helper(765), anim = 766)
attr = C, AP
stateno = 761
slot = 0
time = 1
ignorehitpause = 1
[State -3, Parry Projectiles]
type = hitoverride
trigger1 = (stateno != [760, 762]) && numhelper(765)
trigger1 = !(helper(765), var(0)) && (helper(765), anim = 767)
attr = SCA, AP
stateno = 762
slot = 0
time = 1
ignorehitpause = 1

[State -3, NoWalk after Parry]
type = assertspecial
trigger1 = map(parrynowalk) > 0
flag = nowalk

[State -3, NoWalk after Parry]
type = mapadd
trigger1 = map(parrynowalk) > 0
map = "parrynowalk"
value = -1

[State -3, Scary Supers]
type = attackdist
trigger1 = stateno = [3000, 4999]
value = 320

[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0
[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = numtarget
trigger1 = target, Hitover || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5) = 0
[State -3, Corner Push]
type = varset
trigger1 = movecontact = 1 && numtarget
fvar(5) = target, gethitvar(xvel)
ignorehitpause = 1
[State -3, Corner Push]
type = posadd
triggerall = fvar(5)
triggerall = numtarget
triggerall = !hitpausetime && target, gethitvar(hitshaketime) <= 0
triggerall = (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall)
trigger1 = target, frontedgebodydist <= abs(target, vel x)
trigger1 = (target, gethitvar(xvel) * target, facing) > 0
trigger2 = target, backedgebodydist <= abs(target, vel x)
trigger2 = (target, gethitvar(xvel) * target, facing) < 0
x = ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)
[State -3, Corner Push]
type = varset
trigger1 = numtarget
trigger1 = target, gethitvar(hitshaketime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, ExFX]
type = varadd
trigger1 = var(25) > 0
var(25) = -1
[State -3, ExFX]
type = varset
trigger1 = (stateno != [1000, 2999]) || movetype = H
var(25) = 0
[State -3, Ex Flash]
type = palfx
trigger1 = time >= 0
trigger1 = !(gametime % 2) && var(25)
time = 1
color = 0
mul = 256, 224, 0
add = 128, 128, 128
ignorehitpause = 1

[State -3, Movement Afterimage]
type = afterimage
triggerall = time = 1 && !var(20)
trigger1 = stateno = 50 && (var(3) = 2 || var(3) = 3)
trigger2 = (stateno = [700, 715])
time = 2
timegap = 1
framegap = 4
length = 9
palbright = 0, 0, 0
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.9, 0.9, 0.9
trans = add1

[State -3, Lv1 Super Afterimage]
type = afterimage
trigger1 = stateno = 3000 && time = 3
trigger2 = stateno = 3200 && time = 3
trigger3 = stateno = 3300 && time = 4
time = 2
timegap = 1
framegap = 10
length = 21
palcolor = 0
palbright = 0, 0, 0
palcontrast = 0, 64, 192
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add1

[State -3, Lv2 Super Afterimage]
type = afterimage
trigger1 = stateno = 3050 && time = 3
trigger2 = stateno = 3250 && time = 3
trigger3 = stateno = 3350 && time = 4
time = 2
timegap = 1
framegap = 10
length = 21
palcolor = 0
palbright = 0, 0, 0
palcontrast = 128, 0, 192
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add1

[State -3, Lv3 Super Afterimage]
type = afterimage
trigger1 = stateno = 3100 && time = 3
trigger2 = stateno = 3400 && time = 3
time = 2
timegap = 1
framegap = 10
length = 21
palcolor = 0
palbright = 0, 0, 0
palcontrast = 192, 0, 0
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add1

[State -3, Afterimage Persist]
type = afterimagetime
trigger1 = stateno = 50 || (stateno = [600, 699])
trigger1 = (var(3) = 2 || var(3) = 3) && vel y < -1
trigger2 = var(20)
trigger3 = stateno = [700, 715]
trigger4 = (stateno = [3000, 4999])
time = 2
ignorehitpause = 1

[State -3, Afterimage Off]
type = afterimagetime
triggerall = time <= 1
trigger1 = stateno = 3000 || stateno = 3050 || stateno = 3100 || stateno = 3200 || stateno = 3250
trigger2 = stateno = 3300 || stateno = 3350 || stateno = 3400
time = 0
ignorehitpause = 1

[State -3, Underground Juggling - OTG only]
redirectID = enemynear, ID
type = statetypeset
trigger1 = !(teammode = simul)
trigger1 = numenemy
trigger1 = enemynear, movetype = H
trigger1 = enemynear, statetype = A
trigger1 = enemynear, pos y > 0
trigger1 = enemynear, vel y > 0
trigger1 = (enemynear, stateno = [5020, 5109]) || (enemynear, incustomstate)
statetype = L
ignorehitpause = 1

[State -3, Underground Juggling - Fix Position]
redirectID = enemynear, ID
type = posset
trigger1 = numenemy
trigger1 = enemynear, pos y > 0
trigger1 = enemynear, time <= 0
trigger1 = enemynear, movetype = H
trigger1 = !(enemynear, hitshakeover)
y = 0
ignorehitpause = 1

[State -3, Jump Reset]
type = varset
trigger1 = var(3)
trigger1 = stateno != 40 && statetype != A
var(3) = 0

[State -3, Force Crossup]
type = width
trigger1 = p2statetype != L
trigger1 = statetype = A && var(3) = 3
edge = -2, 0
ignorehitpause = 1

[State -3, Shin P2BodyDist X]
type = mapset
trigger1 = numenemy
trigger1 = p2dist x <= (const(size.ground.front) + ifelse(enemynear, facing != facing, enemynear, const(size.ground.front), enemynear, const(size.ground.back)))
trigger1 = p2dist x >= (-const(size.ground.back) - ifelse(enemynear, facing != facing, enemynear, const(size.ground.back), enemynear, const(size.ground.front)))
map = "p2bodydistx"
value = 0
ignorehitpause = 1
[State -3, Shin P2BodyDist X]
type = mapset
trigger1 = numenemy
trigger1 = p2dist x > 0
trigger1 = p2dist x > (const(size.ground.front) + ifelse(enemynear, facing != facing, enemynear, const(size.ground.front), enemynear, const(size.ground.back)))
map = "p2bodydistx"
value = p2dist x - (const(size.ground.front) + ifelse(enemynear, facing != facing, enemynear, const(size.ground.front), enemynear, const(size.ground.back)))
ignorehitpause = 1
[State -3, Shin P2BodyDist X]
type = mapset
trigger1 = numenemy
trigger1 = p2dist x < 0
trigger1 = p2dist x < (-const(size.ground.back) - ifelse(enemynear, facing != facing, enemynear, const(size.ground.back), enemynear, const(size.ground.front)))
map = "p2bodydistx"
value = p2dist x - (-const(size.ground.back) - ifelse(enemynear, facing != facing, enemynear, const(size.ground.back), enemynear, const(size.ground.front)))
ignorehitpause = 1

[State -3, Variable Height]
type = playerpush
triggerall = statetype = A
triggerall = movetype != H && numenemy
triggerall = !(vel y > 0 && (pos y > -vel y))
triggerall = (vel x > 0 && (map(p2bodydistx) = [-vel x, 0])) || (vel x < 0 && (map(p2bodydistx) = [0, -vel x]))
trigger1 = p2statetype = S
trigger1 = (p2dist y - vel y) > (enemynear, const(size.height) + 13 - ifelse((stateno = [100, 106]), 16, 32))
trigger2 = p2statetype = C
trigger2 = (p2dist y - vel y) > (enemynear, const(size.height) - 13 - ifelse((stateno = [100, 106]), 16, 32))
trigger3 = p2statetype = L
trigger3 = (p2dist y - vel y) > (12 - ifelse((stateno = [100, 106]), 16, 32))
value = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
triggerall = stateno = 5000 || stateno = 5010
trigger1 = gethitvar(animtype) >= 2 && random < 500
trigger2 = gethitvar(animtype) = 1 && random < 375
trigger3 = gethitvar(animtype) = 0 && random < 250
value = 5000, (random % 3)
channel = 0
ignorehitpause = 1
[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
trigger1 = gethitvar(fall) || (enemynear, hitdefattr = SCA, SA, HA)
trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000, 5199])
value = 5000, (random % 3)
channel = 0
ignorehitpause = 1

[State -3, Cheap KO]
type = assertspecial
trigger1 = stateno = [5000, 5010]
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
flag = nokosnd
ignorehitpause = 1

[State -3, Cheap KO]
type = changestate
trigger1 = !alive
trigger1 = stateno = [5000, 5010]
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
value = 5950
ignorehitpause = 1

[State -3, Reset Super Finish Var]
type = varset
trigger1 = var(23)
trigger1 = roundstate < 3
var(23) = 0

[State -3, Custom Combo Finish]
type = helper
triggerall = winKO
triggerall = roundstate = 3
triggerall = var(20) && !numhelper(8600)
trigger1 = movehit = [1, 4]
trigger2 = numhelper(1005)
trigger2 = (helper(1005), stateno = [1005, 1007]) && (helper(1005), var(18))
trigger3 = numhelper(1015)
trigger3 = helper(1015), var(18)
trigger4 = numhelper(1020)
trigger4 = helper(1020), var(18)
trigger5 = numhelper(1305)
trigger5 = helper(1305), var(18)
trigger6 = stateno = 810 && (animelemtime(13) = [0, 1])
trigger7 = stateno = 820 && (animelemtime(5) = [0, 1])
trigger8 = stateno = 840 && (animelemtime(9) = [0, 1])
helpertype = normal
stateno = 8600
ID = 8600 + 0 * (var(23) := 900)
name = "Super Finish"
postype = left
pos = 160, -120
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -3, Super Finish]
type = helper
triggerall = winKO
triggerall = roundstate = 3
triggerall = !numhelper(8600)
trigger1 = movehit = [1, 4]
trigger1 = stateno = [3000, 4999]
trigger1 = var(23) := stateno
trigger2 = stateno = 3001 && var(18)
trigger2 = var(23) := 3000
trigger3 = stateno = 3051 && var(18)
trigger3 = var(23) := 3050
trigger4 = stateno = [3200, 3299]
trigger4 = var(23) := 3200
trigger5 = (stateno = 3300 || stateno = 3350) && var(18)
trigger5 = var(23) := 3300
trigger6 = stateno = 3351 && var(18)
trigger6 = var(23) := 3351
trigger7 = numhelper(3425)
trigger7 = helper(3425), stateno = 3425 && helper(3425), var(18)
trigger7 = var(23) := 3400
helpertype = normal
stateno = 8600
ID = 8600
name = "Super Finish"
postype = left
pos = 160, -120
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -3, Victory Camera]
type = mapset
trigger1 = roundstate != 4
map = "victorycam"
value = 0

[State -3, Victory Camera]
type = mapset
trigger1 = winKO
trigger1 = stateno > 180
trigger1 = roundstate = 4
trigger1 = camerazoom <= 1
trigger1 = teammode = single || teammode = turns
map = "victorycam"
value = 1

[State -3, Victory Camera]
type = zoom
trigger1 = map(victorycam)
scale = (gamewidth / 320.0)
lag = 0.95
pos = pos x / (gamewidth / 320.0) * camerazoom, 0

[State -3, Victory BGM]
type = mapset
map = "winbgm"
trigger1 = roundstate != -1
value = 0

[State -3, Victory BGM]
type = mapadd
map = "winbgm"
trigger1 = roundstate = -1
trigger1 = teamleader = playerno
trigger1 = matchover
trigger1 = alive
trigger1 = win
value = 1

[State -3, Victory BGM];Not working
type = assertspecial
trigger1 = map(winbgm) = [1, 5]
flag = nomusic

[State -3, Victory BGM]
type = playbgm
trigger1 = map(winbgm) = 6
bgm = "geewin.mp3" 
loop = 0
volume = 100

[State -3, Antifreeze]
type = changestate
triggerall = !ctrl
triggerall = time >= 300
triggerall = roundstate = 2
trigger1 = pos y > 0 && screenpos y > gameheight
trigger2 = !selfanimexist(anim)
value = 5040

[State -3, Antifreeze]
type = targetstate
triggerall = numtarget = 1
triggerall = movetype != A
triggerall = target, time >= 300
triggerall = target, incustomstate
trigger1 = !numpartner
trigger2 = numpartner
trigger2 = partner, numtarget
trigger2 = (partner, target, ID) != (target, ID)
value = 51


;========================================<IKEMEN ENGINE FIXES>========================================
;Probably temporary

[State -3, OTG Position Fix]
redirectID = enemynear, ID
type = posset
trigger1 = numenemy
trigger1 = enemynear, pos y
trigger1 = enemynear, stateno = [5080, 5081]
y = 0
ignorehitpause = 1

[State -3, Drop Target];ReversalDef bug
type = targetdrop
trigger1 = numtarget
trigger1 = target, movetype != H
trigger1 = target, movereversed = 0

[State -3, Dizzy HitFall Reset]
redirectID = enemynear, ID
type = hitfallset
trigger1 = numenemy
trigger1 = enemynear, dizzy
trigger1 = enemynear, hitfall
trigger1 = enemynear, stateno = enemynear, const(statedizzy)
value = 0
ignorehitpause = 1

[State -3, No Redizzy]
type = mapset
trigger1 = numenemy
trigger1 = enemynear, dizzy
map = "redizzy"
value = 1
ignorehitpause = 1

[State -3, No Redizzy]
redirectID = enemynear, ID
type = dizzypointsset
trigger1 = map(redizzy)
value = enemynear, dizzypointsmax
ignorehitpause = 1

[State -3, No Redizzy]
type = mapset
trigger1 = numenemy
trigger1 = enemynear, movetype != H
map = "redizzy"
value = 0
ignorehitpause = 1

[State -3, Dizzy NHB];like classic games plus it bypasses the dizzy juggle issues
redirectID = enemynear, ID
type = nothitby
triggerall = numenemy
triggerall = enemynear, alive
triggerall = enemynear, stateno != const(statedizzy)
trigger1 = enemynear, dizzy
trigger2 = enemynear, dizzypoints <= 0
value = SCA
time = 2
ignorehitpause = 1

[State -3, Dizzy Points Regen Fix]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = target, gethitvar(damage)
trigger1 = (target, dizzypoints - target, gethitvar(dizzypoints)) >= target, dizzypointsmax
value = -10
ignorehitpause = 1

[State -3, Allow Win Pose Selection]
type = assertspecial
trigger1 = !AIlevel
trigger1 = roundstate = [3, 4]
flag = postroundinput

[State -3, Allow Win Pose Selection]
type = assertspecial
trigger1 = !AIlevel
trigger1 = roundstate = [3, 4]
trigger1 = command = "/a" || command = "/b" || command = "/c" || command = "/x" || command = "/y" || command = "/z" || command = "/s"
trigger1 = command != "a" || command != "b" || command != "c" || command != "x" || command != "y" || command != "z" || command != "s"
flag = roundnotskip
