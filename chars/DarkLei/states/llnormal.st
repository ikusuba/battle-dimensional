; __________________________________
;| Lei-Lei by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================<NORMAL STATES>========================================
;============================================================================================

;=======================<Standing Light Punch>========================
[Statedef 200]
type = S
movetype = A
physics = S
anim = ifelse(abs(map(p2bodydistx)) <= (const(size.xscale) * 22), 201, 200)
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
var(42) = 1

[State Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 3, ifelse(random < 500, 9, 10)
channel = 0

[State 200, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 7
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 200, Hit]
type = hitdef
triggerall = var(15) < 1
trigger1 = anim = 200 && animelem = 2
trigger2 = anim = 201 && animelem = 2
attr = S, NA
damage = 30, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8020)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 120), var(37) := -53
hitsound = -1 + 0 * (var(31) := 7)
guardsound = -1
ground.type = High
ground.slidetime = ifelse((prevstateno = 200 || prevstateno = 400 || prevstateno = 430), 15, 12)
ground.hittime = ifelse((prevstateno = 200 || prevstateno = 400 || prevstateno = 430), 15, 12) + 2 * map(counterhit)
ground.velocity = ifelse((prevstateno = 200 || prevstateno = 400 || prevstateno = 430), -7.51, -4.49), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50), 25
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

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
var(42) = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 7, 11)
channel = 0

[State 210, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 8
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 210, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 3
attr = S, NA
damage = 76, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8021)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 108), var(37) := -66
hitsound = -1 + 0 * (var(31) := 8)
guardsound = -1
ground.type = High
ground.slidetime = 14
ground.hittime = 15 + 3 * map(counterhit)
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100), ifelse(moveguarded, 25, 50)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 210, Anim]
type = changeanim
trigger1 = anim = 210
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 8
value = 210
elem = 4
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Medium Punch 2>========================
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
var(42) = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2
value = 3, ifelse(random < 500, 7, 11)
channel = 0

[State 215, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 215, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 3
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
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 160), var(37) := -69
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18 + 3 * map(counterhit)
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100), ifelse(moveguarded, 25, 50)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(13) >= 0
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
anim = ifelse((abs(map(p2bodydistx)) <= (const(size.xscale) * 26)) && (prevstateno != [200, 259]), 221, 220)
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
var(42) = 1

[State 220, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(12) < 0
player = ceil(35 * const(size.xscale)), 0
ignorehitpause = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 2, 8)
channel = 0

[State 220, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 9
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 220, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = anim = 220 && (animelem = 3 || animelem = 6 || animelem = 9)
attr = S, NA
damage = 30, 0
dizzypoints = -ceil(67 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (var(33) := 8022)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 194), var(37) := -27
hitsound = -1 + 0 * (var(31) := 9)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18 + 3 * map(counterhit)
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200), ifelse(moveguarded, 25, 100)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 220, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = anim = 221 && animelem = 3
attr = S, NA
damage = 105, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8022)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 130), var(37) := -30
hitsound = -1 + 0 * (var(31) := 9)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18 + 3 * map(counterhit)
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200), ifelse(moveguarded, 25, 100)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 220, Anim]
type = changeanim
trigger1 = anim = 221
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 8
value = 221
elem = 4
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = anim = 220 && animelemtime(11) >= 0
trigger2 = anim = 221 && animelemtime(4) >= 0
movetype = I

[State 220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Hard Punch 2>========================
[Statedef 225]
type = S
movetype = A
physics = S
anim = 225
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
var(42) = 1

[State 225, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(12) < 0
player = ceil(35 * const(size.xscale)), 0
ignorehitpause = 1

[State 225, Snd]
type = playsnd
trigger1 = animelem = 4
value = 3, 8
channel = 0

[State 225, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 9
channel = 1
freqmul = 0.95 + (random / 10000.0)
[State 225, Snd]
type = playsnd
trigger1 = animelem = 5
value = 5, 0

[State 225, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = !movecontact && !movereversed
trigger1 = animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8
attr = S, NA
damage = 100, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8022)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 230), var(37) := ifelse((animelem = 4), -30, ifelse((animelem = 5), -99, ifelse((animelem = 6), -122, ifelse((animelem = 7), -159, -178))))
hitsound = -1 + 0 * (var(31) := 9)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18 + 3 * map(counterhit)
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = -4, -8
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200), ifelse(moveguarded, 25, 100)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = 1
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
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
var(42) = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 9, 10)
channel = 0

[State 230, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 230, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 3
attr = S, NA
damage = 35, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 118), var(37) := -61
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1
ground.type = High
ground.slidetime = ifelse((prevstateno = 430), 15, 12)
ground.hittime = ifelse((prevstateno = 430), 15, 12) + 2 * map(counterhit)
ground.velocity = ifelse((prevstateno = 430), -7.51, -4.49), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50), 25
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 230, Anim]
type = changeanim
trigger1 = anim = 230
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 8
value = 230
elem = 4
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
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
var(42) = 1

[State Snd]
type = playsnd
trigger1 = animelem = 3 && random < 350
value = 3, ifelse(random < 500, 7, 11)
channel = 0

[State 240, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 240, Pos]
type = posadd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4
x = 8 * const(size.xscale)

[State 240, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 5
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
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 88), var(37) := -77
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
ground.type = High
ground.slidetime = 14
ground.hittime = 15 + 3 * map(counterhit)
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100), ifelse(moveguarded, 25, 50)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = 1
forcestand = 1

[State 240, Anim]
type = changeanim
trigger1 = anim = 240
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(5) >= 0 && animelemtime(6) <= 0
trigger1 = hitpausetime <= 10
value = 240
elem = 6
ignorehitpause = 1

[State 240, Anim]
type = changeanim
trigger1 = anim = 240
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(6) >= 0 && animelemtime(7) <= 0
trigger1 = hitpausetime <= 7
value = 240
elem = 7
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
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
physics = S
anim = 250
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
var(42) = 1

[State 250, Width]
type = width
trigger1 = animelem = 3
player = ceil(50 * const(size.xscale)), 0
ignorehitpause = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 2, 8)
channel = 0

[State 250, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 250, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 4
attr = S, NA
damage = 95, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8022)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 147), var(37) := -61
hitsound = -1 + 0 * (var(31) := 9)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18 + 3 * map(counterhit)
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200), ifelse(moveguarded, 25, 100)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 250, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Crouchin Light Punch>========================
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
var(42) = 1

[State Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 3, ifelse(random < 500, 9, 10)
channel = 0

[State 400, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 7
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 400, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 2
attr = C, NA
damage = 30, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8020)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 110), var(37) := -36
hitsound = -1 + 0 * (var(31) := 7)
guardsound = -1
ground.type = Low
ground.slidetime = ifelse((prevstateno = 200 || prevstateno = 400 || prevstateno = 430), 15, 12)
ground.hittime = ifelse((prevstateno = 200 || prevstateno = 400 || prevstateno = 430), 15, 12) + 2 * map(counterhit)
ground.velocity = ifelse((prevstateno = 200 || prevstateno = 400 || prevstateno = 430), -7.51, -4.49), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
down.velocity = -2, -2
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50), 25
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

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
var(42) = 1

[State 410, Width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
player = ceil(40 * const(size.xscale)), 0
ignorehitpause = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 7, 11)
channel = 0

[State 410, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 8
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 410, Hit]
type = hitdef
triggerall = var(15) < 1
trigger1 = animelem = 4
trigger2 = animelem = 5 && !movecontact && !movereversed
attr = C, NA
damage = 75, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype =  Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8021)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 132), var(37) := ifelse((animelem = 4), -20, -78)
hitsound = -1 + 0 * (var(31) := 8)
guardsound = -1
ground.type = Low
ground.slidetime = 14
ground.hittime = 15 + 3 * map(counterhit)
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
down.velocity = -3, -3
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100), ifelse(moveguarded, 25, 50)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = 1
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
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
physics = N
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
var(42) = 1

[State 420, Width]
type = width
trigger1 = animelemtime(2) >= 0 && animelemtime(13) < 0
player = ceil(30 * const(size.xscale)), 0
ignorehitpause = 1

[State 420, Type]
type = statetypeset
trigger1 = animelemtime(13) >= 0
physics = C

[State 420, Vel]
type = velset
trigger1 = animelemtime(2) >= 0 && animelemtime(13) < 0
x = 4

[State 420, Vel]
type = velset
trigger1 = animelem = 13
x = 0

[State 420, Snd]
type = playsnd
trigger1 = animelem = 2
value = 3, 11
channel = 0

[State 420, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 9
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 420, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 2
attr = C, NA
damage = 90, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8022)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 120), var(37) := -22
hitsound = -1 + 0 * (var(31) := 9)
guardsound = -1
ground.type = Trip
ground.slidetime = 18
ground.hittime = 18 + 3 * map(counterhit)
ground.velocity = -1, -8.24
air.type = Low
air.velocity = -1, -8.24
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200), ifelse(moveguarded, 25, 100)
givepower = 40, 40
yaccel = 0.677
fall = 1
fall.recover = !map(counterhit)
fall.recovertime = 120

[State Idle]
type = statetypeset
trigger1 = animelemtime(13) >= 0
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
var(42) = 1

[State Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 3, ifelse(random < 500, 9, 10)
channel = 0

[State 430, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 430, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 2
attr = C, NA
damage = 30, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Light
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 82), var(37) := -4
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1
ground.type = Low
ground.slidetime = ifelse((prevstateno = 430), 15, 12)
ground.hittime = ifelse((prevstateno = 430), 15, 12) + 2 * map(counterhit)
ground.velocity = ifelse((prevstateno = 430), -7.51, -4.49), 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
down.velocity = -2, -2
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50), 25
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

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
var(42) = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 7, 11)
channel = 0

[State 440, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 440, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 2
attr = S, NA
damage = 70, 0
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
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 104), var(37) := -12
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
ground.type = Low
ground.slidetime = 14
ground.hittime = 15 + 3 * map(counterhit)
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
down.velocity = -3, -3
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100), ifelse(moveguarded, 25, 50)
givepower = 40, 40
yaccel = 0.4850
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 440, Anim]
type = changeanim
trigger1 = anim = 440
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
trigger1 = hitpausetime <= 8
value = 440
elem = 3
ignorehitpause = 1

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
var(42) = 1

[State 450, Pos]
type = posadd
trigger1 = animelem = 1 || animelem = 3
x = 16 * const(size.xscale)

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 2, 8)
channel = 0

[State 450, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 450, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 3
attr = C, NA
damage = 100, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype =  Back
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 55), var(37) := -93
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18 + 3 * map(counterhit)
ground.velocity = -4, -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4, -7
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200), ifelse(moveguarded, 25, 100)
givepower = 40, 40
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
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
var(42) = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 9, 10)
channel = 0

[State 600, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 7
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 600, Hit]
type = hitdef
trigger1 = var(15) < 1
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
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8020)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 80), var(37) := -55
hitsound = -1 + 0 * (var(31) := 7)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.hittime = 12
guard.ctrltime = 12
guard.slidetime = 12
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50), 25
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 600, Type]
type = statetypeset
trigger1 = animelemtime(8) >= 0
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
var(42) = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 7, 11)
channel = 0

[State 610, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 610, Hit]
type = hitdef
trigger1 = var(15) < 1
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
sparkxy = -10 + 0 * (var(35) := -25) * (var(36) := 88), var(37) := -57
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.hittime = 15
guard.ctrltime = 15
guard.slidetime = 15
guard.velocity = -7.51
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100), ifelse(moveguarded, 25, 50)
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 610, Anim]
type = changeanim
trigger1 = anim = 610
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 8
value = 610
elem = 4
ignorehitpause = 1

[State 610, Type]
type = statetypeset
trigger1 = animelemtime(11) >= 0
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
var(42) = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 2, 8)
channel = 0

[State 620, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 9
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 620, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = anim = 620 && (animelem = 3 || animelem = 8 || animelem = 13)
attr = A, NA
damage = 30, 0
dizzypoints = -ceil(67 * fvar(10)) * !var(20)
animtype =  Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (var(33) := 8022)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 108), var(37) := -62
hitsound = -1 + 0 * (var(31) := 9)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.hittime = 18
guard.ctrltime = 18
guard.slidetime = 18
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200), ifelse(moveguarded, 25, 100)
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 620, Type]
type = statetypeset
trigger1 = animelemtime(15) >= 0
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
var(42) = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 9, 10)
channel = 0

[State 630, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 630, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 2
attr = A, NA
damage = 40, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype =  Light
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 84), var(37) := -75
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.hittime = 12
guard.ctrltime = 12
guard.slidetime = 12
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.type = High
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50), 25
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 630, Anim]
type = changeanim
trigger1 = anim = 630
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
trigger1 = hitpausetime <= 8
value = 630
elem = 3
ignorehitpause = 1

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
var(42) = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 7, 11)
channel = 0

[State 640, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 640, Hit]
type = hitdef
trigger1 = var(15) < 1
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
sparkxy = -10 + 0 * (var(35) := -30) * (var(36) := 86), var(37) := -64
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.hittime = 15
guard.ctrltime = 15
guard.slidetime = 15
guard.velocity = -7.51
guard.cornerpush.veloff = 0
air.type = High
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100), ifelse(moveguarded, 25, 50)
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 640, Anim]
type = changeanim
trigger1 = anim = 640
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 8
value = 640
elem = 4
ignorehitpause = 1

[State 640, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
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
var(42) = 1

[State Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 2, 8)
channel = 0

[State 650, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 650, Hit]
type = hitdef
trigger1 = var(15) < 1
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
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 60), var(37) := -27
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.hittime = 18
guard.ctrltime = 18
guard.slidetime = 18
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200), ifelse(moveguarded, 25, 100)
givepower = 40, 40
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = 1

[State 650, Anim]
type = changeanim
trigger1 = anim = 650
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 8
value = 650
elem = 4
ignorehitpause = 1

[State 650, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
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
var(42) = 1

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
value = 12

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
trigger1 = animelem = 2
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= ceil(32 * const(size.xscale))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
p1stateno = ifelse((!AIlevel && command = "holdfwd") || (AIlevel && frontedgedist < backedgedist), 803, 801)
p2stateno = 802
guard.dist = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
fall.envshake.time = 10
fall.envshake.freq = 180
fall.envshake.ampl = 2
numhits = 0
ID = 800

[State 800, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5000, 0
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
anim = 801
ctrl = 0
sprpriority = 2

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
pos = 68* const(size.xscale), 0

[State 801, End]
type = changestate
trigger1 = !animtime
value = 810
ctrl = 0


;--- PLAYER TURNS ---
[Statedef 803]
type = S
movetype = A
physics = S
anim = 803
ctrl = 0
sprpriority = 2

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
pos = -68 * const(size.xscale), 0

[State 803, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -28 * const(size.xscale), 0

[State 803, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 0, 0

[State 803, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 36 * const(size.xscale), 0

[State 803, Bind 5]
type = targetbind
trigger1 = animelemtime(5) >= 0
pos = 68 * const(size.xscale), 0

[State 803, spr]
type = sprpriority
trigger1 = 1
value = 1 -2 * (animelemtime(2) >= 0 && animelemtime(5) < 0)

[State 803, End]
type = changestate
trigger1 = !animtime
value = 810
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


;=======================<THROW ======
;--- PLAYER ---
[Statedef 810]
type = S
movetype = A
physics = S
anim = 810
ctrl = 0
sprpriority = 2

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

[State 810, throwsnd]
type = playsnd
trigger1 = animelem = 3
value = 3, 2
channel = 0

[State 810, throwsnd]
type = playsnd
trigger1 = animelem = 2
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 810, Width]
type = width
trigger1 = animelemtime(2) < 0
edge = ceil(80 * const(size.xscale)), 0

[State 810, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 65 * const(size.xscale), 0

[State 810, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 48 * const(size.xscale), -103

[State 810, Bind 3]
type = targetbind
trigger1 = animelem = 3
pos = -8 * const(size.xscale), -140

[State 810, Damage]
type = hitadd
trigger1 = animelem = 3
value = 1

[State 810, Juggle]
type = varadd
trigger1 = animelem = 3
var(15) = 1

[State 810, Damage]
type = targetlifeadd
trigger1 = animelem = 3
value = -ceil(100 * fvar(10))

;[State 810, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 3
;value = -ceil(100 * fvar(10))

[State 810, Damage]
type = targetpoweradd
trigger1 = animelem = 3
value = 40;givepower

[State 810, Damage]
type = poweradd
trigger1 = animelem = 3
value = 100;getpower

[State 810, Throw]
type = targetstate
trigger1 = animelem = 3
value = 812

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

[State 811, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 812]
type = A
movetype = H
physics = N
velset = 3, -11
sprpriority = 2

[State 812, Turn]
type = turn
trigger1 = !time

[State 812, Fix]
type = posadd
trigger1 = !time
y = -const(size.mid.pos.y)

[State 812, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 812, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)

[State 812, Anim]
type = changeanim
trigger1 = anim = 5051
trigger1 = vel y > 0
value = 5061

[State 812, Anim]
type = changeanim
trigger1 = anim = 5030
trigger1 = vel y > 0
value = ifelse(selfanimexist(5035), 5035, 5050)

[State 812, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 5035
value = 5050

[State 812, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 812, Hit Ground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100


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
var(42) = 1

[State 850, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 850, Direction]
type = varset
trigger1 = 1
var(0) = ifelse(command = "holdback", -1, 1)

[State 850, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = var(15) < 1
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= (44 - const(size.air.front))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
trigger1 = p2dist y = [-42, 38]
ID = 850
attr = A, NT
hitflag = AF
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
p1stateno = 860
p2stateno = 865
guard.dist = 0
numhits = 0
fall = 1
fall.recover = 1
fall.recovertime = 120

[State 850, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5000, 0
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


;=======================<HOUTEN>========================
[Statedef 860]
type = A
physics = N
movetype = A
anim = 860
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 860, Turn]
type = turn
trigger1 = animelem = 2
trigger1 = var(0) = -1

[State 860, Turn]
type = targetfacing
trigger1 = !time
trigger2 = animelem = 2
value = -1

[State Throw]
type = targetstate
trigger1 = !time
value = 865

[State 860, Assert]
type = assertspecial
trigger1 = 1
flag = noautoturn

[State 860, Width]
type = width
trigger1 = 1
edge = ceil(40 * const(size.xscale)), ceil(40 * const(size.xscale))

[State 860, spr]
type = sprpriority
trigger1 = 1
value = 1 -2 * (animelemtime(3) >= 0)

[State 860, Throw]
type = targetstate
trigger1 = !time
value = 865
[State 860, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 860, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.75

[State 860, Vel]
type = velset
trigger1 = animelem = 2
x = 0
y = -6

[State 860, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 71 * const(size.xscale), -70

[State 860, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 15 * const(size.xscale), -67

[State 860, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0
pos = 0, 0

[State 860, Snd]
type = playsnd
trigger1 = time = 8
value = 1, 6
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 860, End]
type = changestate
trigger1 = animelemtime(2) > 0 && vel y > 0 && (pos y > -vel y)
value = 861


;--- HIT FLOOR ---
[Statedef 861]
type = A
physics = N
movetype = A
anim = 861
ctrl = 0
velset = 0, 0
sprpriority = -1

[State 861, Throw]
type = targetstate
trigger1 = !time
value = 866

[State 861, Pos]
type = posset
trigger1 = animelemtime(2) < 0
y = 0

[State 861, Vel]
type = velset
trigger1 = animelem = 2
x = -4
y = -6

[State 861, Snd]
type = playsnd
trigger1 = !time
value = 3, 8
channel = 0

[State 861, Snd]
type = playsnd
trigger1 = !time
value = 5, 15

[State 861, Snd]
type = playsnd
trigger1 = !time
value = 2, 9
channel = 2

[State 861, Shake]
type = envshake
trigger1 = !time
time = 18
freq = 180
ampl = 2

[State 861, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = 0, -ceil(pos y)
ownpal = 1

[State 861, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = !time
trigger1 = numtarget
helpertype = normal
stateno = 8022
ID = 8000
name = "Spark"
postype = p2
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 861, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = !time
trigger1 = numtarget
anim = F2
ID = 8000
postype = p2
facing = -1
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 861, Blood]
type = helper
trigger1 = map(blood)
trigger1 = map(mysparks)
trigger1 = time <= 1
helpertype = normal
stateno = 7052
ID = 7050
name = "Blood"
postype = p1
pos = 0, 0
facing = ifelse(time, 1, -1)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 861, Blood Screenpack]
type = explod
trigger1 = map(blood)
trigger1 = !map(mysparks)
trigger1 = !time
trigger1 = numtarget
anim = F2
ID = 8000
postype = p2
facing = -1
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 861, Bind 1]
type = targetbind
trigger1 = animelem = 1
pos = 0, 0

[State 861, Damage]
type = hitadd
trigger1 = animelem = 1
value = 1

[State 810, Juggle]
type = varadd
trigger1 = animelem = 1
var(15) = 1

[State 861, Damage]
type = targetlifeadd
trigger1 = animelem = 1
value = -ceil(140 * fvar(10))

;[State 861, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 1
;value = -ceil(150 * fvar(10))

[State 861, Damage]
type = targetpoweradd
trigger1 = animelem = 1
value = 40;givepower

[State 861, Damage]
type = poweradd
trigger1 = animelem = 1
value = 100;getpower

[State 861, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = N

[State Gravity]
type = gravity
trigger1 = animelemtime(2) >= 0

[State Land]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;--- TARGET ---
[Statedef 865]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 0

[State 865, Anim]
type = changeanim2
trigger1 = !time
value = 865

[State 865, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 865, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 866]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 0
velset = 0, 0

[State 866, Anim]
type = changeanim2
trigger1 = !time
value = 866

[State 866, Vel]
type = posset
trigger1 = 1
y = 0

[State 866, Stun]
type = selfstate
trigger1 = time >= 10
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 866, End]
type = selfstate
trigger1 = time >= 39
value = 5120
ctrl = 1


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
value = 5000, 0
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
