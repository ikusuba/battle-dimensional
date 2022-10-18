; _______________________________
;| Vega by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================<SPECIAL STATES>=======================================
;============================================================================================

;======================<PSYCHO CRUSHER>=============================
[Statedef 1000]
type = S
physics = S
movetype = A
ctrl = 0
anim = 1000
velset = 0, 0
poweradd = 100 * !var(20)
facep2 = 1
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1000, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_z), 3, ifelse(map(str_y), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1000, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(random < 500, 3, ifelse(random < 666, 2, 1))
ignorehitpause = 1

[State 1000, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
trigger1 = map(p2bodydistx) >= 160
var(10) = ifelse(random < 500, 3, 2)
ignorehitpause = 1

[State 1000, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
trigger1 = map(p2bodydistx) >= 200
var(10) = 3
ignorehitpause = 1

[State 1000, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1000, Lose Charge]
type = mapset
map = "charge4"
trigger1 = time <= 0
value = 0
ignorehitpause = 1
persistent = 0

[State 1000, Width]
type = width
trigger1 = animelemtime(4) >= 0
value = 20
ignorehitpause = 1

[State 1000, Push]
type = playerpush
trigger1 = animelemtime(6) >= 0
value = 0
ignorehitpause = 1

[State 1000, Shield]
type = helper
trigger1 = !numhelper(1007)
trigger1 = animelemtime(6) >= 0
helpertype = normal
stateno = 1007
ID = 1007
name = "Projectile Hitter"
postype = p1

[State 1000, Shield]
type = nothitby
trigger1 = numhelper(1007)
trigger1 = animelemtime(6) >= 0
value = , NP
time = 1
ignorehitpause = 1

[State 1000, Vel]
type = velset
trigger1 = animelemtime(4) >= 0
x = ifelse(var(10) = 3, 10, ifelse(var(10) = 2, 7.5, 5))
y = 0

[State 1000, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
statetype = A
physics = N

[State 1000, FX]
type = helper
trigger1 = !numhelper(1005)
trigger1 = animelemtime(6) >= 0
helpertype = normal
stateno = 1005
ID = 1005
name = "Psycho Crusher"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
pausemovetime = 999
supermovetime = 999

[State 1000, Snd]
type = playsnd
trigger1 = animelem = 4
value = 0, 40

[State 1000, Dust]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 7104
ID = 7100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1000, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 5
channel = 0

[State 1000, Snd]
type = playsnd
trigger1 = animelem = 6
value = 5, 4

[State 1000, Hit]
type = hitdef
trigger1 = animelemtime(6) >= 0
trigger1 = var(15) < 1 || var(20)
trigger1 = (movecontact + movereversed) % ifelse(var(10) = 3, 6, ifelse(var(10) = 2, 8, 10)) = 0
attr = A, SA
damage = ifelse(movecontact, 20, 90 + 10 * var(10)), ifelse(movecontact, 5, 23 + 3 * var(10))
dizzypoints = -ceil(ifelse(var(10) = 3, 200, ifelse(var(10) = 2, 150, 100)) * fvar(10)) * !var(20)
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 0) * (var(36) := 75), var(37) := -59
hitsound = -1 + 0 * (var(31) := 8)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -6, -6
ground.cornerpush.veloff = 0
guard.ctrltime = 12
guard.slidetime = 12
guard.hittime = 12
guard.velocity = -4.49
air.type = Low
air.velocity = -6, -6
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
forcestand = 1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
palfx.sinadd = 64, 64, 64, 4
palfx.mul = 128, 128, 128
palfx.time = 60
fall = 1
fall.recover = 1
fall.recovertime = 120
ID = 1000
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 1000, Burned]
type = targetstate
trigger1 = time >= 1
trigger1 = movehit
trigger1 = numtarget(1000)
trigger1 = target, selfanimexist(7697)
trigger1 = (target(1000), stateno = 5000) || (target(1000), stateno = 5010) || (target(1000), stateno = 5020)
value = 7697
ID = 1000
ignorehitpause = 1

[State 1000, Flame Particles]
type = helper
trigger1 = time >= 1
trigger1 = !numhelper(8150)
trigger1 = movehit = 1 && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flame Particles"
postype = p2
ownpal = 1
size.height = 48
ignorehitpause = 1

[State 1000, End]
type = changestate
triggerall = time >= 20
trigger1 = frontedgedist <= (const(size.air.front) + 20)
trigger2 = var(10) = 1 && time >= 37
trigger3 = var(10) = 2 && time >= 61
trigger4 = var(10) = 3 && time >= 85
value = 1001


;--- Recovery ---
[Statedef 1001]
type = S
physics = S
movetype = I
anim = 1001
ctrl = 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1000, Vel]
type = velmul
trigger1 = anim = 1001
x = 0.85

[State 1001, End]
type = changestate
trigger1 = !animtime
value = 1002


;--- Land ---
[Statedef 1002]
type = S
physics = S
movetype = I
anim = 1002
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1002, Pos]
type = posset
trigger1 = 1
y = 0

[State 1002, Snd]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1002, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7100
sprpriority = -5
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1002, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<EX PSYCHO CRUSHER>=============================
[Statedef 1030]
type = S
physics = S
movetype = A
ctrl = 0
anim = 1000
velset = 0, 0
facep2 = 1
sprpriority = 2
poweradd = -500

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1030, Strength]
type = varset
trigger1 = time <= 0
var(10) = 4
ignorehitpause = 1
persistent = 0

[State 1030, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1030, Lose Charge]
type = mapset
map = "charge4"
trigger1 = time <= 0
value = 0
ignorehitpause = 1
persistent = 0

[State 1030, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1030, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(-19 * const(size.xscale)), ceil(-67 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1030, NHB]
type = nothitby
trigger1 = animelemtime(6) < 0
value = SCA
time = 1

[State 1030, Width]
type = width
trigger1 = animelemtime(4) >= 0
value = 20
ignorehitpause = 1

[State 1030, Push]
type = playerpush
trigger1 = animelemtime(6) >= 0
value = 0
ignorehitpause = 1

[State 1030, Shield]
type = helper
trigger1 = !numhelper(1007)
trigger1 = animelemtime(6) >= 0
helpertype = normal
stateno = 1007
ID = 1007
name = "Projectile Hitter"
postype = p1

[State 1030, Shield]
type = nothitby
trigger1 = numhelper(1007)
trigger1 = animelemtime(6) >= 0
value = , NP
time = 1
ignorehitpause = 1

[State 1030, Vel]
type = velset
trigger1 = animelemtime(4) >= 0
x = 10
y = 0

[State 1030, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
statetype = A
physics = N

[State 1030, FX]
type = helper
trigger1 = !numhelper(1005)
trigger1 = animelemtime(6) >= 0
helpertype = normal
stateno = 1005
ID = 1005
name = "Psycho Crusher"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
pausemovetime = 999
supermovetime = 999

[State 1030, Snd]
type = playsnd
trigger1 = animelem = 4
value = 0, 40

[State 1030, Dust]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 7104
ID = 7100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1030, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 5
channel = 0

[State 1030, Snd]
type = playsnd
trigger1 = animelem = 6
value = 5, 4

[State 1030, Hit]
type = hitdef
trigger1 = animelemtime(6) >= 0
trigger1 = var(15) < 2 || var(20)
trigger1 = !((movecontact + movereversed) % 4)
attr = A, SA
damage = 70, 10
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 0) * (var(36) := 75), var(37) := -59
hitsound = -1 + 0 * (var(31) := 8)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -6, -6
ground.cornerpush.veloff = 0
guard.ctrltime = 12
guard.slidetime = 12
guard.hittime = 12
guard.velocity = -4.49
air.type = Low
air.velocity = -6, -6
getpower = 0, 0
givepower = 40, 40
forcestand = 1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
palfx.sinadd = 64, 64, 64, 4
palfx.mul = 128, 128, 128
palfx.time = 60
fall = 1
fall.recover = 1
fall.recovertime = 120
ID = 1030
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 1030, Burned]
type = targetstate
trigger1 = time >= 1
trigger1 = movehit
trigger1 = numtarget(1030)
trigger1 = target, selfanimexist(7697)
trigger1 = (target(1030), stateno = 5000) || (target(1030), stateno = 5010) || (target(1030), stateno = 5020)
value = 7697
ID = 1030
ignorehitpause = 1

[State 1030, Flame Particles]
type = helper
trigger1 = time >= 1
trigger1 = !numhelper(8150)
trigger1 = movehit = 1 && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flame Particles"
postype = p2
ownpal = 1
size.height = 48
ignorehitpause = 1

[State 1030, End]
type = changestate
triggerall = time >= 20
trigger1 = frontedgedist <= (const(size.air.front) + 20)
trigger2 = time >= 37
value = 1001


;========================<BURNED>=============================
[Statedef 7697]
type = A
physics = N
movetype = H
velset = 0, 0

[State 7697, End]
type = selfstate
trigger1 = !selfanimexist(7697)
value = 5020

[state 7697, Anim]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(airtype) = 1), 5000, 5010) + gethitvar(animtype)

[state 7697, Anim]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 7697, Anim]
type = changeanim
trigger1 = !time
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 7697, Anim]
type = changeanim
trigger1 = !hitshakeover
value = anim

[State 7697, Anim]
type = changeanim
trigger1 = hitshakeover
trigger1 = anim != 7697
value = 7697

[State 7697, Accel]
type = veladd
trigger1 = hitshakeover
y = gethitvar(yaccel)

[State 7697, Vel]
type = hitvelset
trigger1 = hitshakeover
x = 1
y = 1
persistent = 0

[State 7697, End]
type = selfstate
trigger1 = hitshakeover
trigger1 = vel y > 0
trigger1 = !hitfall
value = 5040

[State 7697, Recover]
type = selfstate
triggerall = vel y > 0
triggerall = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = canrecover
trigger1 = command = "recovery"
value = 5200

[State 7697, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundlevel)
value = 5100


;======================<DOUBLE KNEE PRESS>=============================
[Statedef 1100]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1100
velset = 0, 0
poweradd = 100 * !var(20)
facep2 = 1
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1100, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_c), 3, ifelse(map(str_b), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1100, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse((p2movetype = H || random < 333), 1, ifelse(random < 500, 2, 3))
ignorehitpause = 1

[State 1100, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1100, Lose Charge]
type = mapset
map = "charge4"
trigger1 = time <= 0
value = 0
ignorehitpause = 1
persistent = 0

[State 1100, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 3, 1102, ifelse(var(10) = 2, 1101, 1100))

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 1100, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 7100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1100, Vel]
type = velset
trigger1 = animelem = 2
x = ifelse(var(10) = 3, 10, ifelse(var(10) = 2, 8, 6))
y = -ifelse(var(10) = 3, 3, ifelse(var(10) = 2, 2.5, 2))

[State 1100, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = N
[State 1100, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.25

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 6
channel = 0
[State 1100, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
channel = 1

[State 1100, Hit High]
type = hitdef
trigger1 = animelem = 4
trigger1 = var(15) < 1 || var(20)
attr = A, SA
damage = 35 + (5 * var(10)), 9 + (1 * var(10))
dizzypoints = -ceil(75 * fvar(10)) * !var(20)
animtype = Hard
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 0) * (var(36) := 80), var(37) := -85
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10.52, 0
air.type = Low
air.velocity = -4.0, -6.0
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
forcestand = 1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 1100, Hit Low]
type = hitdef
trigger1 = animelem = 5
trigger1 = var(15) < 1 || var(20)
attr = A, SA
damage = 35 + (5 * var(10)), 9 + (1 * var(10))
dizzypoints = -ceil(75 * fvar(10)) * !var(20)
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 22) * (var(36) := 66), var(37) := -26
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4.0, -6.0
air.type = Low
air.velocity = -4.0, -6.0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
forcestand = 1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 1100, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1103


;--- Land ---
[Statedef 1103]
type = S
physics = S
movetype = I
anim = 1103
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1103, Pos]
type = posset
trigger1 = 1
y = 0

[State 1103, Snd]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1103, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7100
sprpriority = -5
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1103, Recovery Difference]
type = changeanim
triggerall = anim = 1103
triggerall = animelemtime(2) < 0
trigger1 = var(10) = 1
trigger1 = animelemtime(1) = 6
trigger2 = var(10) = 2
trigger2 = animelemtime(1) = 9
value = 1103
elem = 2

[State 1103, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<EX DOUBLE KNEE PRESS>=============================
[Statedef 1130]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1130
velset = 0, 0
facep2 = 1
sprpriority = 2
poweradd = -500

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1130, Strength]
type = varset
trigger1 = time <= 0
var(10) = 4
ignorehitpause = 1
persistent = 0

[State 1130, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1130, Lose Charge]
type = mapset
map = "charge4"
trigger1 = time <= 0
value = 0
ignorehitpause = 1
persistent = 0

[State 1130, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1130, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(-8 * const(size.xscale)), ceil(-68 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1130, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 1130, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 7100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1130, Vel]
type = velset
trigger1 = animelem = 2
x = 10
y = -2.5

[State 1130, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = N

[State 1130, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.25

[State 1130, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 6
channel = 0
[State 1130, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
channel = 1

[State 1130, Hit High]
type = hitdef
trigger1 = animelem = 4
trigger1 = var(15) < 2 || var(20)
attr = A, SA
damage = 60, 15
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Hard
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 0) * (var(36) := 80), var(37) := -85
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Low
ground.slidetime = 15
ground.hittime = 18
ground.velocity = -7.51, 0
air.type = Low
air.velocity = -4.0, -6.0
air.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
forcestand = 1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 1130, Hit Low]
type = hitdef
trigger1 = animelem = 5
trigger1 = var(15) < 3 || var(20)
attr = A, SA
damage = 50, 13
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 22) * (var(36) := 66), var(37) := -26
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Low
ground.slidetime = 15
ground.hittime = 18
ground.velocity = -7.51, 0
air.type = Low
air.velocity = -4.0, -6.0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
forcestand = 1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 1130, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1133


;--- Land ---
[Statedef 1133]
type = S
physics = S
movetype = I
anim = 1133
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1133, Pos]
type = posset
trigger1 = 1
y = 0

[State 1133, Snd]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1133, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7100
sprpriority = -5
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1133, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<HEAD PRESS>=============================
[Statedef 1200]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1200
velset = 0, 0
poweradd = 100 * !var(20)
facep2 = 1
sprpriority = 2
juggle = 7 * !var(20)

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1200, Strength]
type = varset
trigger1 = !time
var(10) = 3
ignorehitpause = 1

[State 1200, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1200, Lose Charge]
type = mapset
map = "charge2"
trigger1 = time <= 0
value = 0
ignorehitpause = 1
persistent = 0

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 1200, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1200, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = N

[State 1200, Accel]
type = veladd
trigger1 = animelemtime(2) >= 1
y = 1.0

[State 1200, Vel]
type = velset
trigger1 = animelemtime(2) = 1
y = -14
persistent = 0

[State 1200, Vel]
type = velset
trigger1 = animelemtime(2) = 1
trigger1 = numenemy
x = p2dist x / (14 + ((14 ** 2) - (2 * (enemynear(0), const(size.height)))) ** 0.5)
persistent = 0

[State 1200, Vel]
type = velset
trigger1 = vel x > 13
x = 13

[State 1200, Vel]
type = turn
trigger1 = vel x < 0
persistent = 0

[State 1200, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 2
value = 3, 0
channel = 0

[State 1200, Miss]
type = hitdef
trigger1 = animelemtime(6) >= 0
trigger1 = !movecontact && !movereversed
attr = A, SA
hitflag =
sparkxy = -10, 0

[State 1200, Hit]
type = hitdef
trigger1 = animelemtime(6) >= 0
trigger1 = !movecontact && !movereversed
trigger1 = var(15) < 2 || var(20)
attr = A, SA
damage = 100, 25
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Hard
air.animtype = Back
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 0, 24
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := -10) * (var(36) := 10), var(37) := 0
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -7, 0
air.type = Low
air.velocity = -3, 6
air.cornerpush.veloff = 0
down.hittime = 18
down.velocity = 0, 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
forcestand = 1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
ID = 1200

[State 1200, OTG - Stay Down]
redirectID = target(1200), ID
type = selfstate
trigger1 = movehit = 1
trigger1 = numtarget(1200)
trigger1 = target(1200), pos y >= -24
trigger1 = target(1200), stateno = 5020 || target(1200), stateno = 5070
trigger1 = target(1200), prevstateno = [5100, 5101]
trigger1 = target(1200), alive && target, hitfall
value = 5080
ignorehitpause = 1

[State 1200, OTG - Stay Down]
redirectID = target(1200), ID
type = posset
trigger1 = numtarget(1200)
trigger1 = target(1200), pos y
trigger1 = target(1200), stateno = 5080
y = 0
ignorehitpause = 1

[State 1200, End]
type = changestate
trigger1 = movecontact
value = 1201

[State 1200, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1202


;--- HIT ---
[Statedef 1201]
type = A
physics = N
movetype = A
ctrl = 0
anim = 1201
velset = 0, 0
sprpriority = 2

[State 1201, Pos]
type = posfreeze
trigger1 = animelemtime(4) < 0
value = 1
ignorehitpause = 1

[State 1201, Push]
type = playerpush
trigger1 = animelemtime(5) < 0
value = 0
ignorehitpause = 1

[State 1201, Pos]
type = posset
trigger1 = pos y > 0
y = 0

[State 1201, Pos]
type = posset
trigger1 = numtarget(1200)
trigger1 = animelemtime(5) < 0
trigger1 = pos y > -(target(1200), const(size.ground.front))
y = -(target(1200), const(size.ground.front))

[State 1201, Accel]
type = veladd
trigger1 = animelemtime(5) >= 0
y = 0.53

[State 1201, Snd]
type = playsnd
trigger1 = animelem = 5
value = 0, 40

[State 1201, Vel]
type = velset
trigger1 = animelem = 5
x = 0
y = -7.70

[State 1201, Vel Dir]
type = velmul
trigger1 = 1
x = 0.95

[State 1201, Vel Dir]
type = velset
trigger1 = animelemtime(5) >= 0
trigger1 = command = "holdfwd" && command != "holdback"
x = 4.818

[State 1201, Vel Dir]
type = velset
trigger1 = animelemtime(5) >= 0
trigger1 = command != "holdfwd" && command = "holdback"
x = -4.818

[State 1201, Skull Diver]
type = changestate
triggerall = animelemtime(8) >= 0
trigger1 = !AIlevel
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
trigger2 = AIlevel && (p2dist y = [-50, 100])
value = 1205

[State 1201, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1203


;--- MISS ---
[Statedef 1202]
type = S
physics = S
ctrl = 0
anim = 1202
sprpriority = 2

[State 1202, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 1202, Pos]
type = posset
trigger1 = 1
y = 0

[State 1202, Snd]
type = playsnd
trigger1 = !time
value = 5, 7

[State 1202, Dust]
type = explod
trigger1 = !time
anim = 7100
ID = 7100
sprpriority = 2
postype = p1
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1202, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
scale = 0.75, 0.75
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1202, Shake]
type = envshake
trigger1 = !time
time = 12
freq = 180
ampl = 2

[State 1202, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;---Land---
[Statedef 1203]
type = S
physics = S
movetype = I
anim = 1203
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1203, Pos]
type = posset
trigger1 = 1
y = 0

[State 1203, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1203, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7100
sprpriority = -5
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1203, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- SOMERSAULT SKULL DIVER ---
[Statedef 1205]
type = A
movetype = A
physics = N
anim = 1205
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1205, Accel]
type = veladd
trigger1 = time
y = 0.53

[State 1205, Vel Dir]
type = velmul
trigger1 = 1
x = 0.95

[State 1205, Vel Dir]
type = velset
trigger1 = command = "holdfwd" && command != "holdback"
x = 4.818

[State 1205, Vel Dir]
type = velset
trigger1 = command != "holdfwd" && command = "holdback"
x = -4.818

[State 1205, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 2
channel = 0

[State 1205, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
channel = 1

[State 1205, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 2
channel = 3

[State 1205, FX]
type = helper
trigger1 = !numhelper(6000)
helpertype = normal
stateno = 6000
ID = 6000
name = "Psycho Power"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
persistent = 0

[State 1205, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = (var(15) < 3 || var(20))
attr = A, SA
damage = 70, 18
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 76), var(37) := -98
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -7
air.type = Low
air.velocity = -5, -6
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
envshake.time = 10
envshake.freq = 180
envshake.ampl = 3
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
airguard.cornerpush.veloff = 0

[State 1205, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 1205, End]
type = changestate
trigger1 = vel y > 0 && pos y > 0
value = 1203


;======================<DEVIL REVERSE>=============================
[Statedef 1250]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1250
velset = 0, 0
poweradd = 100 * !var(20)
facep2 = 1
sprpriority = 2

[State 1250, Strength]
type = varset
trigger1 = !time
var(10) = 3
ignorehitpause = 1

[State 1250, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1250, Lose Charge]
type = mapset
map = "charge4"
trigger1 = time <= 0
value = 0
ignorehitpause = 1
persistent = 0

[State 1250, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 1250, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1250, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = N

[State 1250, Accel]
type = veladd
trigger1 = animelemtime(2) >= 1
y = 1.0

[State 1200, Vel]
type = velset
trigger1 = animelemtime(2) = 1
y = -14

[State 1200, Vel]
type = velset
trigger1 = animelemtime(2) = 1
trigger1 = numenemy
x = p2dist x / (14 + ((14 ** 2) - (2 * (enemynear(0), const(size.height)))) ** 0.5)
persistent = 0

[State 1250, Vel]
type = turn
trigger1 = vel x < 0
persistent = 0

[State 1250, Vel]
type = velset
trigger1 = vel x > 13
x = 13

[State 1250, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1250, Snd]
type = playsnd
trigger1 = animelem = 2
value = 3, 0
channel = 0

[State 1250, Punch]
type = changestate
triggerall = vel y >= 0
triggerall = animelemtime(2) > 0
trigger1 = !AIlevel
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
trigger2 = AIlevel
trigger2 = p2dist y = [-50, 100]
value = 1255

[State 1250, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1203


;--- Punch ---
[Statedef 1255]
type = A
physics = N
movetype = A
ctrl = 0
anim = 1255
velset = 0, 0
poweradd = 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1255, Snd]
type = playsnd
trigger1 = animelem = 4
value = 3, 5
channel = 0

[State 1255, Snd]
type = playsnd
trigger1 = animelem = 8
value = 1, 3
channel = 1

[State 1255, Accel]
type = veladd
trigger1 = time
y = 0.75

[State 1255, Vel]
type = velset
trigger1 = !time
x = -6
y = -9

[State 1255, Vel Dir]
type = velmul
trigger1 = 1
x = 0.95

[State 1255, Vel Dir]
type = velset
trigger1 = command = "holdfwd" && command != "holdback"
x = 4.818

[State 1255, Vel Dir]
type = velset
trigger1 = command != "holdfwd" && command = "holdback"
x = -4.818

[State 1255, Turn]
type = turn
trigger1 = !time
trigger1 = command = "holdfwd" && command != "holdback"

[State 1255, Snd]
type = playsnd
trigger1 = animelem = 6
value = 5, 2
channel = 3

[State 1255, FX]
type = helper
trigger1 = !numhelper(6000)
helpertype = normal
stateno = 6000
ID = 6000
name = "Psycho Power"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
persistent = 0

[State 1255, Hit]
type = hitdef
trigger1 = animelem = 8
trigger1 = (var(15) < 3 || var(20))
attr = A, SA
damage = 70, 18
dizzypoints = -ceil(150 * fvar(10)) * !var(20)
animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 10) * (var(36) := 70), var(37) := -60
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4, -7
air.type = Low
air.velocity = -4, -7
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
envshake.time = 10
envshake.freq = 180
envshake.ampl = 3
palfx.sinadd = 64, 64, 64, 4
palfx.mul = 128, 128, 128
palfx.time = 60
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
forcestand = 1
airguard.cornerpush.veloff = 0

[State 1255, Juggle Reset]
type = varset
trigger1 = time >= 1
trigger1 = movehit = 1
var(15) = 0
ignorehitpause = 1

[State 1255, Flame Particles]
type = helper
trigger1 = !numhelper(8150)
trigger1 = movehit = 1 && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flame Particles"
postype = p2
ownpal = 1
size.height = 48
ignorehitpause = 1

[State 1255, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1203


;======================<EX HEAD PRESS>=============================
[Statedef 1270]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1200
velset = 0, 0
facep2 = 1
sprpriority = 2
juggle = 7 * !var(20)
poweradd = -500

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1270, Strength]
type = varset
trigger1 = time <= 0
var(10) = 4
ignorehitpause = 1

[State 1270, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1270, Lose Charge]
type = mapset
map = "charge2"
trigger1 = time <= 0
value = 0
ignorehitpause = 1
persistent = 0

[State 1270, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1270, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(0 * const(size.xscale)), ceil(-55 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1270, NHB]
type = nothitby
trigger1 = time >= 0
value = , AP
time = 1
ignorehitpause = 1

[State 1270, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 1270, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1270, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = N

[State 1270, Accel]
type = veladd
trigger1 = animelemtime(2) >= 1
y = 1.0

[State 1270, Vel]
type = velset
trigger1 = animelemtime(2) = 1
y = -14
persistent = 0

[State 1270, Vel]
type = velset
trigger1 = animelemtime(2) = 1
trigger1 = numenemy
x = p2dist x / (14 + ((14 ** 2) - (2 * (enemynear(0), const(size.height)))) ** 0.5)
persistent = 0

[State 1270, Vel]
type = velset
trigger1 = vel x > 13
x = 13

[State 1270, Vel]
type = turn
trigger1 = vel x < 0
persistent = 0

[State 1270, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1270, Snd]
type = playsnd
trigger1 = animelem = 2
value = 3, 0
channel = 0

[State 1270, Miss]
type = hitdef
trigger1 = animelemtime(6) >= 0
trigger1 = !movecontact && !movereversed
attr = A, SA
hitflag =
sparkxy = -10, 0

[State 1270, Hit]
type = hitdef
trigger1 = animelemtime(6) >= 0
trigger1 = !movecontact && !movereversed
trigger1 = var(15) < 2 || var(20)
attr = A, SA
damage = 140, 35
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype = Hard
air.animtype = Back
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 0, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := -10) * (var(36) := 10), var(37) := 0
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -7, 0
air.type = Low
air.velocity = -3, 6
air.cornerpush.veloff = 0
down.hittime = 18
down.velocity = 0, 0
getpower = 0, 0
givepower = 40, 40
forcestand = 1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
ID = 1270

[State 1230, P2 State]
type = targetstate
trigger1 = time >= 1
trigger1 = movehit && numtarget(1270)
trigger1 = !(target(1270), time)
trigger1 = (target(1270), stateno = 5000) || (target(1270), stateno = 5010)
value = 1290
ID = 1270
ignorehitpause = 1

[State 1270, OTG - Stay Down]
redirectID = target(1270), ID
type = selfstate
trigger1 = movehit = 1
trigger1 =numtarget(1270)
trigger1 = target(1270), pos y >= -24
trigger1 = target(1270), stateno = 5020 || target(1270), stateno = 5070
trigger1 = target(1270), prevstateno = [5100, 5101]
trigger1 = target(1270), alive && target, hitfall
value = 5080
ignorehitpause = 1

[State 1270, OTG - Stay Down]
redirectID = target(1270), ID
type = posset
trigger1 = numtarget(1270)
trigger1 = target(1270), pos y
trigger1 = target(1270), stateno = 5080
y = 0
ignorehitpause = 1

[State 1270, End]
type = changestate
trigger1 = movecontact
value = 1271

[State 1270, Devil Reverse]
type = changestate
triggerall = vel y >= 0
triggerall = animelemtime(2) > 0
trigger1 = !AIlevel
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
trigger2 = AIlevel
trigger2 = p2dist y = [-50, 100]
value = 1280

[State 1270, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1202


;--- HIT ---
[Statedef 1271]
type = A
physics = N
movetype = A
ctrl = 0
anim = 1201
velset = 0, 0
sprpriority = 2

[State 1271, Freeze Anim]
type = changeanim
trigger1 = time < 10
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
value = 1201
elem = 2

[State 1271, Skip Anim]
type = changeanim
trigger1 = animelem = 3
value = 1201
elem = 5

[State 1271, Pos]
type = posfreeze
trigger1 = animelemtime(4) < 0
value = 1
ignorehitpause = 1

[State 1271, Push]
type = playerpush
trigger1 = animelemtime(5) < 0
value = 0
ignorehitpause = 1

[State 1201, Pos]
type = posset
trigger1 = pos y > 0
y = 0

[State 1201, Pos]
type = posset
trigger1 = numtarget(1270)
trigger1 = animelemtime(5) < 0
trigger1 = pos y > -(target(1270), const(size.ground.front))
y = -(target(1270), const(size.ground.front))

[State 1271, Accel]
type = veladd
trigger1 = animelemtime(5) >= 0
y = 0.53

[State 1271, Snd]
type = playsnd
trigger1 = animelem = 5
value = 0, 40

[State 1271, Vel]
type = velset
trigger1 = animelem = 5
x = 0
y = -7.70

[State 1271, Vel Dir]
type = velmul
trigger1 = 1
x = 0.95

[State 1271, Vel Dir]
type = velset
trigger1 = animelemtime(5) >= 0
trigger1 = command = "holdfwd" && command != "holdback"
x = 4.818

[State 1271, Vel Dir]
type = velset
trigger1 = animelemtime(5) >= 0
trigger1 = command != "holdfwd" && command = "holdback"
x = -4.818

[State 1271, Skull Diver]
type = changestate
triggerall = animelemtime(8) >= 0
trigger1 = !AIlevel
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
trigger2 = AIlevel && (p2dist y = [-50, 100])
value = 1275

[State 1271, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1203


;--- SOMERSAULT SKULL DIVER ---
[Statedef 1275]
type = A
movetype = A
physics = N
anim = 1205
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1275, Accel]
type = veladd
trigger1 = time
y = 0.53

[State 1275, Vel Dir]
type = velmul
trigger1 = 1
x = 0.95

[State 1275, Vel Dir]
type = velset
trigger1 = command = "holdfwd" && command != "holdback"
x = 4.818

[State 1275, Vel Dir]
type = velset
trigger1 = command != "holdfwd" && command = "holdback"
x = -4.818

[State 1275, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 2
channel = 0

[State 1275, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
channel = 1

[State 1275, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 2
channel = 3

[State 1275, FX]
type = helper
trigger1 = !numhelper(6000)
helpertype = normal
stateno = 6000
ID = 6000
name = "Psycho Power"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
persistent = 0

[State 1275, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = (var(15) < 3 || var(20))
attr = A, SA
damage = 100, 25
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 76), var(37) := -98
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -7
air.type = Low
air.velocity = -5, -6
air.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.freq = 180
envshake.ampl = 3
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
airguard.cornerpush.veloff = 0

[State 1275, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 1275, End]
type = changestate
trigger1 = vel y > 0 && pos y > 0
value = 1203


;--- Punch ---
[Statedef 1280]
type = A
physics = N
movetype = A
ctrl = 0
anim = 1255
velset = 0, 0
poweradd = 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1280, Snd]
type = playsnd
trigger1 = animelem = 4
value = 3, 5
channel = 0

[State 1280, Snd]
type = playsnd
trigger1 = animelem = 8
value = 1, 3
channel = 1

[State 1280, Accel]
type = veladd
trigger1 = time
y = 0.75

[State 1280, Vel]
type = velset
trigger1 = !time
x = -6
y = -9

[State 1280, Vel Dir]
type = velmul
trigger1 = 1
x = 0.95

[State 1280, Vel Dir]
type = velset
trigger1 = command = "holdfwd" && command != "holdback"
x = 4.818

[State 1280, Vel Dir]
type = velset
trigger1 = command != "holdfwd" && command = "holdback"
x = -4.818

[State 1280, Turn]
type = turn
trigger1 = !time
trigger1 = command = "holdfwd" && command != "holdback"

[State 1280, Snd]
type = playsnd
trigger1 = animelem = 6
value = 5, 2
channel = 3

[State 1280, FX]
type = helper
trigger1 = !numhelper(6000)
helpertype = normal
stateno = 6000
ID = 6000
name = "Psycho Power"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
persistent = 0

[State 1280, Hit]
type = hitdef
trigger1 = animelem = 8
trigger1 = (var(15) < 3 || var(20))
attr = A, SA
damage = 100, 25
dizzypoints = -ceil(150 * fvar(10)) * !var(20)
animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 10) * (var(36) := 70), var(37) := -60
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4, -7
air.type = Low
air.velocity = -4, -7
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.freq = 180
envshake.ampl = 3
palfx.sinadd = 64, 64, 64, 4
palfx.mul = 128, 128, 128
palfx.time = 60
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
forcestand = 1
airguard.cornerpush.veloff = 0

[State 1280, Juggle Reset]
type = varset
trigger1 = movehit = 1
var(15) = 0
ignorehitpause = 1

[State 1280, Flame Particles]
type = helper
trigger1 = !numhelper(8150)
trigger1 = movehit = 1 && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flame Particles"
postype = p2
ownpal = 1
size.height = 48
ignorehitpause = 1

[State 1280, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1203


;--- Target Slammed Against Ground ---
[Statedef 1290]
type = A
movetype = H
physics = N
velset = 0, 0

[State 1290, Anim]
type = changeanim
trigger1 = 1
value = ifelse(selfanimexist(5420), 5420, 5012)

[State 1290, End]
type = selfstate
trigger1 = hitshakeover && pos y < 0
value = 5030

[State 1290, End]
type = changestate
trigger1 = hitshakeover && pos y >= 0
value = 1291


[Statedef 1291]
type = L
movetype = H
physics = N
velset = 0, 0

[State 1291, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5101), 5101, 5100)

[State 1291, Pos]
type = posset
trigger1 = 1
y = 0

[State 1291, Damage]
type = hitfalldamage
trigger1 = !time

[State 1291, Shake]
type = envshake
trigger1 = !time
time = 12
ampl = 2
freq = 180

[State 1291, Snd]
type = playsnd
trigger1 = !time
value = F7, 2

[State 1291, FX]
type = explod
trigger1 = !time
anim = F62
postype = p1
pos = 0, 0
sprpriority = 10

[State 1291, End]
type = changestate
trigger1 = !animtime
value = 1292


[Statedef 1292]
type = L
movetype = H
physics = N

[State 1292, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5161), 5161, 5160)

[State 1292, Pos]
type = posset
trigger1 = !time
y = 0

[State 1292, Vel]
type = velset
trigger1 = !time
y = -2.4

[State 1292, accel]
type = veladd
trigger1 = 1
y = 0.6

[State 1292, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 12
value = 5110


;======================<PSYCHO IMPACT>=============================
[Statedef 1300]
type = S
physics = S
movetype = A
ctrl = 0
anim = 1300
velset = 0, 0
poweradd = 100 * !var(20)
facep2 = 1
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1300, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_z), 3, ifelse(map(str_y), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1300, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(random < 500, 3, ifelse(random < 666, 2, 1))
ignorehitpause = 1

[State 1300, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1300, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0 && animelemtime(13) < 0
physics = N
[State 1300, Type]
type = statetypeset
trigger1 = animelemtime(2) < 0 || animelemtime(13) >= 0
physics = S

[State 1300, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 102

[State 1300, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 7100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1300, Vel]
type = velset
trigger1 = animelem = 2
x = ifelse(var(10) = 3, 12, ifelse(var(10) = 2, 9, 6))

[State 1300, Vel]
type = velmul
trigger1 = vel x
x = 0.95

[State 1300, Startup]
type = changeanim
triggerall = animelemtime(2) >= 2 && animelemtime(3) < 0
trigger1 = var(10) = 1 && animelemtime(2) >= 6
trigger2 = var(10) = 2 && animelemtime(2) >= 9
trigger3 = var(10) = 3 && animelemtime(2) >= 12
value = 1300
elem = 3

[State 1300, Snd]
type = playsnd
trigger1 = animelem = 1 || animelem = 3 || animelem = 8
value = 3, ifelse((animelem = 1), 1, ifelse((animelem = 3), 4, 8))
channel = 0
[State 1300, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
channel = 1
[State 1300, Snd]
type = playsnd
trigger1 = animelem = 8
value = 5, 2
channel = 1

[State 1300, FX]
type = explod
trigger1 = animelem = 9
anim = 1305
ID = 1305
sprpriority = 3
postype = p1
bindtime = -1
removeongethit = 1
scale = 0.5, 0.5

[State 1300, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = (var(15) < (1 + hitcount) || var(20))
attr = S, SA
damage = 40, 10
dizzypoints = -ceil(ifelse(var(10) = 3, 100, ifelse(var(10) = 2, 75, 50)) * fvar(10)) * !var(20)
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 50), var(37) := -66
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 24
ground.velocity = -6, 0
air.type = Low
air.velocity = -2, -4
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 50, 100) * (!var(20) && prevstateno != 750), ifelse(moveguarded, 25, 50)
givepower = 40, 40
forcestand = 1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850

[State 1300, Hit]
type = hitdef
trigger1 = animelem = 9
trigger1 = (var(15) < (1 + hitcount) || var(20))
attr = S, SA
damage = 60, 15
dizzypoints = -ceil(ifelse(var(10) = 3, 100, ifelse(var(10) = 2, 75, 50)) * fvar(10)) * !var(20)
animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 83), var(37) := -85
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -6, -6
air.type = Low
air.velocity = -6, -6
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 50, 100) * (!var(20) && prevstateno != 750), ifelse(moveguarded, 25, 50)
givepower = 40, 40
forcestand = 1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
palfx.sinadd = 64, 64, 64, 4
palfx.mul = 128, 128, 128
palfx.time = 60
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850

[State 1300, Flame Particles]
type = helper
trigger1 = time >= 1
trigger1 = animelemtime(9) >= 0
trigger1 = !numhelper(8150)
trigger1 = movehit = 1 && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flame Particles"
postype = p2
ownpal = 1
size.height = 60
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(10) >= 0
movetype = I

[State 1300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<EX PSYCHO IMPACT>=============================
[Statedef 1330]
type = S
physics = S
movetype = A
ctrl = 0
anim = 1300
velset = 0, 0
facep2 = 1
sprpriority = 2
poweradd = -500

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1330, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_z), 3, ifelse(map(str_y), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1330, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(random < 500, 3, ifelse(random < 666, 2, 1))
ignorehitpause = 1

[State 1330, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1330, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1330, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(-15 * const(size.xscale)), ceil(-40 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1330, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0 && animelemtime(13) < 0
physics = N

[State 1330, Type]
type = statetypeset
trigger1 = animelemtime(2) < 0 || animelemtime(13) >= 0
physics = S

[State 1330, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 102

[State 1330, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 7100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1330, Vel]
type = velset
trigger1 = animelem = 2
x = 12

[State 1330, Vel]
type = velmul
trigger1 = vel x
x = 0.95

[State 1330, Startup]
type = changeanim
trigger1 = animelemtime(2) >= 2 && animelemtime(3) < 0
trigger1 = animelemtime(2) >= 12
value = 1300
elem = 3

[State 1330, Snd]
type = playsnd
trigger1 = animelem = 1 || animelem = 3 || animelem = 8
value = 3, ifelse((animelem = 1), 1, ifelse((animelem = 3), 4, 8))
channel = 0

[State 1330, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
channel = 1

[State 1330, Snd]
type = playsnd
trigger1 = animelem = 8
value = 5, 2
channel = 1

[State 1330, FX]
type = explod
trigger1 = animelem = 9
anim = 1305
ID = 1305
sprpriority = 3
postype = p1
bindtime = -1
removeongethit = 1
scale = 0.5, 0.5

[State 1330, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = var(15) < (1 + hitcount) || var(20)
attr = S, SA
damage = 40, 10
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 50), var(37) := -66
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 24
ground.velocity = -6, 0
air.type = Low
air.velocity = -2, -4
air.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
forcestand = 1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850

[State 1330, Hit]
type = hitdef
trigger1 = animelem = 9
trigger1 = var(15) < (1 + hitcount) || var(20)
attr = S, SA
damage = 60, 15
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 83), var(37) := -85
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -12, -4.25
air.type = Low
air.velocity = -12, -4.25
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
forcestand = 1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
palfx.sinadd = 64, 64, 64, 4
palfx.mul = 128, 128, 128
palfx.time = 60
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
ID = 1330

[State 1330, Wall Bounce]
type = targetstate
trigger1 = !map(wallbounce)
trigger1 = movehit && numtarget(1330)
trigger1 = target(1330), dizzypoints > 0
trigger1 = (target(1330), stateno = 5000) || (target(1330), stateno = 5010) || (target(1330), stateno = 5020)
value = 1340
ID = 1330
ignorehitpause = 1

[State 1330, Wall Bounce Limit]
type = mapset
map = "wallbounce"
trigger1 = numtarget(1330)
trigger1 = target(1330), stateno = 1340
value = 1
ignorehitpause = 1

[State 1330, Juggle Reset]
type = varset
trigger1 = time >= 1
trigger1 = movehit = 1
trigger1 = numtarget(1330)
trigger1 = target(1330), stateno = 1340
var(15) = 0
ignorehitpause = 1

[State 1330, Flame Particles]
type = helper
trigger1 = time >= 1
trigger1 = animelemtime(9) >= 0
trigger1 = !numhelper(8150)
trigger1 = movehit = 1 && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flame Particles"
postype = p2
ownpal = 1
size.height = 60
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(10) >= 0
movetype = I

[State 1330, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<HIT by EX PSYCHO IMPACT>=============================
;--- Hit Pause ---
[Statedef 1340]
type = A
movetype = H
physics = N
velset = 0, 0

[State 1340, Anim]
type = changeanim
trigger1 = 1
value = 5012

[State 1340, End]
type = changestate
trigger1 = hitshakeover
value = 1341


;--- Falling ---
[Statedef 1341]
type = A
movetype = H
physics = N

[State 1341, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel) * 0.67

[State 1341, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1

[State 1341, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = (vel y < 0), 0

[State 1341, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1341, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 1341, Bounce]
type = changestate
trigger1 = time >= 4
trigger1 = backedgebodydist <= 0 || frontedgebodydist <= 0
value = 1342

[State 1341, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;--- Hitting Wall ---
[Statedef 1342]
type = A
movetype = H
physics = N

[State 1342, turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 1342, Pos]
type = posadd
trigger1 = 1
x = -backedgebodydist

[State 1342, Pos]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 1342, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0
[State 1342, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1342, Anim]
type = changeanim
trigger1 = 1
value = 5000

[State 1342, Snd]
type = playsnd
trigger1 = !time
value = F7, 2

[State 1342, FX]
type = explod
trigger1 = !time
anim = F72
postype = back
pos = 0, ceil((240.0 / gameheight) * (screenpos y + const(size.mid.pos.y)))
scale = (320.0 / gamewidth), (320.0 / gamewidth)
sprpriority = -5
ownpal = 1

[State 1342, End]
type = changestate
trigger1 = time >= 4
value = 1343


;--- Falling ---
[Statedef 1343]
type = A
movetype = H
physics = N

[State 1343, turn]
type = turn
trigger1 = !time

[State 1343, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 1343, Vel]
type = velset
trigger1 = !time
x = ((enemynear, pos x - pos x) * facing + 60) / 36.0
y = (pos y + 0.5 * 0.4850 * 36 ** 2) / -36.0

[State 1343, Vel]
type = velset
trigger1 = !time
trigger1 = vel x != [-9, 0]
x = ifelse(vel x < -9, -9, 0)


[State 1343, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)
[State 1343, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050
[State 1343, Anim]
type = changeanim
trigger1 = vel y > -3 && anim = 5051
value = 5061

[State 1343, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 1343, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1343, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;======================<PSYCHO FIELD>=============================
[Statedef 1600]
type = S
physics = S
movetype = A
anim = 1600
ctrl = 0
velset = 0, 0
poweradd = 50 * !var(20)
sprpriority = 2
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1600, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_z), 3, ifelse(map(str_y), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1600, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(p2bodydistx) > 180, 3, ifelse(map(p2bodydistx) > 120, 2, 1))
ignorehitpause = 1

[State 1600, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1600, Field]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 1605
ID = 1605
name = "Psycho Field"
postype = p1
pos = 47, -71
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1600, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 6
channel = 0
[State 1600, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 11

[State 1600, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<EX PSYCHO FIELD>=============================
[Statedef 1630]
type = S
physics = S
movetype = A
anim = 1600
ctrl = 0
velset = 0, 0
sprpriority = 2
facep2 = 1
poweradd = -500

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1630, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_z), 3, ifelse(map(str_y), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1630, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(p2bodydistx) > 180, 3, ifelse(map(p2bodydistx) > 120, 2, 1))
ignorehitpause = 1

[State 1630, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1630, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1630, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(47 * const(size.xscale)), ceil(-71 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1630, Field]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 1635
ID = 1635
name = "Psycho Field"
postype = p1
pos = 47, -71
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1630, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 6
channel = 0

[State 1630, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 11

[State 1630, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<VEGA WARP>=============================
[Statedef 1700]
type = S
physics = N
movetype = I
anim = 1700
velset = 0, 0
ctrl = 0
sprpriority = -1
facep2 = 1

[State 1700, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(cmd_623kkk), 2, ifelse(map(cmd_623ppp), 3, ifelse(map(cmd_421kkk), -2, -3)))
ignorehitpause = 1
persistent = 0

[State 1700, Strength]
type = varset
trigger1 = time <= 0 && !AIlevel
var(11) = ifelse(command = "/s", 1, 0)
ignorehitpause = 1

[State 1700, Strength]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(random < 500, 3, 2)
ignorehitpause = 1

[State 1700, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1700, NHB]
type = nothitby
triggerall = time >= 0
trigger1 = !var(11)
trigger1 = animelemtime(7) < 0
trigger2 = animelemtime(7) >= 0 && animelemtime(10) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 1700, fadeout]
type = trans
trigger1 = animelemtime(7) = [0, 10]
trans = addalpha
alpha = (256 -25 * (animelemtime(7))), (25 * (animelemtime(7)))
[State 1700, fadein]
type = trans
trigger1 = animelemtime(9) = [0, 10]
trans = addalpha
alpha = (25 * (animelemtime(9))), (256 -25 * (animelemtime(9)))

[State 1700, delay]
type = changeanim
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
trigger1 = !AIlevel && var(11) = 1 && command = "/s"
value = 1700
elem = ifelse(time >= 60, 10, 6)

[State 1700, Snd]
type = playsnd
trigger1 = animelem = 7
value = 4, 2
channel = 0
[State 1700, Snd]
type = playsnd
trigger1 = animelem = 7 || animelem = 9
value = 5, 6
[State 1700, FX]
type = helper
trigger1 = animelem = 7
helpertype = normal
stateno = 1705
ID = 1705
name = "Warp FX"
postype = p1
ownpal = 1

[State 1700, Vel]
type = velset
trigger1 = !var(11)
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
x = ifelse(var(10) = 3, 10, ifelse(var(10) = -3, -10, ifelse(var(10) = 2, 30, -30)))

[State 1700, Vel]
type = velset
trigger1 = animelem = 9
x = 0

[State 1700, Turn]
type = turn
trigger1 = animelem = 9
trigger1 = p2dist x < 0

[State 1700, FX]
type = helper
trigger1 = animelem = 9
helpertype = normal
stateno = 1706
ID = 1705
name = "Warp FX"
postype = p1
pos = 60, 0
ownpal = 1

[State 1700, Pos]
type = posadd
trigger1 = animelem = 1 || animelem = 2 || animelem = 3
x = ifelse((animelem = 1), -14, ifelse((animelem = 2), -8, -12))

[State 1700, Pos]
type = posadd
trigger1 = animelem = 13 || animelem = 14 || animtime = 0
x = ifelse((animelem = 13), 12, ifelse((animelem = 14), 8, 14))

[State 1700, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
