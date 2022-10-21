; __________________________________
;| Lei-Lei by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;===================================<EXTRA SPECIAL STATES>===================================
;============================================================================================

;======================<CHUUKADAN>=============================
[Statedef 2000]
type = S
physics = S
movetype = A
anim = 2000
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -1000
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]), 2, 1))

[State 2000, Button]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(11) = ifelse(map(str_yz), 3, ifelse(map(str_xz), 2, 1))
ignorehitpause = 1
persistent = 0

[State 2000, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 2000, Superpause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 7500
ID = 7500
name = "Superpause FX"
postype = p1
pos = ceil(-4 * const(size.xscale)), ceil(-42 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 2000, Superpause]
type = superpause
trigger1 = time = 3
time = 43
movetime = 43
p2defmul = 1 + (0 * (fvar(5) := 0))
unhittable = 1
anim = ifelse(map(mysuperpause), -1, 100)
pos = ceil(-4 * const(size.xscale)), ceil(-42 * const(size.yscale))
sound = s0, 8500
darken = !map(mysuperpause)

[State 2000, NHB]
type = nothitby
trigger1 = animelemtime(6) < -1
time = 1
value = SCA

[State 2000, Bomb]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 2004
ID = 2005
name = "Bomb"
postype = p1
pos = ceil(88 * const(size.xscale)), -90
ownpal = 1

[State 2000, Snd]
type = playsnd
trigger1 = animelem = 5
value = 4, 0
channel = 0

[State 2000, spinsnd]
type = playsnd
trigger1 = animelem = 5
value = 1, 6
channel = 1

[State 2000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- < DETONATE > ---
[Statedef 2002]
type = S
movetype = I
physics = S
anim = 2002
velset = 0, 0
ctrl = 0

[State 2002, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5000, 0
channel = 0

[State 2002, Snd]
type = playsnd
trigger1 = animelem = 3 && numhelper(2005)
trigger1 = abs(helper(2005), rootdist x) > 155 * const(size.xscale)
value = 4, 9
channel = 0

[State 2002, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target burned ---
[Statedef 7697]
type = A
movetype = H
physics = N
velset = 0, 0

[State 7697, Anim]
type = changeanim
trigger1 = !time
trigger1 = selfanimexist(7697)
value = 7697

[State 7697, End]
type = selfstate
trigger1 = !time
trigger1 = !selfanimexist(7697)
value = 5030

[State 7697, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 7697, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1

[State 7697, End]
type = selfstate
;trigger1 = hitover
trigger1 = vel y > 0 && pos y >= -10
value = 5100


;======================<JIREITOU>=============================
[Statedef 3200]
type = S
physics = S
movetype = A
anim = 3200
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -2000
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]), 2, 1))

[State 3200, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3200, Superpause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 7510
ID = 7500
name = "Superpause FX"
postype = p1
pos = ceil(-3 * const(size.xscale)), ceil(-27 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3200, Superpause]
type = superpause
trigger1 = time = 3
time = 45
movetime = 45
p2defmul = 1 + (0 * (fvar(5) := 0))
unhittable = 1
anim = ifelse(map(mysuperpause), -1, 101)
pos = ceil(-3 * const(size.xscale)), ceil(-27 * const(size.yscale))
sound = s0, 8510
darken = !map(mysuperpause)

[State 3200, Snd]
type = playsnd
trigger1 = time = 3
value = 4, 1
channel = 0

[State 3200, Snd]
type = playsnd
trigger1 = animelem = 5
value = 4, 2
channel = 0

[State 3200, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 3
channel = 1

[State 3200, Blade]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 3204
ID = 3204
name = "Blade Dispenser"
postype = p1
pos = ceil(32 * const(size.xscale)), 0
ownpal = 1
size.shadowoffset = -3

[State 3200, NHB]
type = nothitby
trigger1 = time <= 52
time = 1
value = SCA

[State 3200, Loop]
type = changeanim
trigger1 = time < 88
trigger1 = animelem = 9
value = 3200
elem = 7

[State 3200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Offscreen ---
[Statedef 3202]
type = S
physics = S
anim = 3202
ctrl = 0
sprpriority = 2

[State 3202, Bound]
type = screenbound
trigger1 = anim = 3202
value = 0
movecamera = 0, 1

[State 3202, Vel]
type = velset
trigger1 = anim = 3202
x = ifelse(backedgedist < -160, 12, 6)

[State 3202, Steps]
type = playsnd
trigger1 = anim = 3202 && (animelem = 4 || animelem = 8)
value = 0, ifelse((animelem = 4), 103, 106)

[State 3202, Change]
type = changeanim
trigger1 = anim = 3202
trigger1 = backedgedist >= 40
trigger2 = time >= 120
value = 3203

[State 3202, steps]
type = playsnd
trigger1 = anim = 3203
value = 0, 101
persistent = 0

[State 3202, End]
type = changestate
trigger1 = anim = 3203 && !animtime
value = 0
ctrl = 1


;======================<TENRAIHA>=============================
[Statedef 3400]
type = S
physics = S
movetype = A
anim = 3400
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -3000
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]), 2, 1))

[State 3400, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3400, Superpause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 7520
ID = 7500
name = "Superpause FX"
postype = p1
pos = ceil(103 * const(size.xscale)), ceil(-128 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3400, Superpause]
type = superpause
trigger1 = time = 3
time = 47
movetime = 47
p2defmul = 1 + (0 * (fvar(5) := 0))
unhittable = 1
anim = ifelse(map(mysuperpause), -1, 102)
pos = ceil(103 * const(size.xscale)), ceil(-128 * const(size.yscale))
sound = s0, 8520
darken = !map(mysuperpause)

[State 3400, NHB]
type = nothitby
trigger1 = animelemtime(7) < 1
time = 1
value = SCA

[State 3400, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 7
channel = 0

[State 3400, Width]
type = width
trigger1 = animelemtime(2) >= 0 && animelemtime(17) < 0
player = ceil(20 * const(size.xscale)), 0

[State 3400, shockwave]
type = helper
trigger1 = animelem = 10
helpertype = normal
stateno = 3405
ID = 3405
name = "Shockwave"
postype = p1
pos = ceil(106 * const(size.xscale)), 0

[State 3400, Dust]
type = helper
trigger1 = animelem = 9
helpertype = normal
stateno = 3406
ID = 3406
name = "Red Dust"
postype = p1
pos = ceil(106 * const(size.xscale)), 0
size.xscale = 2
ownpal = 1

[State 3400, Snd]
type = playsnd
trigger1 = animelem = 9
value = 5, 3

[State 3400, Shake]
type = envshake
trigger1 = animelem = 9
time = 18
freq = 180
ampl = 4

[State 3400, Unguardable]
type = assertspecial
triggerall = time <= 51 && numenemy
trigger1 = enemynear, stateno != [120, 155]
trigger2 = enemynear, stateno = [120, 155]
trigger2 = enemynear, anim != [120, 155]
trigger3 = enemynear, stateno = [120, 155]
trigger3 = enemynear, anim = 121 || enemynear, anim = 131 || enemynear, anim = 141 || enemynear, anim = 151;overhead
flag = unguardable

[State 3400, Hit]
type = hitdef
trigger1 = !movecontact && !movereversed
trigger1 = animelem = 7 || animelem = 8 || animelem = 9
trigger1 = var(15) < 2
attr = S, HA
damage = 200, 50
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 67)
animtype = Hard
guardflag = H
hitflag = MAFD
priority = 4, Hit
pausetime = 4, 12
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 76) * (var(36) := 138), var(37) := ifelse((animelem = 7), -54, ifelse((animelem = 8), -30, -13))
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = Low
ground.hittime = 16
ground.slidetime = 16
ground.velocity = 0, 0
air.type = Low
air.velocity = -2.5, -5
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2

fall = 1
fall.recover = 0
persistent = 0
yaccel = 0.4850
forcestand = 1
ID = 3400
down.velocity = 0, 0
down.hittime = 40

[State 3400, Squish]
type = targetstate
trigger1 = movehit && numtarget(3400)
trigger1 = target(3400), pos y >= -8
trigger1 = !(target, time) && (target(3400), stateno = [5000, 5010])
value = 1113400
ignorehitpause = 1

[State 3400, Ball]
type = helper
trigger1 = animelemtime(9) = [0, 63]
trigger1 = !(animelemtime(9) % 9)
helpertype = normal
stateno = 3410
ID = 3410
name = "Spiked Ball"
postype = p1
pos = ceil(ifelse(animelemtime(9) = 0, 50, ifelse(animelemtime(9) = 9, 106, 106 + (-50 + (random / 10.0)))) * const(size.xscale)), 0
facing = ifelse(random < 500, -1, 1)
ownpal = 1

[State 3400, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target Squished ---
[Statedef 1113400]
type = L
physics = N
movetype = H
velset = 0, 0

[State 1113400, hitfall]
type = hitfallset
trigger1 = 1
value = 1

[State 1113400, Anim]
type = changeanim
trigger1 = !hitshakeover
trigger1 = !selfanimexist(7689)
value = 5012

[State 1113400, Anim]
type = changeanim
trigger1 = !time
trigger1 = selfanimexist(7689)
value = 7689

[State 1113400, Anim]
type = changeanim
trigger1 = hitshakeover
trigger1 = anim = 5012
value = 5100

[State 1113400, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 5100
value = 5110

[State 1113400, Pos]
type = posset
trigger1 = 1
y = 0

[State 1113400, Wait for balls]
type = nothitby
trigger1 = time < 30
value = SCA
time = 1
ignorehitpause = 1

[State 1113400, No FX]
type = varset
trigger1 = 1
sysvar(0) = 1

[State 1113400, End]
type = selfstate
trigger1 = hitshakeover
trigger1 = time >= 45
value = 5110


;======================<BOWLING>=============================
[Statedef 3500]
type = S
physics = S
movetype = A
anim = 3500
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -1000
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]), 2, 1))

[State 3500, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3500, Superpause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 7500
ID = 7500
name = "Superpause FX"
postype = p1
pos = ceil(29 * const(size.xscale)), ceil(-51 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3500, Superpause]
type = superpause
trigger1 = time = 3
time = 43
movetime = 43
p2defmul = 1 + (0 * (fvar(5) := 0))
unhittable = 1
anim = ifelse(map(mysuperpause), -1, 100)
pos = ceil(29 * const(size.xscale)), ceil(-51 * const(size.yscale))
sound = s0, 8500
darken = !map(mysuperpause)

[State 3500, NHB]
type = nothitby
trigger1 = animelemtime(3) < 1
time = 1
value = SCA

[State 3500, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= ceil(36 * const(size.xscale))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
ID = 3500
attr = S, HT
hitflag = M
priority = 7, Miss
numhits = 0
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p2facing = 1
p1stateno = 3501
p2stateno = 3505
animtype = Diagup
ground.velocity = -4.5, -9
air.velocity = -4.5, -9
fall = 1
fall.recover = 0
hitsound = -1 + 0 * (var(31) := 800)
ground.cornerpush.veloff = 0

[State 3500, misssnd]
type = playsnd
trigger1 = animelem = 5
value = 5000, 0
channel = 0

[State 3500, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 1
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 3500, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER ---
[Statedef 3501]
type = S
physics = N
movetype = A
anim = 3501
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Throw]
type = targetstate
trigger1 = !time
value = 3505

[State 3501, Anim]
type = changeanim
trigger1 = !time
trigger1 = frontedgebodydist >= backedgebodydist
value = 3501
elem = 4
[State 3501, turn]
type = turn
trigger1 = !time
trigger1 = frontedgebodydist < backedgebodydist
[State 3501, Width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(23) < 0
edge = ceil(70 * const(size.xscale)), 0
[State 3501, Throw]
type = targetfacing
trigger1 = animelemtime(21) < 0
value = -1
[State 3501, Throw]
type = targetfacing
trigger1 = animelemtime(21) >= 0
value = 1
persistent = 0

[State 3501, Throw]
type = targetstate
trigger1 = animelem = 4
value = 3506

[State 3501, Snd]
type = playsnd
trigger1 = animelem = 5
value = 5, 1
channel = 2

[State 3501, Snd]
type = playsnd
trigger1 = animelem = 5
value = 3, 11
channel = 0

[State 3501, bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = -28 * const(size.xscale), 0

[State 3501, bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 0, 0

[State 3501, bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 36 * const(size.xscale), 0

[State 3501, bind squish]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(8) < 0
pos = 63 * const(size.xscale), -27

[State 3501, bind spin]
type = targetbind
trigger1 = animelemtime(8) >= 0 && animelemtime(22) < 0
pos = -4 * const(size.xscale), -58

[State 3501, bind 22]
type = targetbind
trigger1 = animelem = 22
pos = 94 * const(size.xscale), 0

[State 3501, Throw]
type = targetstate
trigger1 = animelem = 22
value = 3507

[State 3501, Damage]
type = targetlifeadd
trigger1 = numtarget(3500)
trigger1 = target(3500), stateno = 3508 && target(3500), time = 1
value = -ceil(180 * fvar(10))
kill = 1

[State 3501, Damage]
type = targetpoweradd
trigger1 = numtarget(3500)
trigger1 = target(3500), stateno = 3508 && target(3500), time = 1
value = 100

[State 3501, Snd]
type = playsnd
trigger1 = animelem = 21
value = 3, 6
channel = 0

[State 3501, Snd]
type = playsnd
trigger1 = animelem = 22
value = 5, 17
channel = 5

[State 3501, ball]
type = helper
trigger1 = animelemtime(22) >= 0 && numtarget && !numhelper(3510)
trigger1 = target, stateno = 3507
helpertype = normal
stateno = 3510
ID = 3510
name = "Bowling Ball"
postype = p1
pos = ceil(94 * const(size.xscale)), 0
facing = 1
ownpal = 1
persistent = 0

[State 3501, targetpos]
type = varset
trigger1 = animelemtime(22) < 0
fvar(20) = 0

[State 3501, targetpos]
type = varset
trigger1 = animelemtime(22) >= 0 && numtarget
trigger1 = target, stateno = 3507
fvar(20) = (target, pos x)

[State 3501, targetpos]
type = varset
trigger1 = animelemtime(22) >= 0 && numtarget
trigger1 = target, stateno != 3507
fvar(20) = ifelse(fvar(20) < 0, -1000, 1000)

[State 3501, targetanim]
type = varset
trigger1 = numtarget
trigger1 = target, stateno = 3507
var(35) = target, selfanimexist(7688)

[State 3501, Throw]
type = targetstate
triggerall = animelemtime(22) >= 0 && numtarget
triggerall = target, stateno = 3507
trigger1 = (target, frontedgedist < -20) || (target, backedgedist < -20)
trigger2 = target, time >= 180
value = 3508

[State 3501, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1
[State 3501, Camera]
type = width
trigger1 = 1
edge = 280, 40

[State 3501, Pin]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
stateno = 3511
ID = 351110
name = "Pin"
postype = back
pos = ceil(308 * (gamewidth / 320.0)), 16
size.xscale = 0.625
size.yscale = 0.75
size.shadowoffset = 12
facing = -1
ownpal = 1

[State 3501, Pin]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
stateno = 3511
ID = 351109
name = "Pin"
postype = back
pos = ceil(305 * (gamewidth / 320.0)), 6
size.xscale = 0.625
size.yscale = 0.75
size.shadowoffset = 2
facing = -1
ownpal = 1

[State 3501, Pin]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
stateno = 3511
ID = 351108
name = "Pin"
postype = back
pos = ceil(303 * (gamewidth / 320.0)), -6
size.xscale = 0.625
size.yscale = 0.75
size.shadowoffset = -10
facing = -1
ownpal = 1

[State 3501, Pin]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
stateno = 3511
ID = 351107
name = "Pin"
postype = back
pos = ceil(302 * (gamewidth / 320.0)), -16
size.xscale = 0.625
size.yscale = 0.75
size.shadowoffset = -20
facing = -1
ownpal = 1

[State 3501, Pin]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
stateno = 3511
ID = 351106
name = "Pin"
postype = back
pos = ceil(280 * (gamewidth / 320.0)), 12
size.xscale = 0.625
size.yscale = 0.75
size.shadowoffset = 8
facing = -1
ownpal = 1

[State 3501, Pin]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
stateno = 3511
ID = 351105
name = "Pin"
postype = back
pos = ceil(279 * (gamewidth / 320.0)), 0
size.xscale = 0.625
size.yscale = 0.75
size.shadowoffset = -4
facing = -1
ownpal = 1

[State 3501, Pin]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
stateno = 3511
ID = 351104
name = "Pin"
postype = back
pos = ceil(278 * (gamewidth / 320.0)), -12
size.xscale = 0.625
size.yscale = 0.75
size.shadowoffset = -16
facing = -1
ownpal = 1

[State 3501, Pin]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
stateno = 3511
ID = 351103
name = "Pin"
postype = back
pos = ceil(252 * (gamewidth / 320.0)), 6
size.xscale = 0.625
size.yscale = 0.75
size.shadowoffset = 2
facing = -1
ownpal = 1

[State 3501, Pin]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
stateno = 3511
ID = 351102
name = "Pin"
postype = back
pos = ceil(251 * (gamewidth / 320.0)), -6
size.xscale = 0.625
size.yscale = 0.75
size.shadowoffset = -10
facing = -1
ownpal = 1

[State 3501, Pin]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
stateno = 3511
ID = 351101
name = "Pin"
postype = back
pos = ceil(224 * (gamewidth / 320.0)), 0
size.xscale = 0.625
size.yscale = 0.75
size.shadowoffset = -4
facing = -1
ownpal = 1

[State 3501, Snd]
type = playsnd
trigger1 = animelem = 11 || animelem = 15 || animelem = 19
value = 1, 6
channel = 1

[State 3501, Hit]
type = hitadd
trigger1 = numhelper(351101)
trigger1 = helper(351101), stateno = 3512 && helper(351101), time = 1
value = 1
[State 3501, Hit]
type = hitadd
trigger1 = numhelper(351102)
trigger1 = helper(351102), stateno = 3512 && helper(351102), time = 1
value = 1
[State 3501, Hit]
type = hitadd
trigger1 = numhelper(351103)
trigger1 = helper(351103), stateno = 3512 && helper(351103), time = 1
value = 1
[State 3501, Hit]
type = hitadd
trigger1 = numhelper(351104)
trigger1 = helper(351104), stateno = 3512 && helper(351104), time = 1
value = 1
[State 3501, Hit]
type = hitadd
trigger1 = numhelper(351105)
trigger1 = helper(351105), stateno = 3512 && helper(351105), time = 1
value = 1
[State 3501, Hit]
type = hitadd
trigger1 = numhelper(351106)
trigger1 = helper(351106), stateno = 3512 && helper(351106), time = 1
value = 1
[State 3501, Hit]
type = hitadd
trigger1 = numhelper(351107)
trigger1 = helper(351107), stateno = 3512 && helper(351107), time = 1
value = 1
[State 3501, Hit]
type = hitadd
trigger1 = numhelper(351108)
trigger1 = helper(351108), stateno = 3512 && helper(351108), time = 1
value = 1
[State 3501, Hit]
type = hitadd
trigger1 = numhelper(351109)
trigger1 = helper(351109), stateno = 3512 && helper(351109), time = 1
value = 1
[State 3501, Hit]
type = hitadd
trigger1 = numhelper(351110)
trigger1 = helper(351110), stateno = 3512 && helper(351110), time = 1
value = 1

[State 3501, HitSound]
type = playsnd
trigger1 = numhelper(351101)
trigger1 = helper(351101), stateno = 3512 && helper(351101), time = 1
trigger2 = numhelper(351102)
trigger2 = helper(351102), stateno = 3512 && helper(351102), time = 1
trigger3 = numhelper(351103)
trigger3 = helper(351103), stateno = 3512 && helper(351103), time = 1
trigger4 = numhelper(351104)
trigger4 = helper(351104), stateno = 3512 && helper(351104), time = 1
trigger5 = numhelper(351105)
trigger5 = helper(351105), stateno = 3512 && helper(351105), time = 1
trigger6 = numhelper(351106)
trigger6 = helper(351106), stateno = 3512 && helper(351106), time = 1
value = 2, 6
channel = 2

[State 3501, HitSound]
type = playsnd
trigger1 = numhelper(351107)
trigger1 = helper(351107), stateno = 3512 && helper(351107), time = 1
trigger2 = numhelper(351108)
trigger2 = helper(351108), stateno = 3512 && helper(351108), time = 1
trigger3 = numhelper(351109)
trigger3 = helper(351109), stateno = 3512 && helper(351109), time = 1
trigger4 = numhelper(351110)
trigger4 = helper(351110), stateno = 3512 && helper(351110), time = 1
value = 5, 18
channel = 5

[State 3501, Anim]
type = changeanim
trigger1 = animelemtime(24) >= 0 && animelemtime(25) < 0 && numtarget
trigger1 = target, stateno = 3507
value = 3501
elem = 24

[State 3501, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 3505]
type = S
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 3505, Anim]
type = changeanim2
trigger1 = !time
value = 3505

[State 3505, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 3506]
type = A
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 3506, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 3506, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3506, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 3506, Anim]
type = changeanim2
trigger1 = !time
trigger1 = !selfanimexist(7689)
value = 3506

[State 3506, Anim]
type = changeanim
trigger1 = time <= 19 && selfanimexist(7689)
value = 7689
elem = 1

[State 3506, Anim]
type = changeanim
trigger1 = (time = [20, 23]) && selfanimexist(7689)
value = 7689
elem = 2

[State 3506, Anim]
type = changeanim2
trigger1 = time >= 24
value = 3506
elem = 3

[State 3506, fade]
type = palfx
trigger1 = time >= 24 && !selfanimexist(7688)
add = -255, -255, -255
time = 2

[State 3506, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 3507]
type = C
physics = N
movetype = H
velset = 12, 0
ctrl = 0
sprpriority = 3

[State 3507, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 3507, Pos]
type = posset
trigger1 = 1
y = -1

[State 3507, Anim]
type = changeanim2
trigger1 = !selfanimexist(7688)
value = 3507

[State 3506, Anim]
type = changeanim
trigger1 = selfanimexist(7688)
value = 7688
elem = 1

[State 3507, End]
type = changestate
trigger1 = time >= 180 && frontedgedist <= 0
value = 3508

[State 3507, fade]
type = palfx
trigger1 = !selfanimexist(7688)
add = -255, -255, -255
time = 2


[Statedef 3508]
type = A
movetype = H
physics = N
velset = 0, 0
anim = 5030

[State 3508, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 3508, NHB]
type = nothitby
trigger1 = !time
value = SCA
time = 6

[State 3508, Anim]
type = changeanim
trigger1 = anim != 5052 && selfanimexist(5052)
value = 5052
[State 3508, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime && selfanimexist(5035)
trigger2 = anim = 5035 && !animtime
value = ifelse((anim = 5030), 5035, 5050)
[State 3508, fade]
type = palfx
trigger1 = !time
trigger1 = !selfanimexist(7688)
add = -255, -255, -255
sinadd = 255, 255, 255, 80
time = 20

[State 3508, Vel]
type = velset
trigger1 = !time
x = -4
y = -12

[State 3508, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 3508, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100
