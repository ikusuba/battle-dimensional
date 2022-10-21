; ______________________________
;| Dan by Phantom.of.the.Server |
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

[State 200, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 1, 5)
channel = 0

[State 200, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 200, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
attr = S, NA
damage = 25, 0
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 108), var(37) := -186
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
anim = 210
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

[State 210, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 2, 5)
channel = 0

[State 210, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 210, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 116), var(37) := -110
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

[State 210, Anim]
type = changeanim
trigger1 = anim = 210
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
trigger1 = hitpausetime <= 8
value = 210
elem = 3
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Hard Punch>========================
[Statedef 220]
type = S
movetype = A
physics = S
anim = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 60), 221, 220);37 (* 2) in CvS2
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

[State 220, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 3, ifelse(random < 500, 2, 5)
channel = 0

[State 220, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 220, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = anim = 220 && animelem = 3
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 116), var(37) := -150
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
trigger1 = anim = 220 && animelem = 4 && !movecontact && !movereversed
attr = S, NA
damage = 90, 0
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 155), var(37) := -84
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
trigger1 = anim = 221 && animelem = 3
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 116), var(37) := -110
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

[State 220, Anim]
type = changeanim
trigger1 = anim = 220
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
trigger1 = hitpausetime <= 10
value = 220
elem = 5
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = anim = 220 && animelemtime(5) >= 0
trigger2 = anim = 221 && animelemtime(4) >= 0
movetype = I

[State 220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Light Kick>========================
[Statedef 230]
type = S
movetype = A
physics = S
anim = 230
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

[State 230, Snd]
type = playsnd
trigger1 = animelem = 4 && random < 200
value = 3, ifelse(random < 500, 1, 5)
channel = 0

[State 230, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 230, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4 && anim = 230
attr = S, NA
damage = 35, 0
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 148), var(37) := -100
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

[State 230, Anim]
type = changeanim
trigger1 = anim = 230
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
trigger1 = hitpausetime <= 6
value = 230
elem = 5
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
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
anim = 240
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

[State 240, Snd]
type = playsnd
trigger1 = animelem = 4 && random < 350
value = 3, ifelse(random < 500, 2, 5)
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
trigger1 = animelem = 4
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
sparkxy = -10 + 0 * (var(35) := 80) * (var(36) := 148), var(37) := -100
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
trigger1 = animelem = 5
attr = S, NA
damage = 30, 0
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 184), var(37) := -152
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

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 240, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Hard Kick>========================
[Statedef 250]
type = S
movetype = A
physics = N
anim = 250
velset = 0, 0
poweradd = 0
sprpriority = -1
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 250, Width Fix]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger2 = animelemtime(7) >= 0 && animelemtime(8) < 0
edge = 0, ceil(45 * const(size.xscale))
[State 250, Width Fix]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(7) < 0
edge = 0, ceil(90 * const(size.xscale))

[State 250, Pos Fix]
type = posadd
trigger1 = animelem = 3 || animelem = 4
x = 45 * const(size.xscale)

[State 250, Pos Fix]
type = posadd
trigger1 = animelem = 7 || animelem = 8
x = -45 * const(size.xscale)

[State 250, Vel]
type = velset
trigger1 = animelem = 5 && !var(20)
x = 6.67
[State 250, Vel]
type = velset
trigger1 = animelem = 6
x = 0

[State 250, Snd]
type = playsnd
trigger1 = animelem = 5 && random < 500
value = 3, ifelse(random < 500, 2, 5)
channel = 0

[State 250, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 250, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 6
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 157), var(37) := -172
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
sprpriority = -1
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)

[State 250, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 6 && prevstateno = 710
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 157), var(37) := -172
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = -6.46, -5.25
air.type = Low
air.velocity = -6.46, -5.25
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
yaccel = 0.4850
sprpriority = -1
fall = 1
fall.recover = 1
fall.recovertime = 120

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 250, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


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

[State 400, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 1, 5)
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
damage = 25, 0
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 106), var(37) := -130
hitsound = -1 + 0 * (var(31) := 1)
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

[State 410, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 2, 5)
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 110), var(37) := -120
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

[State 410, Anim]
type = changeanim
trigger1 = anim = 410
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 8
value = 410
elem = 4
ignorehitpause = 1

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

[State 420, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 2, 5)
channel = 0

[State 420, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 420, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 94), var(37) := -180
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
forcestand = 1
forcenofall = !var(20)

[State 420, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3 && !movecontact && !movereversed
attr = C, NA
damage = 80, 0
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
sparkxy = -10 + 0 * (var(35) := 0) * (var(36) := 40), var(37) := -228
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

[State 430, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 200
value = 3, ifelse(random < 500, 1, 5)
channel = 0

[State 430, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 430, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 158), var(37) := -16
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
trigger1 = animelemtime(4) >= 0
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

[State 440, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 2, 5)
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
trigger1 = animelem = 3
attr = C, NA
damage = 65, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 158), var(37) := -16
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
down.velocity = -3, -3
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

[State 440, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Hard Kick>========================
[Statedef 450]
type = C
movetype = A
physics = C
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

[State 450, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 2, 5)
channel = 0

[State 450, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)

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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 158), var(37) := -20
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Trip
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
ground.velocity = -1, -8.24
air.type = Trip
air.velocity = -1, -8.24
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(20), 36 * !var(20)
givepower = 40, 40
yaccel = 0.677
fall = 1
fall.recover = !map(counterhit)
fall.recovertime = 120

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
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

[State 600, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 1, 5)
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
damage = 45, 0
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 101), var(37) := -120
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

[State 610, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 350
value = 3, ifelse(random < 500, 2, 5)
channel = 0

[State 610, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 610, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
attr = A, NA
damage = 75, 0
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 116), var(37) := -108
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
trigger1 = animelemtime(4) >= 0
movetype = I

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

[State 620, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 2, 5)
channel = 0

[State 620, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 620, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
attr = A, NA
damage = 95, 0
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 120), var(37) := -124
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.hittime = 18
guard.ctrltime = 18
guard.slidetime = 18
guard.velocity = ifelse(var(20), -5.77, -10.52)
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

[State 620, Type]
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
anim = 630
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 630, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 200
value = 3, ifelse(random < 500, 1, 5)
channel = 0

[State 630, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 630, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 124), var(37) := -76
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.hittime = 12
guard.ctrltime = 12
guard.slidetime = 12
guard.velocity = ifelse(var(20), -2.66, -4.49)
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
trigger1 = animelemtime(4) >= 0
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
anim = 640
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 640, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 350
value = 3, ifelse(random < 500, 2, 5)
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
damage = 70, 0
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
sparkxy = -10 + 0 * (var(35) := -60) * (var(36) := 130), var(37) := -90
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.hittime = 15
guard.ctrltime = 15
guard.slidetime = 15
guard.velocity = ifelse(var(20), -4.30, -7.51)
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
anim = 650
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 650, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 3, ifelse(random < 500, 2, 5)
channel = 0

[State 650, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 650, Hit]
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 142), var(37) := -102
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.hittime = 18
guard.ctrltime = 18
guard.slidetime = 18
guard.velocity = ifelse(var(20), -5.77, -10.52)
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
trigger1 = animelemtime(4) >= 0
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
poweradd = 0
facep2 = 1

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
var(10) = ifelse(random < 500, 2, 1)

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
value = 7

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
trigger1 = map(p2bodydistx) <= ceil(47 * const(size.xscale))
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
guard.dist = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
numhits = 0

[State 800, Hit]
type = hitdef
trigger1 = animelem = 2 && var(10) = 2
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= ceil(47 * const(size.xscale))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
ID = 820
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
p1facing = 1
p2facing = 1
p1stateno = ifelse((!AIlevel && command = "holdfwd") || (AIlevel && frontedgedist < backedgedist), 801, 803)
p2stateno = 802
animtype = Up
ground.velocity = -1, -13
guard.dist = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
numhits = 0

[State 800, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5000, 5
channel = 0

[State 800, Snd]
type = playsnd
trigger1 = animelem = 4
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
anim = ifelse(var(10) = 1, 801, 805)
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

[State 801, grab snd]
type = playsnd
trigger1 = !time
value = 4, 29
channel = 0

[State Width]
type = width
trigger1 = 1
edge = floor(60 * const(size.xscale)), 0

[State 801, Bind 1]
type = targetbind
trigger1 = 1
pos = 80 * const(size.xscale), 0

[State 801, End]
type = changestate
trigger1 = !animtime
value = ifelse(var(10) = 1, 810, 820)
ctrl = 0


;--- PLAYER TURNS ---
[Statedef 803]
type = S
movetype = A
physics = S
anim = ifelse(var(10) = 1, 803, 807)
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

[State 803, grab snd]
type = playsnd
trigger1 = !time
value = 4, 29
channel = 0

[State Width]
type = width
trigger1 = 1
edge = floor(60 * const(size.xscale)), floor(60 * const(size.xscale))

[State 803, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = -80 * const(size.xscale), 0
[State 803, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -20 * const(size.xscale), 0
[State 803, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 30 * const(size.xscale), 0
[State 803, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0
pos = 80 * const(size.xscale), 0

[State 803, End]
type = changestate
trigger1 = !animtime
value = ifelse(var(10) = 1, 810, 820)
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
physics = N
movetype = H
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
[Statedef 810]
type = S
movetype = A
physics = S
anim = 810
sprpriority = 2
ctrl = 0

[State 810, Throw]
type = targetstate
trigger1 = !time
value = 811
[State 810, Throw]
type = targetfacing
trigger1 = time <= 1
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

[State 810, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
edge = 0, floor(80 * const(size.xscale))
[State 810, Width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
edge = 0, floor(100 * const(size.xscale))

[State 810, throwsnd]
type = playsnd
trigger1 = animelem = 2
value = 3, 3
channel = 0

[State 810, throwsnd]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 810, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 72 * const(size.xscale), -186 * const(size.yscale)
[State 810, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 17 * const(size.xscale), -194 * const(size.yscale)
[State 810, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -80 * const(size.xscale), -160 * const(size.yscale)

[State 810, Damage]
type = targetlifeadd
trigger1 = animelem = 4
value = -ceil(120 * fvar(10))

;[State 810, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 4
;value = -ceil(120 * fvar(10)) * !var(20)

[State 810, Hitadd]
type = hitadd
trigger1 = animelem = 4
value = 1

[State 810, Juggle]
type = varadd
trigger1 = animelem = 4
var(15) = 1

[State 810, Damage]
type = targetpoweradd
trigger1 = animelem = 4
value = 40;givepower

[State 810, Damage]
type = poweradd
trigger1 = animelem = 4 && !var(20)
value = 100;getpower

[State 810, Throw]
type = targetstate
trigger1 = animelem = 4
value = 812

[State 810, Turn]
type = turn
trigger1 = !animtime
[State 810, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 811]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 811, Anim]
type = changeanim2
trigger1 = !time
value = 811

[State 811, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 811, Pos]
type = posadd
trigger1 = anim = 811 && animelem = 8
x = const(size.mid.pos.y) - const(size.head.pos.y)
persistent = 0

[State 811, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 812]
type = A
movetype = H
physics = N
velset = 6, -3

[State 812, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 812, Pos]
type = posadd
trigger1 = anim = 811 && animelem = 8
x = const(size.mid.pos.y) - const(size.head.pos.y)
persistent = 0

[State 812, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 812, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 812, Hitground]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;=======================<OTOKO ZUKI>========================
;--- PLAYER ---
[Statedef 820]
type = S
movetype = A
physics = S
anim = 820
ctrl = 0

[State 820, Throw]
type = targetstate
trigger1 = !time
value = 821
[State 820, Throw]
type = targetfacing
trigger1 = time <= 1
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

[State 820, Width]
type = width
trigger1 = animelemtime(3) < 0
edge = floor(60 * const(size.xscale)), 0
[State 820, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(8) < 0
edge = floor(80 * const(size.xscale)), 0
[State 820, Width]
type = width
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
edge = floor(100 * const(size.xscale)), 0

[State 820, Bind 1]
type = targetbind
trigger1 = animelemtime(2) < 0
pos = 60 * const(size.xscale), 0
[State 820, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 61 * const(size.xscale), -146 * const(size.yscale)
[State 820, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 97 * const(size.xscale), -186 * const(size.yscale)

[State 820, spr]
type = sprpriority
trigger1 = 1
value = ifelse(animelemtime(7) < 0, -1, 1)

[State 820, throwsnd]
type = playsnd
trigger1 = animelem = 8
value = 3, 0
channel = 0

[State 820, HitSound]
type = playsnd
trigger1 = animelem = 8
value = 2, 3
channel = 2

[State 820, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = animelem = 8
helpertype = normal
stateno = 8012
ID = 8000
name = "Spark"
postype = p1
pos = ceil(82 * const(size.xscale)), ceil(-180 * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 820, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = animelem = 8
anim = F2
ID = 8000
postype = p1
pos = ceil(82 * const(size.xscale)), ceil(-180 * const(size.yscale))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 820, Shake]
type = envshake
trigger1 = animelem = 8
time = 10
freq = 180
ampl = 1

[State 820, Throws Disallowed]
type = mapset
trigger1 = 1
map = "unthrowable"
value = 1

[State 820, Hitadd]
type = hitadd
trigger1 = animelem = 8
value = 1

[State 820, Damage]
type = targetlifeadd
trigger1 = animelem = 8
value = -ceil(100 * fvar(10))

;[State 820, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 8
;value = -ceil(100 * fvar(10)) * !var(20)

[State 820, Damage]
type = targetpoweradd
trigger1 = animelem = 8
value = 40;givepower

[State 820, Damage]
type = poweradd
trigger1 = animelem = 8 && !var(20)
value = 100;getpower

[State 820, Throw]
type = targetstate
trigger1 = animelem = 8
value = 822

[State 820, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 821]
type = A
movetype = H
physics = N
velset = 0, 0

[State 821, Anim]
type = changeanim2
trigger1 = !time
value = 821

[State 821, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
y = 0.4850;yaccel

[State 821, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 1

[State 821, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 822]
type = A
movetype = H
physics = N

[State 822, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 822, Pos]
type = posadd
trigger1 = !time
y = -const(size.mid.pos.y)

[State 822, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 822, Vel]
type = velset
trigger1 = !time
x = -2
y = -10

[State 822, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)

[State 822, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050

[State 822, Anim]
type = changeanim
trigger1 = vel y > -3 && anim = 5051
value = 5061

[State 822, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 822, End]
type = changestate
trigger1 = time && vel y > 0
value = 823


[Statedef 823]
type = A
physics = N
movetype = H
anim = 5040
ctrl = 0

[State 823, HF]
type = hitfallset
trigger1 = 1
value = 0

[State 823, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 4;or else KFM cannot block low in Ikemen

[State 823, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 823, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52
ctrl = 1


;=======================<Air Throw Attempt>========================
[Statedef 850]
type = A
movetype = A
physics = N
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
trigger1 = !map(unthrowable) && numenemy
trigger1 = var(15) < 1 || var(20)
trigger1 = map(p2bodydistx) <= ceil((44 * const(size.xscale)) - const(size.air.front))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
trigger1 = p2dist y = [-47, 30]
;(top + 28) (bottom + 92)
attr = A, NT
hitflag = AF
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
p1facing = ifelse((!AIlevel && command = "holdback") || (AIlevel && frontedgedist > backedgedist), 1, -1)
p2facing = 1
p1stateno = 855
guard.dist = 0
fall = 1
numhits = 0

[State 850, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5000, 5
channel = 0

[State 850, Snd]
type = playsnd
trigger1 = animelem = 4
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


;=======================<OTOKO NAGE>========================
[Statedef 855]
type = A
movetype = A
physics = N
anim = 855
sprpriority = 2
ctrl = 0

[State Throw]
type = targetstate
trigger1 = !time
value = 856

[State 855, grab snd]
type = playsnd
trigger1 = !time
value = 4, 29
channel = 0

[State 855, Accel]
type = veladd
trigger1 = pos y < 0 && vel y < 0
y = 0.5

[State 855, Accel]
type = veladd
trigger1 = pos y < 0 && vel y >= 0
y = 0.25
[State 855, Vel]
type = velmul
trigger1 = 1
x = 0.95

[State 855, Throw]
type = targetstate
trigger1 = !time
value = 856
[State 855, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 855, Width]
type = width
trigger1 = animelemtime(4) < 0
edge = floor(80 * const(size.xscale)), 0
[State 855, Width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
edge = 0, floor(100 * const(size.xscale))

[State 855, throwsnd]
type = playsnd
trigger1 = animelem = 4
value = 3, 2
channel = 0

[State 855, throwsnd]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 801, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 80 * const(size.xscale), 0
[State 855, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 72 * const(size.xscale), -186 * const(size.yscale)
[State 855, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 17 * const(size.xscale), -194 * const(size.yscale)
[State 855, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = -80 * const(size.xscale), -160 * const(size.yscale)

[State 855, Hitadd]
type = hitadd
trigger1 = animelem = 8
value = 1

[State 855, Juggle]
type = varadd
trigger1 = animelem = 5
var(15) = 1

[State 855, Damage]
type = targetlifeadd
trigger1 = animelem = 5
value = -ceil(140 * fvar(10))

;[State 855, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 4
;value = -ceil(150 * fvar(10)) * !var(20)

[State 855, Damage]
type = targetpoweradd
trigger1 = animelem = 5
value = 40;givepower

[State 855, Damage]
type = poweradd
trigger1 = animelem = 5 && !var(20)
value = 100;getpower

[State 855, Throw]
type = targetstate
trigger1 = animelem = 5
value = 857

[State 855, Pos]
type = posset
trigger1 = animelemtime(5) < 16 && pos y >= -5
y = 0
[State 855, Vel]
type = velset
trigger1 = animelemtime(5) < 16 && pos y >= -5
y = 0
[State 105, Type]
type = statetypeset
trigger1 = animelemtime(5) < 16 && pos y >= -5
type = S
physics = S
[State 855, Snd]
type = playsnd
trigger1 = animelemtime(5) < 16 && pos y >= -5
value = 0, 52
persistent = 0
[State 855, Dust]
type = explod
trigger1 = animelemtime(5) < 16 && pos y >= -5
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
vel = 0, 0
removetime = -2
ownpal = 1
scale = 0.5, 0.5
persistent = 0
pausemovetime = -1
supermovetime = -1

[State 855, Turn]
type = turn
trigger1 = vel y >= 0 && pos y >= 0 && animelemtime(5) >= 16
persistent = 0

[State 855, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y) && animelemtime(5) >= 16
value = 52

[State 855, End]
type = changestate
trigger1 = !vel y && pos y >= 0 && animelemtime(5) >= 16
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 856]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 856, Anim]
type = changeanim2
trigger1 = !time
value = 856

[State 856, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 856, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 857]
type = A
movetype = H
physics = N
velset = 6, -4

[State 857, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 857, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 857, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 857, Hitground]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
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
value = 5000, 5
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
