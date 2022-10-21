; ______________________________
;| Guy by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================<NORMAL STATES>========================================
;============================================================================================

;=======================<Standing Light Punch>========================
[Statedef 200]
type = S
movetype = A
physics = S
anim = 200
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 3, ifelse(random < 500, 2, 3)
channel = 0

[State 200, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 200, Hit]
type = hitdef
trigger1 = anim = 200 && animelem = 2
trigger1 = var(15) < 1 || var(20)
attr = S, NA
damage = 20, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 75), var(37) := -84
hitsound = -1 + 0 * (var(31) := 1)
guardsound = -1
ground.type = High
ground.hittime = 12 + 2 * map(counterhit)
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 200, Bushin Chain]
type = changestate
triggerall = (movecontact + movereversed) = [1, 4]
trigger1 = !AIlevel
trigger1 = map(cmd_y)
trigger2 = AIlevel
trigger2 = p2statetype = S || p2statetype = C
trigger2 = random < (500 * (AIlevel ** 2 / 64.0))
value = 290

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Medium Punch>========================
[Statedef 210]
type = S
movetype = A
physics = S
anim = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 30), 211, 210)
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 210, Dodge]
type = changeanim
trigger1 = !time
trigger1 = anim != 210
trigger1 = prevstateno = 710
value = 210

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 3, 5)
channel = 0

[State 210, Snd]
type = playsnd
trigger1 = anim = 210 && animelem = 4
trigger2 = anim = 211 && animelem = 3
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 210, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4 && anim = 210
attr = S, NA
damage = 60, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 100), var(37) := -58
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
ground.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 210, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3 && anim = 211
attr = S, NA
damage = 60, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 70), var(37) := -54
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
ground.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 210, Target Combo]
type = changestate
triggerall = anim = 211
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_z)
trigger1 = command != "holddown"
trigger2 = AILevel
trigger2 = random < (1000 * (AIlevel ** 2 / 64.0))
value = 225

[State Idle]
type = statetypeset
trigger1 = anim = 210 && animelemtime(5) >= 0
trigger2 = anim = 211 && animelemtime(4) >= 0
movetype = I

[State 210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Kubi Kudaki>========================
[Statedef 215]
type = S
movetype = A
physics = S
anim = 215
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 215, Width]
type = width
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
player = ceil(40 * const(size.xscale)), 0

[State 215, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 5
value = 3, ifelse((animelem = 5), 6, 3)
channel = 0

[State 215, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 215, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 5
attr = S, NA
damage = 30, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 55) * (var(36) := 80), var(37) := -62
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
ground.type = High
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 215, Hit 2]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 6
attr = S, NA
damage = 30, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 80) * (var(36) := 105), var(37) := -50
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
ground.type = Low
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 215, Pos]
type = posadd
trigger1 = animelem = 8 || animelem = 9 || animtime = 0
x = ifelse((animelem = 9), 18, ifelse((animelem = 8), 18, 9)) * const(size.xscale)

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 215, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Hard Punch>========================
[Statedef 220]
type = S
movetype = A
physics = S
anim = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 46), 221, 220)
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 5, 6)
channel = 0

[State 220, Snd]
type = playsnd
trigger1 = anim = 220 && animelem = 3
trigger2 = anim = 221 && animelem = 4
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 220, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3 && anim = 220
attr = S, NA
damage = 100, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 110), var(37) := -72
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 220, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4 && anim = 221
attr = S, NA
damage = 100, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 80), var(37) := -74
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = Low
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
forcestand = 1

[State 220, Anim]
type = changeanim
trigger1 = anim = 220
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 10
value = 220
elem = 4
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = anim = 220 && animelemtime(5) >= 0
trigger2 = anim = 221 && animelemtime(6) >= 0
movetype = I

[State 220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Target Combo 1>========================
[Statedef 225]
type = S
movetype = A
physics = S
anim = 221
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 2
value = 3, ifelse(random < 500, 5, 6)
channel = 0

[State 225, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 225, Pos]
type = posadd
trigger1 = animelem = 1
x = 24 * const(size.xscale)

[State 225, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = var(15) < 1 || var(20)
attr = S, NA
damage = 45, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 80), var(37) := -74
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = Low
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 225, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Light Kick>========================
[Statedef 230]
type = S
movetype = A
physics = S
anim = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 30), 231, 230)
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 2, 3)
channel = 0

[State 230, Snd]
type = playsnd
trigger1 = anim = 230 && animelem = 4
trigger2 = anim = 231 && animelem = 3
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 230, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4 && anim = 230
attr = S, NA
damage = 40, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 120), var(37) := -89
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1
ground.type = High
ground.hittime = 12 + 2 * map(counterhit)
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 230, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3 && anim = 231
attr = S, NA
damage = 20, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 66), var(37) := -12
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1
ground.type = Low
ground.hittime = 12 + 2 * map(counterhit)
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State Idle]
type = statetypeset
trigger1 = anim = 230 && animelemtime(5) >= 0
trigger2 = anim = 231 && animelemtime(4) >= 0
movetype = I

[State 230, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Medium Kick>========================
[Statedef 240]
type = S
movetype = A
physics = S
anim = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 46), 241, 240)
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 3 && random < 350
value = 3, ifelse(random < 500, 3, 5)
channel = 0

[State 240, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 240, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4 && anim = 240
attr = S, NA
damage = 70, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 136), var(37) := -58
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
ground.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 240, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4 && anim = 241
attr = S, NA
damage = 80, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 100), var(37) := -61
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
ground.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 240, Target Combo]
type = changestate
triggerall = anim = 241
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_b)
trigger1 = command != "holddown"
trigger2 = AILevel
trigger2 = random < (500 * (AIlevel ** 2 / 64.0))
value = 245

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 240, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Medium Kick Target Combo>========================
[Statedef 245]
type = S
movetype = A
physics = S
anim = 245
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 2
value = 3, ifelse(random < 500, 3, 5)
channel = 0

[State 245, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 245, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
attr = S, NA
damage = 40, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 93), var(37) := -84
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
ground.type = High
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 245, Target Combo]
type = changestate
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_b)
trigger1 = command != "holddown"
trigger2 = AILevel
value = 246

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 245, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;---Third---
[Statedef 246]
type = S
movetype = A
physics = S
anim = 246
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 2
value = 3, ifelse(random < 500, 3, 5)
channel = 0

[State 246, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 246, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
attr = S, NA
damage = 40, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 103), var(37) := -62
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
ground.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 246, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Hard Kick>========================
[Statedef 250]
type = S
movetype = A
physics = S
anim = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 48), 251, 250)
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 250, Dodge]
type = changeanim
trigger1 = !time
trigger1 = anim != 250
trigger1 = prevstateno = 710
value = 250

[State Snd]
type = playsnd
trigger1 = anim = 250 && animelem = 3 && random < 500
trigger2 = anim = 251 && animelem = 5 && random < 500
value = 3, ifelse(random < 500, 5, 6)
channel = 0

[State 250, Snd]
type = playsnd
trigger1 = anim = 250 && animelem = 3
trigger2 = anim = 251 && animelem = 6
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 250, Vel]
type = posadd
trigger1 = anim = 251 && (animelem = 3 || animelem = 4)
x = 24 * const(size.xscale)

[State 250, spr]
type = sprpriority
trigger1 = anim = 251
value = ifelse(animelemtime(7) >= 0, 1, -1)

[State 250, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3 && anim = 250
attr = S, NA
damage = 110, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 50) * (var(36) := 109), var(37) := -90
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 250, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 7 && anim = 251
attr = S, NA
damage = 100, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 56), var(37) := -92
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 250, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3 && anim = 250
trigger1 = prevstateno = 710
attr = S, NA
damage = 110, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Back
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 50) * (var(36) := 109), var(37) := -90
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = -6.48, -5.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.type = Low
air.hittime = 120
air.velocity = -6.48, -5.25
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 250, Anim]
type = changeanim
trigger1 = anim = 250
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 10
value = 250
elem = 4
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = anim = 250 && animelemtime(4) >= 0
trigger2 = anim = 251 && animelemtime(8) >= 0
movetype = I

[State 250, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<KAMAITACHI>========================
[Statedef 255]
type = S
movetype = A
physics = S
anim = 255
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 255, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(8) < 0
player = ceil(30 * const(size.xscale)), 0

[State 255, Snd]
type = playsnd
trigger1 = animelem = 4
value = 3, 5
channel = 0

[State 255, Snd]
type = playsnd
trigger1 = animelem = 3 || animelem = 5
value = 1, ifelse((animelem = 3), 5, 6)
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 255, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
attr = S, NA
damage = 40, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Hard
fall.animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 97), var(37) := -62
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = 0, -3
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 255, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 5
attr = S, NA
damage = 60, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype =  Back
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 97), var(37) := -62
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -3, -10
guard.hittime = 18
guard.ctrltime = 18
guard.slidetime = 18
guard.velocity = ifelse(var(20), -5.77, -10.52)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 60
air.velocity = -3, -8
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 255, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
statetype = A
physics = N

[State Gravity]
type = gravity
trigger1 = animelemtime(6) >= 0

[State 255, Vel]
type = velset
trigger1 = animelem = 6
x = -3
y = -6

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State Land]
type = changestate
trigger1 = animelemtime(6) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<BUSHIN GOKUSA KEN>========================
;--- < 2nd > ---
[Statedef 290]
type = S
movetype = A
physics = S
anim = 210
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 290, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(6) < 0
player = ceil(15 * const(size.xscale)), 0

[State 290, Vel]
type = velset
trigger1 = animelem = 2
x = 6
[State 290, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 290, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = animelem = 4
attr = S, NA
ID = 290
damage = 60, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 100), var(37) := -58
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
ground.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -5, -3
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 290, Bushin Chain]
type = changestate
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_z)
trigger2 = AIlevel
trigger2 = p2statetype = S || p2statetype = C
value = 291

[State 290, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- < 3rd > ---
[Statedef 291]
type = S
movetype = A
physics = S
anim = 291
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 291, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(7) < 0
player = ceil(15 * const(size.xscale)), 0

[State 291, Vel]
type = velset
trigger1 = animelem = 2
x = 6
[State 291, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, ifelse((anim = 211), 6, 3)
channel = 0

[State 291, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 291, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = animelem = 5
attr = S, NA
ID = 290
damage = 60, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 65) * (var(36) := 95), var(37) := -74
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -5, -3
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 291, Bushin Chain Throw]
type = changestate
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_z)
trigger1 = command = "holddown"
trigger2 = AIlevel
trigger2 = p2statetype = S || p2statetype = C
trigger2 = random < 333
value = 300

[State 291, Bushin Chain Kick]
type = changestate
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_c)
trigger2 = AIlevel
trigger2 = p2statetype = S || p2statetype = C
value = 292

[State 291, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- < 4th > ---
[Statedef 292]
type = S
movetype = A
physics = S
anim = 292
velset = 0, 0
poweradd = 0
sprpriority = -1
ctrl = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 292, Vel]
type = posadd
trigger1 = animelem = 1
x = 24 * const(size.xscale)

[State 292, Vel]
type = velset
trigger1 = animelem = 2
x = 9 * const(size.xscale)

[State 292, Snd]
type = playsnd
trigger1 = animelem = 2
value = 3, 8
channel = 0

[State 292, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 292, spr]
type = sprpriority
trigger1 = 1
value = ifelse(animelemtime(4) >= 0, 1, -1)

[State 292, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = animelem = 4
attr = S, NA
damage = 60, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Back
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 60), var(37) := -92
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = -4, -8.0
air.type = Low
air.hittime = 120
air.velocity = -4, -8.0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
sprpriority = -1
fall = 1
fall.recover = 1
fall.recovertime = 120

[State 292, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<THROW>========================
[Statedef 300]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 300
sprpriority = 2
facep2 = 1
poweradd = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 300, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 300, Strength]
type = varset
trigger1 = !time
var(10) = 1

[State 300, Hit]
type = hitdef
trigger1 = animelem = 1
trigger1 = map(p2bodydistx) <= (92 * const(size.xscale))
trigger1 = numenemy
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = S, NT
chainID = 290
hitflag = M+
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
p1facing = 1
p2facing = 1
p1stateno = 310
p2stateno = 315
fall = 1
fall.recover = 1
fall.recovertime = 120
numhits = 0

[State 300, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 0
channel = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER ---
[Statedef 310]
type = S
movetype = A
physics = S
anim = 310
sprpriority = 0
ctrl = 0

[State 310, Throw]
type = targetstate
trigger1 = !time
value = 315

[State 310, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 310, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
edge = 0, ceil(22 * const(size.xscale))

[State 310, Width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
edge = 0, ceil(45 * const(size.xscale))

[State 310, throwsnd]
type = playsnd
trigger1 = animelem = 4
value = 3, 8
channel = 0

[State 310, Sound]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 310, Bind 1]
type = targetbind
trigger1 = animelemtime(3) < 0
pos = 45 * const(size.xscale), 0
[State 310, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 14 * const(size.xscale), -92
[State 310, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -5 * const(size.xscale), -99
[State 310, Bind 4]
type = targetbind
trigger1 = animelem = 4
pos = -40 * const(size.xscale), -60

[State 310, Damage]
type = hitadd
trigger1 = animelem = 4
value = 1

[State 310, Juggle]
type = varadd
trigger1 = animelem = 4
var(15) = 1

[State 310, Damage]
type = targetlifeadd
trigger1 = animelem = 4
value = -ceil(60 * fvar(10))

;[State 310, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 4
;value = -ceil(100 * fvar(10)) * !var(20)

[State 310, Damage]
type = targetpoweradd
trigger1 = animelem = 4
value = 40;givepower

[State 310, Damage]
type = poweradd
trigger1 = animelem = 4 && !var(20)
value = 100;getpower

[State 310, Throw]
type = targetstate
trigger1 = animelem = 4
value = 316

[State 310, Turn]
type = turn
trigger1 = !animtime

[State 310, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 315]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 2

[State 315, Anim]
type = changeanim2
trigger1 = !time
value = 315

[State 315, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 315, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 316]
type = A
movetype = H
physics = N
velset = 3.0, -6.6

[State 316, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 316, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 316, Hitground]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;=======================<Crouching Light Punch>========================
[Statedef 400]
type = C
movetype = A
physics = C
anim = 400
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 3, ifelse(random < 500, 2, 3)
channel = 0

[State 400, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 400, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
attr = C, NA
damage = 20, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 71), var(37) := -62
hitsound = -1 + 0 * (var(31) := 1)
guardsound = -1
ground.type = Low
ground.hittime = 12 + 2 * map(counterhit)
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 400, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Medium Punch>========================
[Statedef 410]
type = C
movetype = A
physics = C
anim = 410
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 3, 5)
channel = 0

[State 410, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 410, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
attr = C, NA
damage = 70, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 35) * (var(36) := 87), var(37) := -49
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
ground.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 410, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Hard Punch>========================
[Statedef 420]
type = C
movetype = A
physics = C
anim = 420
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 5, 6)
channel = 0

[State 420, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 420, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
attr = C, NA
damage = 100, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 65) * (var(36) := 95), var(37) := -79
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 420, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Light Kick>========================
[Statedef 430]
type = C
movetype = A
physics = C
anim = 430
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 3, ifelse(random < 500, 2, 3)
channel = 0

[State 430, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 430, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
attr = C, NA
damage = 20, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Light
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 91), var(37) := -5
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1
ground.type = Low
ground.hittime = 12 + 2 * map(counterhit)
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
down.velocity = -2, -2
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 430, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Medium Kick>========================
[Statedef 440]
type = C
movetype = A
physics = C
anim = 440
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 3, 5)
channel = 0

[State 440, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 440, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
attr = C, NA
damage = 30, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 102), var(37) := -27
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
ground.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 440, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
attr = C, NA
damage = 40, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 85), var(37) := -21
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
ground.type = Trip
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
ground.velocity = -1, -8.24
air.type = Trip
air.velocity = -1, -8.24
down.velocity = -3, -3
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.677
fall = 1
fall.recover = !map(counterhit)
fall.recovertime = 120

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 440, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Hard Kick>========================
[Statedef 450]
type = C
physics = N
movetype = A
anim = 450
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 450, Accel]
type = veladd
trigger1 = vel x > 0
x = ifelse(vel x > 0.70, -0.70, -vel x);71.25
[State 450, Vel]
type = velset
trigger1 = animelem = 2
x = 9.975

[State 450, Push]
type = playerpush
trigger1 = p2statetype = A && p2dist y < -20
value = 0

[State 450, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 5, 6)
channel = 0

[State 450, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 0

[State 450, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
attr = C, NA
damage = 90, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 0) * (var(36) := 70), var(37) := -5
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Trip
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = -1, -8.24
air.type = Trip
air.velocity = -1, -8.24
down.velocity = -4, -4
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.677
persistent = 0
fall = 1
fall.recover = 1
fall.recovertime = 120

[State 450, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
trigger1 = !movecontact && !movereversed
attr = C, NA
damage = 50, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 0) * (var(36) := 70), var(37) := -5
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Low
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
down.velocity = -4, -4
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 450, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Jumping Light Punch>========================
[Statedef 600]
type = A
movetype = A
physics = N
anim = 600
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 2, 3)
channel = 0

[State 600, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 600, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
attr = A, NA
damage = 50, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Light
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 55), var(37) := -39
hitsound = -1 + 0 * (var(31) := 1)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
guard.hittime = 12
guard.ctrltime = 12
guard.slidetime = 12
guard.velocity = ifelse(var(20), -2.66, -4.49)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 600, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<Jumping Medium Punch>========================
[Statedef 610]
type = A
movetype = A
physics = N
anim = 610
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 3, 5)
channel = 0

[State 610, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 610, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
attr = A, NA
damage = 80, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 55), var(37) := -39
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
guard.hittime = 15
guard.ctrltime = 15
guard.slidetime = 15
guard.velocity = ifelse(var(20), -4.30, -7.51)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 610, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<HIJI OTOSHI>========================
[Statedef 615]
type = A
movetype = A
physics = N
anim = 615
velset = 0.5 * vel x, vel y
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 615, Snd]
type = playsnd
trigger1 = animelem = 2
value = 3, ifelse(random < 500, 3, 5)
channel = 0

[State 615, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 615, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
attr = A, NA
damage = 80, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 10) * (var(36) := 25), var(37) := -54
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
ground.type = High
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
guard.hittime = 15
guard.ctrltime = 15
guard.slidetime = 15
guard.velocity = ifelse(var(20), -4.30, -7.51)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<Jumping Hard Punch>========================
[Statedef 620]
type = A
movetype = A
physics = N
anim = 620
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 5, 6)
channel = 0

[State 620, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 620, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
attr = A, NA
damage = 100, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 25) * (var(36) := 70), var(37) := -89
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
guard.hittime = 18
guard.ctrltime = 18
guard.slidetime = 18
guard.velocity = ifelse(var(20), -5.77, -10.52)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = High
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 610, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<Jumping Light Kick>========================
[Statedef 630]
type = A
movetype = A
physics = N
anim = ifelse(vel x || (var(3) = [1, 2]), 630, 631)
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 2, 3)
channel = 0

[State 630, Snd]
type = playsnd
trigger1 = anim = 630 && animelem = 3
trigger2 = anim = 631 && animelem = 2
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 630, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3 && anim = 630
attr = A, NA
damage = 40, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Light
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 95), var(37) := -55
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
guard.hittime = 12
guard.ctrltime = 12
guard.slidetime = 12
guard.velocity = ifelse(var(20), -2.66, -4.49)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = High
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 630, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2 && anim = 631
attr = A, NA
damage = 40, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Light
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 15) * (var(36) := 42), var(37) := -99
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
guard.hittime = 12
guard.ctrltime = 12
guard.slidetime = 12
guard.velocity = ifelse(var(20), -2.66, -4.49)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = High
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 630, Type]
type = statetypeset
trigger1 = anim = 630 && animelemtime(4) >= 0
trigger2 = anim = 631 && animelemtime(3) >= 0
movetype = I

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<Jumping Medium Kick>========================
[Statedef 640]
type = A
movetype = A
physics = N
anim = ifelse(vel x && (var(3) != [1, 2]), 640, 641)
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 3, 5)
channel = 0

[State 640, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 640, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
attr = A, NA
damage = 80, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := -22) * (var(36) := 96), var(37) := -55
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
guard.hittime = 15
guard.ctrltime = 15
guard.slidetime = 15
guard.velocity = ifelse(var(20), -4.30, -7.51)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = High
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 640, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<Jumping Hard Kick>========================
[Statedef 650]
type = A
movetype = A
physics = N
anim = ifelse(vel x || (var(3) = [1, 2]), 650, 651)
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 5, 6)
channel = 0

[State 650, Snd]
type = playsnd
trigger1 = anim = 650 && animelem = 3
trigger2 = anim = 651 && animelem = 5
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)
[State 650, Snd]
type = playsnd
trigger1 = anim = 651 && animelem = 3
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 650, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = anim = 650 && animelem = 3
attr = A, NA
damage = 100, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 81), var(37) := -31
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
guard.hittime = 18
guard.ctrltime = 18
guard.slidetime = 18
guard.velocity = ifelse(var(20), -5.77, -10.52)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = High
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 650, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = anim = 651 && animelem = 3
attr = A, NA
damage = 50, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 35) * (var(36) := 97), var(37) := -63
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 650, Hit]
type = hitdef
trigger1 = p2stateno != 5040
trigger1 = anim = 651 && animelem = 5
attr = A, NA
damage = 50, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 35) * (var(36) := 97), var(37) := -63
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = High
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 650, Type]
type = statetypeset
trigger1 = anim = 650 && animelemtime(4) >= 0
trigger2 = anim = 651 && animelemtime(6) >= 0
movetype = I

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<Throw Attempt>========================
[Statedef 800]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 800
sprpriority = 2
facep2 = 1
poweradd = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 800, Strength]
type = varset
trigger1 = !time
trigger1 = !AIlevel
var(10) = ifelse(map(cmd_kthrow), 2, 1)

[State 800, Strength]
type = varset
trigger1 = !time
trigger1 = AIlevel
var(10) = ifelse(random < 650, 2, 1)

[State 800, Tech Hit]
type = mapset
trigger1 = 1
map = "techhit"
value = 0
[State 800, Tech Hit]
type = mapset
trigger1 = numenemy
trigger1 = enemynear, statetype != A
trigger1 = (enemynear, stateno = [0, 999]) && (enemynear, stateno != [100, 119]) && (enemynear, stateno != [200, 799]) && enemynear, anim != 5300
map = "techhit"
value = ifelse(var(10) = 2, 11, 7)

[State 800, Tech Hit Facing]
type = mapset
trigger1 = !time
map = "techhit_facing"
value = facing

[State 800, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 800, Hit]
type = hitdef
trigger1 = animelem = 2 && var(10) = 1
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= ceil(28 * const(size.xscale))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
p1facing = 1
p2facing = 1
p1stateno = ifelse((!AIlevel && command = "holdfwd") || (AIlevel && frontedgedist < backedgedist), 803, 801)
p2stateno = 802
fall = 1
fall.recover = 1
fall.recovertime = 120
numhits = 0

[State 800, Hit]
type = hitdef
trigger1 = animelem = 2 && var(10) = 2
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= ceil(28 * const(size.xscale))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
p1facing = 1
p2facing = 1
p1stateno = ifelse((!AIlevel && command = "holdfwd") || (AIlevel && frontedgedist < backedgedist), 801, 803)
p2stateno = 802
animtype = Diagup
fall = 1
fall.recover = 1
fall.recovertime = 300
numhits = 0

[State 800, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 0
channel = 0

[State 800, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 800, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER ---
[Statedef 801]
type = S
movetype = A
physics = S
anim = 801
ctrl = 0
sprpriority = -1

[State Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit) > 0
map = "techhit"
value = -1

[State Tech Hit]
type = changestate
triggerall = numtarget && map(techhit)
triggerall = target, command != "holdup" && target, command != "holddown"
trigger1 = ((target, command = "a") + (target, command = "b") + (target, command = "c") + (target, command = "x") + (target, command = "y") + (target, command = "z")) >= 2
trigger2 = target, command = "holdfwd" || target, command = "holdback"
trigger2 = target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z"
value = 890

[State Throw]
type = targetstate
trigger1 = !time
value = 802

[State Width]
type = width
trigger1 = 1
edge = ceil(30 * const(size.xscale)), 0

[State 801, Bind 1]
type = targetbind
trigger1 = 1
pos = 45 * const(size.xscale), 0

[State 801, End]
type = changestate
trigger1 = !animtime
value = ifelse(var(10) = 1, 805, 810)
ctrl = 0


;--- PLAYER TURNS ---
[Statedef 803]
type = S
movetype = A
physics = S
anim = 803
ctrl = 0
sprpriority = -1

[State 803, Turn]
type = turn
trigger1 = !time
[State 803, P2 Turn]
type = targetfacing
trigger1 = !time
value = -1

[State Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit) > 0
map = "techhit"
value = -1

[State Tech Hit]
type = changestate
triggerall = numtarget && map(techhit)
triggerall = target, command != "holdup" && target, command != "holddown"
trigger1 = ((target, command = "a") + (target, command = "b") + (target, command = "c") + (target, command = "x") + (target, command = "y") + (target, command = "z")) >= 2
trigger2 = target, command = "holdfwd" || target, command = "holdback"
trigger2 = target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z"
value = 890

[State Throw]
type = targetstate
trigger1 = !time
value = 804

[State Width]
type = width
trigger1 = 1
edge = ceil(30 * const(size.xscale)), ceil(30 * const(size.xscale))

[State 803, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = -45 * const(size.xscale), 0
[State 803, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -6 * const(size.xscale), 0
[State 803, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 19 * const(size.xscale), 0
[State 803, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0
pos = 45 * const(size.xscale), 0

[State 803, End]
type = changestate
trigger1 = !animtime
value = ifelse(var(10) = 1, 805, 810)
ctrl = 0


;--- TARGET ---
[Statedef 802]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 0

[State 802, Anim]
type = changeanim2
trigger1 = !time
value = 802

[State Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


[Statedef 804]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 804, Anim]
type = changeanim2
trigger1 = !time
value = 804

[State Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


;=======================<SEOI NAGE>========================
;--- PLAYER ---
[Statedef 805]
type = S
movetype = A
physics = S
anim = 805
sprpriority = -1
ctrl = 0

[State Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit) > 0
map = "techhit"
value = -1

[State Tech Hit]
type = changestate
triggerall = numtarget && map(techhit)
triggerall = target, command != "holdup" && target, command != "holddown"
trigger1 = ((target, command = "a") + (target, command = "b") + (target, command = "c") + (target, command = "x") + (target, command = "y") + (target, command = "z")) >= 2
trigger2 = target, command = "holdfwd" || target, command = "holdback"
trigger2 = target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z"
value = 890

[State 805, Turn]
type = turn
trigger1 = !time
trigger1 = command = "holdfwd" && prevstateno = 810
[State 805, Throw]
type = targetstate
trigger1 = !time
value = 806
[State 805, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 805, Width]
type = width
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
edge = 0, ceil(22 * const(size.xscale))
[State 805, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
edge = 0, ceil(45 * const(size.xscale))

[State 805, throwsnd]
type = playsnd
trigger1 = animelem = 3
value = 3, 8
channel = 0

[State 805, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 14 * const(size.xscale), -92
[State 805, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -5 * const(size.xscale), -99
[State 805, Bind 3]
type = targetbind
trigger1 = animelem = 3
pos = -40 * const(size.xscale), -60

[State 805, Damage]
type = hitadd
trigger1 = animelem = 3
value = 1

[State 805, Juggle]
type = varadd
trigger1 = animelem = 3
var(15) = 1

[State 805, Damage]
type = targetlifeadd
trigger1 = animelem = 3
value = ceil(ifelse((prevstateno = 810), -50, -130 * fvar(10)))

;[State 805, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 3
;value = -ceil(120 * fvar(10)) * !var(20)

[State 805, Damage]
type = targetpoweradd
trigger1 = animelem = 3
value = 40;givepower

[State 805, Damage]
type = poweradd
trigger1 = animelem = 3 && !var(20)
value = 100;getpower

[State 805, Throw]
type = targetstate
trigger1 = animelem = 3
value = 807

[State 805, Pos]
type = posadd
trigger1 = animelem = 1 || animelem = 2
x = 2 * const(size.xscale)

[State 805, Turn]
type = turn
trigger1 = !animtime
[State 805, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 806]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 806, Anim]
type = changeanim2
trigger1 = !time
value = 806

[State 806, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 806, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 807]
type = A
movetype = H
physics = N
velset = 6, -5

[State 807, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 807, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 807, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 807, Hitground]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;=======================<TSUKAMI NAGE>========================
;--- PLAYER ---
[Statedef 810]
type = S
movetype = A
physics = S
anim = 810
sprpriority = 0
ctrl = 0

[State Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit) > 0
map = "techhit"
value = -1

[State Tech Hit]
type = changestate
triggerall = numtarget && map(techhit)
triggerall = target, command != "holdup" && target, command != "holddown"
trigger1 = ((target, command = "a") + (target, command = "b") + (target, command = "c") + (target, command = "x") + (target, command = "y") + (target, command = "z")) >= 2
trigger2 = target, command = "holdfwd" || target, command = "holdback"
trigger2 = target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z"
value = 890

[State 810, Mash Var]
type = varset
trigger1 = !time
var(0) = 96;120 normal

[State 810, Mash Var Round Over]
type = varadd
trigger1 = roundstate != 2
var(0) = 0

[State 810, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 810, Throw]
type = targetstate
trigger1 = !time
value = 815

[State 810, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 810, Width]
type = width
trigger1 = 1
edge = ceil(50 * const(size.xscale)), 0

[State 810, Seoi Nage]
type = varset
trigger1 = !AIlevel && numtarget
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
var(10) = 1

[State 810, Seoi Nage]
type = changestate
trigger1 = !animtime
trigger1 = var(10) = 1
value = 805

[State 810, End]
type = changestate
triggerall = !animtime
trigger1 = var(0) <= 0
trigger1 = hitcount >= 2
trigger2 = hitcount >= 8
trigger3 = numtarget
trigger3 = !(target, alive)
value = 811

[State 810, Anim]
type = changeanim
triggerall = var(0) > 0
triggerall = animelemtime(animelemno(0)) > 0
triggerall = animelemtime(animelemno(0)) > -animelemtime(animelemno(0) + 1)
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c" || command = "start"
trigger3 = command = "U" || command = "D" || command = "B" || command = "F"
trigger4 = AIlevel && !(time % 3)
value = 810
elem = ifelse(animelemtime(4) >= 0, 1, animelemno(0) + 1)

[State 810, Throw]
type = targetstate
trigger1 = 1
value = ifelse(animelemtime(2) < 0, 815, ifelse(animelemtime(3) < 0, 816, ifelse(animelemtime(4) < 0, 815, 817)))

[State 810, Mash Var]
type = varadd
trigger1 = numtarget
trigger1 = target, command = "U" || target, command = "D" || target, command = "B" || target, command = "F"
var(0) = -4
[State 810, Mash Var]
type = varadd
triggerall = numtarget
trigger1 = target, command = "x" || target, command = "y" || target, command = "z"
trigger2 = target, command = "a" || target, command = "b" || target, command = "c" || target, command = "start"
var(0) = -1

[State 810, Mash Var]
type = varadd
trigger1 = hitcount
trigger1 = var(0) > 0
var(0) = -1

[State 810, Flash]
type = palfx
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c" || command = "start"
trigger3 = command = "U" || command = "D" || command = "B" || command = "F"
trigger4 = AIlevel && !(time % 3)
time = 1
add = 50, 50, 50

[State 810, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 2
value = floor(-15 * fvar(10))

[State 810, Spr]
type = sprpriority
trigger1 = 1
value = ifelse((animelemtime(2) >= 0 &&animelemtime(3) < 0), 1, -1)

[State 810, throwsnd]
type = playsnd
trigger1 = animelem = 2
value = 3, 3
channel = 0

[State 810, HitSound]
type = playsnd
trigger1 = animelem = 2
value = 2, 5
channel = 2

[State 810, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget
trigger1 = animelem = 2
helpertype = normal
stateno = 8010
ID = 8000
name = "Spark"
postype = p1
pos = ceil(30 * const(size.xscale)), floor(-67 * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 810, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = numtarget
trigger1 = animelem = 2
anim = F1
ID = 8000
postype = p1
pos = ceil(30 * const(size.xscale)), floor(-67 * const(size.yscale))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 810, Hit]
type = hitadd
trigger1 = animelem = 2
value = 1

[State 810, Bind 1]
type = targetbind
triggerall = numtarget
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger2 = animelemtime(3) >= 0
pos = 45 * const(size.xscale), 0

[State 810, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 30 * const(size.xscale), -67


;--- FINISH ---
[Statedef 811]
type = S
movetype = A
physics = S
anim = 811
sprpriority = 0
ctrl = 0

[State 811, Throw]
type = targetstate
trigger1 = !time
value = 818

[State 811, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 810, Width]
type = width
trigger1 = 1
edge = ceil(20 * const(size.xscale)), 0

[State 811, Mash Var]
type = varset
trigger1 = var(0)
var(0) = 0

[State 811, Damage]
type = targetlifeadd
trigger1 = animelem = 2
value = -ceil(55 * fvar(10))

;[State 811, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 2
;value = -ceil(160 * fvar(10)) * !var(20)

[State 811, Juggle]
type = varadd
trigger1 = animelem = 2
var(15) = 1

[State 811, Damage]
type = targetpoweradd
trigger1 = animelem = 2
value = 40;givepower

[State 811, Power]
type = poweradd
trigger1 = animelem = 2 && !var(20)
value = 100;getpower

[State 811, throwsnd]
type = playsnd
trigger1 = animelem = 2
value = 3, 6
channel = 0

[State 811, Spr]
type = sprpriority
trigger1 = 1
value = ifelse((animelemtime(2) >= 0 &&animelemtime(3) < 0), 1, -1)

[State 811, HitSound]
type = playsnd
trigger1 = animelem = 2
value = 2, 6
channel = 2

[State 811, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget
trigger1 = animelem = 2
helpertype = normal
stateno = 8012
ID = 8000
name = "Spark"
postype = p1
pos = ceil(30 * const(size.xscale)), floor(-67 * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 811, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = numtarget
trigger1 = animelem = 2
anim = F2
ID = 8000
postype = p1
pos = ceil(30 * const(size.xscale)), floor(-67 * const(size.yscale))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 811, Hit]
type = hitadd
trigger1 = animelem = 2
value = 1

[State 811, Bind 1]
type = targetbind
triggerall = numtarget
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger2 = animelem = 3
pos = 45 * const(size.xscale), 0

[State 811, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 30 * const(size.xscale), -67

[State 811, Throw]
type = targetstate
trigger1 = animelem = 3
value = 819

[State 811, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 815]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 2

[State 815, Anim]
type = changeanim2
trigger1 = 1
value = 815
[State 815, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0
[State 815, Flash]
type = palfx
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c" || command = "start"
trigger3 = command = "U" || command = "D" || command = "B" || command = "F"
time = 1
add = 100, 0, 0

[State 815, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 816]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 2

[State 816, Anim]
type = changeanim2
trigger1 = 1
value = 816

[State 816, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 816, Flash]
type = palfx
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c" || command = "start"
trigger3 = command = "U" || command = "D" || command = "B" || command = "F"
time = 1
add = 100, 0, 0

[State 816, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 817]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 2

[State 817, Anim]
type = changeanim2
trigger1 = 1
value = 817

[State 817, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 817, Flash]
type = palfx
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c" || command = "start"
trigger3 = command = "U" || command = "D" || command = "B" || command = "F"
time = 1
add = 100, 0, 0

[State 817, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 818]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 2

[State 818, Anim]
type = changeanim2
trigger1 = !time
value = 818

[State 818, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 818, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


;--- Target Falling ---
[Statedef 819]
type = A
movetype = H
physics = N
sprpriority = 0

[State 819, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 819, Vel]
type = velset
trigger1 = !time
x = -3.5
y = -6

[State 819, Anim]
type = changeanim
trigger1 = !time
value = 5030
[State 819, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050

[State 819, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 819, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 819, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= ifelse((anim = [5051, 5059]) || (anim = [5061, 5069]), 0, 25)
value = 5100


;=======================<Air Throw Attempt>========================
[Statedef 850]
type = A
physics = N
movetype = A
ctrl = 0
anim = 850
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 850, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 850, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = var(15) < 1 || var(20)
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= ceil((42 * const(size.xscale)) - const(size.air.front))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
trigger1 = p2dist y = [-48, 22]
;(top + 28) (bottom + 92)
attr = A, NT
hitflag = AF
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
p1facing = ifelse(command = "holdback", 1, -1)
p2facing = -1
p1stateno = 855
p2stateno = 856
guard.dist = 0
fall = 1

[State 850, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 0
channel = 0

[State 850, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<IZUNA OTOSHI>========================
[Statedef 855]
type = A
physics = N
movetype = A
anim = 855
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 855, Assert]
type = assertspecial
trigger1 = 1
flag = noautoturn

[State 855, Width]
type = width
trigger1 = 1
edge = ceil(50 * const(size.xscale))

[State 855, Throw]
type = targetstate
trigger1 = !time
value = 857

[State 855, Throw]
type = targetfacing
trigger1 = time <= 1
value = 1

[State 855, Snd]
type = playsnd
trigger1 = !time
value = 3, 8
channel = 0

[State 855, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 855, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.6

[State 855, Vel]
type = velset
trigger1 = animelemtime(5) < 0 && pos y >= 0
y = 0
[State 855, Pos]
type = posset
trigger1 = animelemtime(5) < 0 && pos y >= 0
y = 0

[State 855, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 23 * const(size.xscale), -77
[State 855, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 5 * const(size.xscale), -75
[State 855, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -43 * const(size.xscale), -65
[State 855, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = -46 * const(size.xscale), -47
[State 855, Bind 5]
type = targetbind
trigger1 = animelemtime(5) >= 0
pos = -29 * const(size.xscale), -17

[State 855, End]
type = changestate
trigger1 = animelemtime(2) > 0 && vel y > 0 && (pos y > -vel y)
value = 856


;--- HIT FLOOR ---
[Statedef 856]
type = A
physics = N
movetype = A
anim = 856
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 856, Assert]
type = assertspecial
trigger1 = 1
flag = noautoturn

[State 856, Throw]
type = targetstate
trigger1 = !time
value = 858

[State 856, Pos]
type = posset
trigger1 = animelemtime(2) < 0
y = 0

[State 856, Vel]
type = velset
trigger1 = animelem = 2
x = 2
y = -5

[State 856, Snd]
type = playsnd
trigger1 = !time
value = 5, 1

[State 856, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = floor(-36 * const(size.xscale)), 0
ownpal = 1

[State 856, Shake]
type = envshake
trigger1 = !time
time = 18
freq = 180
ampl = 2

[State 856, Bind 1]
type = targetbind
trigger1 = animelem = 1
pos = -36 * const(size.xscale), 0

[State 856, Damage]
type = targetlifeadd
trigger1 = animelem = 1
value = -ceil(120 * fvar(10))

;[State 856, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 1
;value = -ceil(150 * fvar(10)) * !var(20)

[State 856, Damage]
type = targetpoweradd
trigger1 = animelem = 1
value = 40;givepower

[State 856, Damage]
type = poweradd
trigger1 = animelem = 1 && !var(20)
value = 100;getpower

[State 856, Snd]
type = playsnd
trigger1 = !time
value = 3, 6
channel = 0

[State 856, Type]
type = statetypeset
trigger1 = animelemtime(2) > 0
value = A
physics = N

[State Gravity]
type = gravity
trigger1 = animelemtime(2) > 0

[State Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;--- TARGET ---
[Statedef 857]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 0

[State 857, Anim]
type = changeanim2
trigger1 = !time
value = 857

[State 857, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 857, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


;--- TARGET HIT FLOOR ---
[Statedef 858]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 0

[State 858, Anim]
type = changeanim2
trigger1 = !time
value = 858

[State 858, Vel]
type = velset
trigger1 = animelem = 2
x = -4
y = -6

[State 858, Accel]
type = veladd
trigger1 = animelemtime(2) > 0
y = 0.4850;yaccel

[State 858, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 858, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 858, End]
type = selfstate
trigger1 = animelemtime(2) > 0 && vel y > 0 && (pos y > -vel y)
value = 5100


;=======================<Target Escaped>========================
[Statedef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 890, Tech Hit Facing]
type = turn
trigger1 = !time
trigger1 = facing != map(techhit_facing)

[State 890, Bind]
type = targetbind
trigger1 = !time
trigger1 = numtarget = 1
pos = (const(size.ground.front) + target, const(size.ground.front)), 0

[State 890, Width]
type = width
trigger1 = !time
trigger1 = numtarget = 1
edge = (target, const(size.ground.front) + target, const(size.ground.back)), 0

[State 890, P2 State]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 895
[State 890, Throw]
type = targetfacing
trigger1 = !time
trigger1 = numtarget
value = -1

[State 890, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 890, Push]
type = playerpush
trigger1 = 1
value = 0

[State 890, Pos]
type = posset
trigger1 = !time
y = 0
[State 890, Vel]
type = velset
trigger1 = 1
x = -1.281
y = 0

[State 890, Snd]
type = playsnd
trigger1 = time = 2
value = 5000, 1
channel = 0

[State 890, FX]
type = playsnd
trigger1 = !time
value = 0, 890

[State 890, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8200
ID = 8200
name = "Spark"
postype = p1
pos = const(size.ground.front), -48
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535

[State 890, End]
type = changestate
trigger1 = time >= 26
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 895]
type = S
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 895, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5940), 5940, ifelse(selfanimexist(200), 200, 130))

[State 895, Anim]
type = changeanim
trigger1 = anim = 130
trigger1 = time >= 20
value = 140

[State 895, Anim]
type = changeanim
trigger1 = anim = 200
trigger1 = animtime = -1
value = 200
elem = animelemno(-1)

[State 895, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 895, Push]
type = playerpush
trigger1 = 1
value = 0

[State 895, Pos]
type = posset
trigger1 = !time
y = 0

[State 895, Vel]
type = velset
trigger1 = 1
x = -1.281
y = 0

[State 895, End]
type = selfstate
trigger1 = time >= 26
value = 0
ctrl = 1
