; _______________________________________
;| Edmond Honda by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;========================<HYAKURETSU HARITE>=============================
[Statedef 1000]
type = S
physics = N
movetype = A
anim = 1000
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1

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
var(10) = ifelse(map(str_z), 2, ifelse(map(str_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1000, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
trigger1 = numenemy
var(10) = ifelse((enemynear, gethitvar(hittime) <= 4), 0, ifelse((enemynear, gethitvar(hittime) <= 6), 1, 2))
ignorehitpause = 1

[State 1000, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1000, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1002, ifelse(var(10) = 1, 1001, 1000))

[State 1000, Snd]
type = playsnd
trigger1 = !animtime && (var(10) = 1 || var(10) = 2)
value = 0, 102

[State 1000, Dust]
type = helper
trigger1 = !animtime && (var(10) = 1 || var(10) = 2)
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 1010


;--- Looping ---
[Statedef 1010]
type = S
physics = N
movetype = A
anim = 1010
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1010, Strength]
type = varset
trigger1 = !time
var(11) = var(10)
ignorehitpause = 1

[State 1010, Strength]
type = varset
trigger1 = time && !AIlevel
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
var(11) = ifelse(map(cmd_z), 2, ifelse(map(cmd_y), 1, 0))
ignorehitpause = 1

[State 1010, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time && animelem = 5
var(11) = ifelse(random < 500, 2, ifelse(random < 500, 1, 0))
ignorehitpause = 1

[State 1010, AI Mash Punch Timer]
type = mapset
map = "check_mashp_timer"
trigger1 = AIlevel
trigger1 = numenemy
trigger1 = p2statetype != A && (map(p2bodydistx) = [0, 75])
value = 12
ignorehitpause = 1

[State 1010, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1012, ifelse(var(10) = 1, 1011, 1010))

[State 1010, Loop]
type = changeanim
triggerall = map(check_mashp_timer)
trigger1 = !animtime
trigger2 = anim = 1010
trigger2 = var(11) != 0 && animelemtime(5) >= 0
trigger3 = anim = 1011
trigger3 = var(11) != 1 && animelemtime(6) >= 0
value = ifelse(var(11) = 2, 1012, ifelse(var(11) = 1, 1011, 1010))
elem = 1

[State 1010, Accel]
type = veladd
trigger1 = vel x > 0
;x = ifelse(var(10) = 2, -0.88445, -0.6633375)
x = ifelse(var(10) = 2, -0.71862, -0.53896)
[State 1010, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1010, Vel]
type = velset
trigger1 = !time
trigger1 = prevstateno = 1000
;x = ifelse(var(10) = 2, 11.116, ifelse(var(10) = 1, 8.481, 0))
x = ifelse(var(10) = 2, 10.07, ifelse(var(10) = 1, 7.68, 0))

[State 1010, Snd]
type = playsnd
trigger1 = animelem = 1 || animelem = 4
trigger1 = var(10) != 2 || time >= (48 - 8 * hitcount)
value = 4, 0
channel = 0
[State 1010, Snd]
type = playsnd
trigger1 = !time
trigger1 = var(10) = 2
value = 4, 4
channel = 0

[State 1010, Snd]
type = playsnd
trigger1 = animelem = 1 || animelem = 4
value = 1, ifelse(var(11) = 2, 0, ifelse(var(11) = 1, 1, 2))
channel = 1

[State 1010, Spark XY]
type = null
trigger1 = animelem = 1
trigger1 = var(35) := 50 || var(36) := 120 || var(37) := -55
trigger2 = animelem = 3
trigger2 = var(35) := 50 || var(36) := 113 || var(37) := -26
trigger3 = animelem = 5
trigger3 = var(35) := 50 || var(36) := 111 || var(37) := -84

[State 1010, Hit High]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 1 || animelem = 5
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(anim = 1010, 35, 28), ifelse(anim = 1010, 9, 7)
dizzypoints = -ceil(20 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.00, -6.50
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10, -55
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1010, Hit Low]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(anim = 1010, 35, 28), ifelse(anim = 1010, 9, 7)
dizzypoints = -ceil(20 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.00, -6.50
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10, -55
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1010, End]
type = changestate
triggerall = !map(check_mashp_timer) || roundstate != 2
trigger1 = !animtime
trigger2 = anim = 1010 && animelem = 5
trigger3 = anim = 1011 && animelem = 6
value = 1020


;--- Recover ---
[Statedef 1020]
type = S
physics = N
movetype = I
anim = 1020
ctrl = 0
sprpriority = 2
movehitpersist = 1

[State 1020, Anim]
type = changeanim
trigger1 = !time
value = ifelse(anim = 1012, 1022, ifelse(anim = 1011, 1021, 1020))

[State 1020, Accel]
type = veladd
trigger1 = time && vel x > 0
x = ifelse(var(10) = 2, -0.88445, -0.6633375)
[State 1020, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1020, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<EX HYAKURETSU HARITE>=============================
[Statedef 1030]
type = S
physics = N
movetype = A
anim = 1030
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1030, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1030, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1030, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1030, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(-22 * const(size.xscale)), ceil(-47 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1030, Snd]
type = playsnd
trigger1 = !animtime
value = 0, 102
[State 1030, Dust]
type = helper
trigger1 = !animtime
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1030, End]
type = changestate
trigger1 = !animtime
value = 1031


;--- Looping ---
[Statedef 1031]
type = S
physics = N
movetype = A
anim = 1031
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1031, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.89828;-0.71862
[State 1031, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1031, Vel]
type = velset
trigger1 = !time
trigger1 = prevstateno = 1030
x = 12.44

[State 1031, Snd]
type = playsnd
trigger1 = !time
value = 4, 4
channel = 0

[State 1030, Snd]
type = playsnd
trigger1 = animelem = 1 || animelem = 4 || animelem = 7 || animelem = 10
value = 1, 2
channel = 1

[State 1031, Spark XY]
type = null
trigger1 = animelem = 1 || animelem = 7
trigger1 = var(35) := 50 || var(36) := 120 || var(37) := -55
trigger2 = animelem = 3 || animelem = 9
trigger2 = var(35) := 50 || var(36) := 113 || var(37) := -26
trigger3 = animelem = 5 || animelem = 11
trigger3 = var(35) := 50 || var(36) := 111 || var(37) := -84

[State 1031, Hit High]
type = hitdef
trigger1 = var(15) < 4
trigger1 = animelem = 1 || animelem = 5 || animelem = 9
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 25, 6
dizzypoints = -ceil(33 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 15
guard.hittime = 18
air.hittime = 120
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.40, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10, -55
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1031, Hit Low]
type = hitdef
trigger1 = var(15) < 4
trigger1 = animelem = 3 || animelem = 7 || animelem = 11
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 25, 6
dizzypoints = -ceil(33 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 15
guard.hittime = 18
air.hittime = 120
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.40, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10, -55
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1031, End]
type = changestate
trigger1 = !animtime
value = 1032


;--- Recover ---
[Statedef 1032]
type = S
physics = N
movetype = I
anim = 1032
ctrl = 0
sprpriority = 2
movehitpersist = 1

[State 1032, Accel]
type = veladd
trigger1 = time && vel x > 0
x = ifelse(var(10) = 2, -0.88445, -0.6633375)
[State 1032, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1032, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<SUPER ZUTSUKI>=============================
[Statedef 1100]
type = S
physics = N
movetype = A
anim = 1100
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1

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
var(10) = ifelse(map(str_z), 2, ifelse(map(str_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1100, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse((map(p2bodydistx) > 180 || p2movetype = H || var(20)), 2, ifelse(map(p2bodydistx) > 160, 1, 0))
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
value = ifelse(var(10) = 2, 1102, ifelse(var(10) = 1, 1101, 1100))

[State 1100, NHB]
type = nothitby
trigger1 = animelemtime(2) < 0
value = SCA
time = 1

[State 1100, Variable Height]
type = playerpush
trigger1 = statetype = A && numenemy
trigger1 = map(p2bodydistx) = [-(enemynear, const(size.ground.back) + enemynear, const(size.ground.front)), 0]
trigger1 = p2statetype = L
trigger1 = p2dist y >= -16
value = 0
ignorehitpause = 1

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 5
value = 0, 41

[State 1100, Dust]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1100, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
statetype = A
physics = N

[State 1100, Pos]
type = posadd
trigger1 = animelem = 3 || animelem = 4
x = 8 * const(size.xscale)

[State 1100, Pos]
type = posadd
trigger1 = animelem = 5
x = 16 * const(size.xscale)

[State 1100, Vel]
type = velset
trigger1 = animelem = 5
x = ifelse(var(10) = 2, 9.268, ifelse(var(10) = 1, 6.858, 4.864))
y = 0

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 2
channel = 0

[State 1100, Hit]
type = hitdef
trigger1 = animelem = 3 && var(10) = 0
trigger1 = var(15) < 1 || var(20)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 110, 28
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -4.00, -6.50
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.00, -6.50
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 21), var(37) := -87
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1100, Hit]
type = hitdef
trigger1 = animelem = 4 && var(10) != 2
trigger1 = var(15) < 1 || var(20)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(var(10) = 1, 111, 97), ifelse(var(10) = 1, 28, 25)
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -4.00, -6.50
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.00, -6.50
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -66
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1100, Hit]
type = hitdef
trigger1 = animelem = 4 && var(10) = 2
trigger1 = var(15) < 1 || var(20)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 120, 30
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -4.00, -6.50
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.00, -6.50
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -66
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1100, Hit]
type = hitdef
trigger1 = animelem = 5
trigger1 = !movecontact && !movereversed
trigger1 = var(15) < 1 || var(20)
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ifelse(var(10) = 2, 111, ifelse(var(10) = 1, 97, 76)), ifelse(var(10) = 2, 28, ifelse(var(10) = 1, 25, 19))
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -4.00, -6.50
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.00, -6.50
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 59), var(37) := -47
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1100, End]
type = changestate
trigger1 = !animtime
trigger2 = animelemtime(4) > 0
trigger2 = movecontact || movereversed
trigger3 = animelemtime(5) >= 11
trigger3 = frontedgebodydist <= 0
value = 1110


;--- Recover ---
[Statedef 1110]
type = A
physics = N
movetype = I
anim = 1110
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1110, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1112, ifelse(var(10) = 1, 1111, 1110))

[State 1110, Accel]
type = veladd
trigger1 = vel x < 0
x = 0.1796539
[State 1110, Vel]
type = velset
trigger1 = vel x > 0
x = 0

[State 1110, Vel]
type = velset
trigger1 = !time
trigger1 = movecontact = 1 || movereversed = 1
x = -5.66
y = 0

[State 1110, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
statetype = S
physics = N

[State 1110, Pos]
type = posset
trigger1 = animelem = 5
y = 0
[State 1110, Vel]
type = velset
trigger1 = animelem = 5
x = 0
y = 0

[State 1110, Snd]
type = playsnd
trigger1 = animelem = 5
value = 0, 52
[State 1110, Dust]
type = explod
trigger1 = animelem = 5
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1110, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<EX SUPER ZUTSUKI>=============================
[Statedef 1130]
type = S
physics = N
movetype = A
anim = 1130
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

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
trigger1 = !AIlevel
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
type = varset
trigger1 = !time
var(25) = 30
[State 1130, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1130, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(0 * const(size.xscale)), ceil(-82 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1130, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1

[State 1130, Variable Height]
type = playerpush
trigger1 = statetype = A && numenemy
trigger1 = map(p2bodydistx) = [-(enemynear, const(size.ground.back) + enemynear, const(size.ground.front)), 0]
trigger1 = p2statetype = L
trigger1 = p2dist y >= -16
value = 0
ignorehitpause = 1

[State 1130, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 1130, Snd]
type = playsnd
trigger1 = animelem = 5
value = 0, 41

[State 1130, Dust]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1130, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
statetype = A
physics = N

[State 1110, Pos]
type = posadd
trigger1 = animelem = 3 || animelem = 4
x = 8 * const(size.xscale)

[State 1110, Pos]
type = posadd
trigger1 = animelem = 5
x = 16 * const(size.xscale)

[State 1130, Vel]
type = velset
trigger1 = animelem = 5
x = 12.357
y = 0

[State 1130, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 2
channel = 0

[State 1130, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = var(15) < 2
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 35, 9
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.00, -6.50
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -66
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1130, Hit]
type = hitdef
trigger1 = animelem = 5
trigger1 = var(15) < 3
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 100, 25
dizzypoints = -ceil(150 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -4.00, -6.50
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.00, -6.50
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 59), var(37) := -47
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1130, End]
type = changestate
trigger1 = !animtime
trigger2 = animelemtime(5) > 0
trigger2 = movecontact = 1 || movereversed = 1
trigger3 = animelemtime(5) >= 11
trigger3 = frontedgebodydist <= 0
value = 1131


;--- Recover ---
[Statedef 1131]
type = A
physics = N
movetype = I
anim = 1131
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1131, Accel]
type = veladd
trigger1 = vel x < 0
x = 0.1796539
[State 1131, Vel]
type = velset
trigger1 = vel x > 0
x = 0

[State 1131, Vel]
type = velset
trigger1 = !time
trigger1 = movecontact = 1 || movereversed = 1
x = -5.66
y = 0

[State 1131, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
statetype = S
physics = N

[State 1131, Pos]
type = posset
trigger1 = animelem = 5
y = 0
[State 1131, Vel]
type = velset
trigger1 = animelem = 5
x = 0
y = 0

[State 1131, Snd]
type = playsnd
trigger1 = animelem = 5
value = 0, 52
[State 1131, Dust]
type = explod
trigger1 = animelem = 5
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1131, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<SUPER HYAKKAN OTOSHI>=============================
[Statedef 1200]
type = S
physics = S
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1
juggle = 7 * !var(20)

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1200, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_c), 2, ifelse(map(str_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1200, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(var(20), 1, ifelse(map(p2bodydistx) > 102, 2, ifelse(map(p2bodydistx) > 88, 1, 0)))
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

[State 1200, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1202, ifelse(var(10) = 1, 1201, 1200))

[State 1200, NHB]
type = nothitby
trigger1 = animelemtime(5) < 0
value = SCA
time = 1

[State 1200, Snd]
type = playsnd
trigger1 = animelemtime(3) = 1
value = 0, 40
[State 1200, Dust]
type = helper
trigger1 = animelemtime(3) = 1
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1200, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 1
statetype = A
physics = N

[State 1200, Accel]
type = veladd
trigger1 = vel x > 0
x = ifelse(var(10) = 2, -1.5270582, ifelse(var(10) = 1, -1.0779234, -0.8982695)); 40960, 49152, 69632
[State 1200, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1200, Accel]
type = veladd
trigger1 = animelemtime(3) >= 1 && animelemtime(6) < 0
y = 0.1105563
[State 1200, Accel]
type = veladd
trigger1 = animelemtime(11) >= 0
y = 0.5251422

[State 1200, Vel]
type = velset
trigger1 = animelemtime(3) = 1
x = ifelse(var(10) = 2, 19.82, ifelse(var(10) = 1, 12.81, 10.70)); 138.5, 82.5, 69
y = ifelse(var(10) = 2, -7.89, ifelse(var(10) = 1, -6.65, -5.31)); 93.9375, 72.5, 56.5
[State 1200, Vel]
type = velset
trigger1 = animelemtime(6) >= 0 && animelemtime(11) < 0
x = 0
y = 0
[State 1200, Vel]
type = velset
trigger1 = animelem = 11
x = 0
y = 5.32

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5, 1
channel = 0
[State 1200, Snd]
type = playsnd
trigger1 = animelem = 11
value = 1, 5
channel = 1

[State 1200, Hit]
type = hitdef
trigger1 = animelem = 5 && var(10) != 2
trigger1 = var(15) < 1 || var(20)
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ifelse(var(10) = 1, 111, 97), ifelse(var(10) = 1, 28, 25)
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -3.25, -7.40
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -3.25, -7.40
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -66
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1200, Hit]
type = hitdef
trigger1 = animelem = 12
trigger1 = var(15) < 1 || var(20)
ID = 1200
attr = A, SA
hitflag = MAFD
guardflag = HA
priority = 4, Hit
damage = ifelse(var(10) = 2, 111, ifelse(var(10) = 1, 97, 76)), ifelse(var(10) = 2, 28, ifelse(var(10) = 1, 25, 19))
dizzypoints = -ceil(150 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 12
air.hittime = 120
airguard.ctrltime = 16
down.hittime = 20
ground.velocity = -5.40, -6.57
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.40, -6.57
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
down.velocity = 0, 0
down.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 30), var(37) := -15
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1200, P2 State]
type = targetstate
trigger1 = movehit && numtarget(1200)
trigger1 = !(target(1200), time)
trigger1 = (target(1200), stateno = 5000) || (target(1200), stateno = 5010)
value = 5980
ID = 1200
ignorehitpause = 1

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
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1210


;--- Recover ---
[Statedef 1210]
type = S
physics = S
movetype = I
anim = 1210
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1210, Pos]
type = posset
trigger1 = 1
y = 0

[State 1210, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1210, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target Slammed Against Ground ---
[Statedef 5980]
type = A
movetype = H
physics = N
velset = 0, 0

[State 5980, Anim]
type = changeanim
trigger1 = 1
value = ifelse(selfanimexist(5420), 5420, 5012)

[State 5980, End]
type = selfstate
trigger1 = hitshakeover && pos y < 0
value = 5030

[State 5980, End]
type = changestate
trigger1 = hitshakeover && pos y >= 0
value = 5981


[Statedef 5981]
type = L
movetype = H
physics = N
velset = 0, 0

[State 5981, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5101), 5101, 5100)

[State 5981, Pos]
type = posset
trigger1 = 1
y = 0

[State 5981, Damage]
type = hitfalldamage
trigger1 = !time

[State 5981, Shake]
type = envshake
trigger1 = !time
time = 12
ampl = 2
freq = 180

[State 5981, Snd]
type = playsnd
trigger1 = !time
value = F7, 2

[State 5981, FX]
type = explod
trigger1 = !time
anim = F62
postype = p1
pos = 0, 0
sprpriority = -3

[State 5981, End]
type = changestate
trigger1 = !animtime
value = 5982


[Statedef 5982]
type = L
movetype = H
physics = N

[State 5982, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5161), 5161, 5160)

[State 5982, Pos]
type = posset
trigger1 = !time
y = 0

[State 5982, Vel]
type = velset
trigger1 = !time
y = -2.4

[State 5982, accel]
type = veladd
trigger1 = 1
y = 0.6

[State 5982, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 12
value = 5110


;========================<EX SUPER HYAKKAN OTOSHI>=============================
[Statedef 1230]
type = S
physics = S
movetype = A
anim = 1230
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500
facep2 = 1
juggle = 7 * !var(20)

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1230, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1230, Lose Charge]
type = mapset
map = "charge2"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 0
ignorehitpause = 1
persistent = 0

[State 1230, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1230, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1230, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1230, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(0 * const(size.xscale)), ceil(-82 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1230, NHB]
type = nothitby
trigger1 = animelemtime(5) < 0
value = SCA
time = 1

[State 1230, Snd]
type = playsnd
trigger1 = animelemtime(3) = 1
value = 0, 40
[State 1230, Dust]
type = helper
trigger1 = animelemtime(3) = 1
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1230, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 1
statetype = A
physics = N

[State 1230, Accel]
type = veladd
trigger1 = vel x > 0
x = -1.84
[State 1230, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1230, Accel]
type = veladd
trigger1 = animelemtime(3) >= 1 && animelemtime(6) < 0
y = 0.1105563
[State 1230, Accel]
type = veladd
trigger1 = animelemtime(11) >= 0
y = 0.5251422

[State 1230, Vel]
type = velset
trigger1 = animelemtime(3) = 1
x = 24.33
y = -8.76
[State 1230, Vel]
type = velset
trigger1 = animelemtime(6) >= 0 && animelemtime(11) < 0
x = 0
y = 0
[State 1230, Vel]
type = velset
trigger1 = animelem = 11
x = 0
y = 5.32

[State 1230, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5, 1
channel = 0
[State 1230, Snd]
type = playsnd
trigger1 = animelem = 11
value = 1, 5
channel = 1

[State 1230, Hit]
type = hitdef
trigger1 = animelem = 5
trigger1 = var(15) < 2
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 35, 9
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -2.16, -7.40
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -2.16, -7.40
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -66
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1230, Hit]
type = hitdef
trigger1 = animelem = 12
trigger1 = var(15) < 2
ID = 1230
attr = A, SA
hitflag = MAFD
guardflag = HA
priority = 4, Hit
damage = 90, 23
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 12
air.hittime = 120
airguard.ctrltime = 16
down.hittime = 20
ground.velocity = -3.25, -7.40
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -3.25, -7.40
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
down.velocity = 0, 0
down.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 30), var(37) := -15
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1230, P2 State]
type = targetstate
trigger1 = movehit && numtarget(1230)
trigger1 = !(target(1230), time)
trigger1 = (target(1230), stateno = 5000) || (target(1230), stateno = 5010)
value = 5980
ID = 1230
ignorehitpause = 1

[State 1230, OTG - Stay Down]
redirectID = target(1230), ID
type = selfstate
trigger1 = movehit = 1
trigger1 = numtarget(1230)
trigger1 = target(1230), pos y >= -24
trigger1 = target(1230), stateno = 5020 || target(1230), stateno = 5070
trigger1 = target(1230), prevstateno = [5100, 5101]
trigger1 = target(1230), alive && target, hitfall
value = 5080
ignorehitpause = 1

[State 1230, OTG - Stay Down]
redirectID = target(1230), ID
type = posset
trigger1 = numtarget(1230)
trigger1 = target(1230), pos y
trigger1 = target(1230), stateno = 5080
y = 0
ignorehitpause = 1

[State 1230, End]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1231


;--- Recover ---
[Statedef 1231]
type = S
physics = S
movetype = I
anim = 1231
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1231, Pos]
type = posset
trigger1 = 1
y = 0

[State 1231, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1231, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1231, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<OOICHOU NAGE>=============================
[Statedef 1300]
type = S
physics = S
movetype = A
anim = 1300
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

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
var(10) = ifelse(map(str_z), 2, ifelse(map(str_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1300, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(p2bodydistx) <= ceil(32 * const(size.xscale)), 2, ifelse(map(p2bodydistx) <= ceil(31 * const(size.xscale)), 1, 0))
ignorehitpause = 1

[State 1300, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1300, Guard Dist]
type = attackdist
trigger1 = 1
value = 0

[State 1300, Hit]
type = hitdef
triggerall = animelem = 2
triggerall = !map(unthrowable) && numenemy
triggerall = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
trigger1 = var(10) = 0 && map(p2bodydistx) <= ceil(32 * const(size.xscale))
trigger2 = var(10) = 1 && map(p2bodydistx) <= ceil(31 * const(size.xscale))
trigger3 = var(10) = 2 && map(p2bodydistx) <= ceil(30 * const(size.xscale))
attr = S, ST
hitflag = M
priority = 7, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 72), var(37) := -60
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 0
fall.xvelocity = 0
fall.yvelocity = 0
numhits = 0
p1stateno = 1310
p2stateno = 1315

[State 1300, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 800
channel = 0
[State 1300, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 0
channel = 1

[State 1300, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
[State 1300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Throw ---
[Statedef 1310]
type = A
physics = N
movetype = A
anim = 1310
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1310, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 1310, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 1315
[State 1310, Throw]
type = targetfacing
trigger1 = time <= 3
value = 1

[State 1310, Throw]
type = targetstate
trigger1 = numtarget && animelem = 7
value = 1316

[State 1310, Width]
type = width
trigger1 = animelemtime(3) < 0
edge = ceil(18 * const(size.xscale)), 0
[State 1310, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
edge = ceil(79 * const(size.xscale)), 0
[State 1310, Width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(7) < 2
edge = ceil(87 * const(size.xscale)), 0
[State 1310, Width]
type = width
trigger1 = animelemtime(7) >= 2
edge = ceil(56 * const(size.xscale)), 0

[State 1310, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
pos = 21 * const(size.xscale), -115 * const(size.yscale)

[State 1310, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 56 * const(size.xscale), -112 * const(size.yscale)

[State 1310, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 90 * const(size.xscale), -98 * const(size.yscale)

[State 1310, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(7) < 0
pos = 87 * const(size.xscale), -8 * const(size.yscale)

;[State 1310, Bind 7]
;type = targetbind
;trigger1 = numtarget
;trigger1 = animelemtime(7) = 0
;pos = 112 * const(size.xscale), 0

[State 1310, Damage]
type = targetlifeadd
trigger1 = numtarget && animelem = 4
value = floor(-40 * fvar(10))
kill = 0

[State 1310, Power]
type = targetpoweradd
trigger1 = numtarget && animelem = 4
value = 40;givepower

[State 1310, Power]
type = poweradd
trigger1 = animelem = 4 && !var(20)
value = 100;getpower

[State 1310, Hit]
type = hitadd
trigger1 = numtarget && animelem = 4
value = 1

[State 1310, Juggle]
type = varadd
trigger1 = numtarget && animelem = 4
var(15) = 1
ignorehitpause = 1

[State 1310, Accel]
type = veladd
trigger1 = animelemtime(7) >= 2
x = 0
y = 0.88445
[State 1310, Vel]
type = velset
trigger1 = animelemtime(7) = 2
x = 2.44; Moves 76 pixels, ends at 56.75 from P2
y = -10.51; 68

[State 1310, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 0
channel = 0
[State 1310, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 1310, Snd]
type = playsnd
trigger1 = animelemtime(7) = 2
value = 0, 40
[State 1310, Dust]
type = helper
trigger1 = animelemtime(7) = 2
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1310, Sound]
type = playsnd
trigger1 = numtarget && animelem = 4
value = 0, 5100

[State 1310, Shake]
type = envshake
trigger1 = numtarget && animelem = 4
time = 12
ampl = 2
freq = 180

[State 1310, Dust]
type = helper
trigger1 = numtarget && animelem = 4
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = ceil(84 * const(size.xscale)), 0
ownpal = 1

[State 1310, End]
type = changestate
trigger1 = animelemtime(7) >= 2
trigger1 = vel y > 0 && pos y > (24 - vel y)
value = 1311


;--- Slam ---
[Statedef 1311]
type = A
physics = N
movetype = A
anim = 1311
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1311, Pos]
type = posset
trigger1 = animelemtime(4) < 0
y = -16
[State 1311, Pos]
type = posadd
trigger1 = animelem = 4
x = 80 * const(size.xscale)

[State 1311, Damage]
type = targetlifeadd
trigger1 = numtarget && !time
value = floor(fvar(10) * ifelse(var(10) = 2, -120, ifelse(var(10) = 1, -110, -100)))
kill = 1

;[State 1311, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = !time
;trigger1 = numtarget
;value = -ceil(100 * fvar(10)) * !var(20)

[State 1311, Power]
type = targetpoweradd
trigger1 = numtarget && !time
value = 40;givepower

[State 1311, Hit]
type = hitadd
trigger1 = numtarget && !time
value = 1

[State 1311, Juggle]
type = varadd
trigger1 = numtarget && !time
var(15) = 1
ignorehitpause = 1

[State 1311, Throw]
type = targetstate
trigger1 = numtarget && !time
value = 1318

[State 1310, Width]
type = width
trigger1 = animelemtime(4) < 0
edge = ceil(56 * const(size.xscale)), 0

[State 1311, Sound]
type = playsnd
trigger1 = numtarget && !time
value = 2, 5
channel = 2

[State 1311, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget && !time
helpertype = normal
stateno = 8013
ID = 8000
name = "Spark"
postype = p1
pos = ceil(64 * const(size.xscale)), ceil(6 * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1311, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = numtarget && !time
anim = F2
ID = 8000
postype = p1
pos = ceil(64 * const(size.xscale)), ceil(6 * const(size.yscale))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 1311, Sound]
type = playsnd
trigger1 = numtarget && !time
value = 0, 5100

[State 1311, Shake]
type = envshake
trigger1 = numtarget && !time
time = 12
ampl = 2
freq = 180

[State 1311, Dust]
type = helper
trigger1 = numtarget && !time
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = ceil(47 * const(size.xscale)), ceil(-pos y)
ownpal = 1

[State 1311, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
y = 0.88445
[State 1311, Vel]
type = velset
trigger1 = animelem = 4
x = -2.68;1.61;69.66 41.66; 50
y = -10.53;84

[State 1311, End]
type = changestate
trigger1 = animelemtime(4) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1312


;--- Land ---
[Statedef 1312]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1312
velset = 0, 0
sprpriority = 2

[State 1312, Pos]
type = posset
trigger1 = 1
y = 0

[State 1312, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1312, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -10
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1312, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target ---
[Statedef 1315]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 1

[State 1315, Anim]
type = changeanim2
trigger1 = !time
value = 1315

[State 1315, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 1315, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1316]
type = L
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 1316, Anim]
type = changeanim2
trigger1 = !time
value = 1316
[State 1316, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1316, Pos]
type = posadd
trigger1 = !time
x = 21
[State 1316, Pos]
type = posset
trigger1 = !time
y = 0

[State 1316, Accel]
type = veladd
trigger1 = vel x
x = ifelse(vel x >= 1.326675, -1.326675, -vel x)
[State 1316, Accel]
type = veladd
trigger1 = 1
y = 1.326675

[State 1316, Vel]
type = velset
trigger1 = !time
x = 6.02; 16.8; 20, 125
y = -5.3067

[State 1316, End]
type = changestate
trigger1 = time >= 8
value = 1317


[Statedef 1317]
type = L
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1317, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 1317, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1317, Pos]
type = posset
trigger1 = 1
y = 0

[State 1317, Anim]
type = changeanim
trigger1 = !time
value = 5170
[State 1317, Anim]
type = changeanim
trigger1 = anim != 5110 && !animtime
value = 5110

[State 1317, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1317, End]
type = selfstate
trigger1 = time >= 60
value = ifelse(alive, 5120, 5150)


[Statedef 1318]
type = L
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1318, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 1318, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1318, Pos]
type = posset
trigger1 = 1
y = 0

[State 1318, Anim]
type = changeanim
trigger1 = !time
value = 5080
[State 1318, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1318, End]
type = changestate
trigger1 = time >= 45
value = 1319


[Statedef 1319]
type = L
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1319, Pos]
type = posset
trigger1 = 1
y = 0

[State 1319, Anim]
type = changeanim
trigger1 = !time
value = 5110
[State 1319, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1319, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzylyingdown)

[State 1319, End]
type = selfstate
trigger1 = time >= 12
value = ifelse(alive, 5120, 5150)


;========================<EX OOICHOU NAGE>=============================
[Statedef 1330]
type = S
physics = S
movetype = A
anim = 1330
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

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
type = varset
trigger1 = !time
var(25) = 30
[State 1330, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1330, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(43 * const(size.xscale)), ceil(-35 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1330, Guard Dist]
type = attackdist
trigger1 = 1
value = 0

[State 1330, NHB]
type = nothitby
trigger1 = animelemtime(2) < 1
value = , NT
time = 1
ignorehitpause = 1

[State 1330, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= ceil(34 * const(size.xscale))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = S, ST
hitflag = M
priority = 7, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 72), var(37) := -60
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 0
fall.xvelocity = 0
fall.yvelocity = 0
numhits = 0
p1stateno = 1340
p2stateno = 1315

[State 1330, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 800
channel = 0
[State 1330, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 0
channel = 1

[State 1330, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
[State 1330, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Throw ---
[Statedef 1340]
type = A
physics = N
movetype = A
anim = 1340
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1340, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 1340, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 1315
[State 1340, Throw]
type = targetfacing
trigger1 = time <= 3
value = 1

[State 1340, Throw]
type = targetstate
trigger1 = numtarget && animelem = 7
value = 1316

[State 1340, Width]
type = width
trigger1 = animelemtime(3) < 0
edge = ceil(18 * const(size.xscale)), 0
[State 1340, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
edge = ceil(79 * const(size.xscale)), 0
[State 1340, Width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(7) < 2
edge = ceil(87 * const(size.xscale)), 0
[State 1340, Width]
type = width
trigger1 = animelemtime(7) >= 2
edge = ceil(56 * const(size.xscale)), 0

[State 1340, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
pos = 21 * const(size.xscale), -115 * const(size.yscale)

[State 1340, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 56 * const(size.xscale), -112 * const(size.yscale)

[State 1340, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 90 * const(size.xscale), -98 * const(size.yscale)

[State 1340, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(7) < 0
pos = 87 * const(size.xscale), -8 * const(size.yscale)

;[State 1340, Bind 7]
;type = targetbind
;trigger1 = numtarget
;trigger1 = animelemtime(7) = 0
;pos = 112 * const(size.xscale), 0

[State 1340, Damage]
type = targetlifeadd
trigger1 = numtarget && animelem = 4
value = floor(-40 * fvar(10))
kill = 0

[State 1340, Power]
type = targetpoweradd
trigger1 = numtarget && animelem = 4
value = 40;givepower

[State 1340, Hit]
type = hitadd
trigger1 = numtarget && animelem = 4
value = 1

[State 1340, Juggle]
type = varadd
trigger1 = numtarget && animelem = 4
var(15) = 1
ignorehitpause = 1

[State 1340, Accel]
type = veladd
trigger1 = animelemtime(7) >= 2
x = 0
y = 1.326675
[State 1340, Vel]
type = velset
trigger1 = animelemtime(7) = 2
x = 2.72
y = -14.09


[State 1340, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 0
channel = 0
[State 1340, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 1340, Snd]
type = playsnd
trigger1 = animelemtime(7) = 2
value = 0, 40
[State 1340, Dust]
type = helper
trigger1 = animelemtime(7) = 2
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1340, Sound]
type = playsnd
trigger1 = numtarget && animelem = 4
value = 0, 5100

[State 1340, Shake]
type = envshake
trigger1 = numtarget && animelem = 4
time = 12
ampl = 2
freq = 180

[State 1340, Dust]
type = helper
trigger1 = numtarget && animelem = 4
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = ceil(84 * const(size.xscale)), 0
ownpal = 1

[State 1340, End]
type = changestate
trigger1 = animelemtime(7) >= 2
trigger1 = vel y > 0 && pos y > (24 - vel y)
value = 1341


;--- Slam ---
[Statedef 1341]
type = A
physics = N
movetype = A
anim = 1311
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1341, Pos]
type = posset
trigger1 = animelemtime(4) < 0
y = -16
[State 1341, Pos]
type = posadd
trigger1 = animelem = 4
x = 80 * const(size.xscale)

[State 1341, Damage]
type = targetlifeadd
trigger1 = numtarget && !time
value = floor(fvar(10) * -130)
kill = 1

;[State 1341, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = !time
;trigger1 = numtarget
;value = -ceil(150 * fvar(10)) * !var(20)

[State 1341, Power]
type = targetpoweradd
trigger1 = numtarget && !time
value = 40;givepower

[State 1341, Hit]
type = hitadd
trigger1 = numtarget && !time
value = 1

[State 1341, Juggle]
type = varadd
trigger1 = numtarget && !time
var(15) = 1
ignorehitpause = 1

[State 1341, Throw]
type = targetstate
trigger1 = numtarget && !time
value = 1318

[State 1340, Width]
type = width
trigger1 = animelemtime(4) < 0
edge = ceil(56 * const(size.xscale)), 0

[State 1341, Sound]
type = playsnd
trigger1 = numtarget && !time
value = 2, 5
channel = 2

[State 1341, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget && !time
helpertype = normal
stateno = 8013
ID = 8000
name = "Spark"
postype = p1
pos = ceil(64 * const(size.xscale)), ceil(6 * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1341, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = numtarget && !time
anim = F2
ID = 8000
postype = p1
pos = ceil(64 * const(size.xscale)), ceil(6 * const(size.yscale))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 1341, Sound]
type = playsnd
trigger1 = numtarget && !time
value = 0, 5100

[State 1341, Shake]
type = envshake
trigger1 = numtarget && !time
time = 12
ampl = 2
freq = 180

[State 1341, Dust]
type = helper
trigger1 = numtarget && !time
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = ceil(47 * const(size.xscale)), ceil(-pos y)
ownpal = 1

[State 1341, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
y = 0.88445
[State 1341, Vel]
type = velset
trigger1 = animelem = 4
x = -3.2
y = -10.53

[State 1341, End]
type = changestate
trigger1 = animelemtime(4) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1342


;--- Land ---
[Statedef 1342]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1312
velset = 0, 0
sprpriority = 2

[State 1342, Pos]
type = posset
trigger1 = 1
y = 0

[State 1342, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1342, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1342, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<PUNCH ZERO COUNTER>=============================
[Statedef 2900]
type = S
physics = N
movetype = A
anim = 2900
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State 2900, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2900, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 3
channel = 0
[State 2900, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 2900, Hit]
type = hitdef
trigger1 = animelem = 3
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 13
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -5.54, -5.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.54, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 95), var(37) := -64
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
kill = 0

[State 2900, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 2900, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<KICK ZERO COUNTER>=============================
[Statedef 2910]
type = S
physics = N
movetype = A
anim = 2910
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State 2910, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2910, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 3
channel = 0
[State 2910, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 2
channel = 1

[State 2910, Hit]
type = hitdef
trigger1 = animelem = 4
attr = C, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 13
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -5.54, -5.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.54, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 102), var(37) := -48
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
kill = 0

[State 2910, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 2910, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
