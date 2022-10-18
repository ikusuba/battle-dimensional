; ________________________________
;| Cammy by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<NORMAL MOVES>========================================
;==============================================================================================

;=======================<Standing Far Light Punch>========================
[Statedef 200]
type = S
physics = S
movetype = A
anim = 200
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

[State 200, Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 3)
channel = 0

[State 200, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 0
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 200, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 20, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * map(counterhit)
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 0)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 80), var(37) := -75

[State 200, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Close Light Punch>========================
[Statedef 201]
type = S
physics = S
movetype = A
anim = 201
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

[State 201, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 4, ifelse(random < 500, 0, 3)
channel = 0

[State 201, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 0
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 201, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 25, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * map(counterhit)
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 0)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 55), var(37) := -85

[State 201, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Far Medium Punch>========================
[Statedef 210]
type = S
physics = S
movetype = A
anim = 210
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

[State 210, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 4, 5)
channel = 0

[State 210, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 210, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 55, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 15
air.hittime = 120
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.16, -8.00
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 1)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 50) * (var(36) := 92), var(37) := -72

[State 210, Anim]
type = changeanim
trigger1 = anim = 210
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 8
value = 210
elem = 4
ignorehitpause = 1

[State 210, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Close Medium Punch>========================
[Statedef 211]
type = S
physics = S
movetype = A
anim = 211
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

[State 211, Snd]
type = playsnd
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 4, 5)
channel = 0

[State 211, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 211, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 15
air.hittime = 120
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.16, -8.00
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 1)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 52), var(37) := -54
forcestand = 1

[State 211, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3 && !movecontact && !movereversed
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 15
air.hittime = 120
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.16, -8.00
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 1)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 42), var(37) := -112

[State 211, Anim]
type = changeanim
trigger1 = anim = 211
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 8
value = 211
elem = 4
ignorehitpause = 1

[State 211, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 211, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Far Hard Punch>========================
[Statedef 220]
type = S
physics = S
movetype = A
anim = 220
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

[State 220, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 220, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 220, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 75, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 62), var(37) := -52

[State 220, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4 && !movecontact && !movereversed
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 75, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 50) * (var(36) := 90), var(37) := -64

[State 220, Anim]
type = changeanim
trigger1 = anim = 220
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
trigger1 = hitpausetime <= 10
value = 220
elem = 5
ignorehitpause = 1

[State 220, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Close Hard Punch>========================
[Statedef 221]
type = S
physics = S
movetype = A
anim = 221
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

[State 221, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 221, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 221, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 70, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 78), var(37) := -66

[State 221, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 221, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Far Light Kick>========================
[Statedef 230]
type = S
physics = S
movetype = A
anim = 230
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

[State 230, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 4, ifelse(random < 500, 0, 3)
channel = 0

[State 230, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 230, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 30, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * map(counterhit)
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 10) * (var(36) := 67), var(37) := -78

[State 230, Anim]
type = changeanim
trigger1 = anim = 230
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 6
value = 230
elem = 4
ignorehitpause = 1

[State 230, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 230, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Close Light Kick>========================
[Statedef 231]
type = S
physics = S
movetype = A
anim = 231
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

[State 231, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 4, ifelse(random < 500, 0, 3)
channel = 0

[State 231, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 231, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 25, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * map(counterhit)
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 15) * (var(36) := 40), var(37) := -68

[State 231, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
[State 231, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Far Medium Kick>========================
[Statedef 240]
type = S
physics = S
movetype = A
anim = 240
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

[State 240, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 4, 5)
channel = 0

[State 240, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 240, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 55, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 15
air.hittime = 120
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -6.48, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 112), var(37) := -74

[State 240, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4 && prevstateno = 700
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 55, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 15
air.hittime = 120
ground.velocity = -6.48, -5.25
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -6.48, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 112), var(37) := -74

[State 240, Anim]
type = changeanim
trigger1 = anim = 240
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
trigger1 = hitpausetime <= 8
value = 240
elem = 5
ignorehitpause = 1

[State 240, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
[State 240, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Close Medium Kick>========================
[Statedef 241]
type = S
physics = S
movetype = A
anim = 241
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

[State 241, Snd]
type = playsnd
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 4, 5)
channel = 0

[State 241, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 241, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 55, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 15
air.hittime = 120
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -6.48, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 36), var(37) := -68
forcestand = 1

[State 241, Anim]
type = changeanim
trigger1 = anim = 241
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
trigger1 = hitpausetime <= 8
value = 241
elem = 3
ignorehitpause = 1

[State 241, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 241, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Falling Arc>========================
[Statedef 245]
type = S
physics = S
movetype = A
anim = 245
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

[State 245, Snd]
type = playsnd
trigger1 = animelem = 5
value = 4, ifelse(random < 500, 4, 5)
channel = 0

[State 245, Snd]
type = playsnd
trigger1 = animelem = 7
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 255, Pos]
type = posadd
trigger1 = animelem = 9
x = 20 * const(size.xscale)

[State 245, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 7
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = H
priority = 4, Hit
damage = 50, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 15
air.hittime = 120
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -6.48, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 80), var(37) := -65

[State 245, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 8
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = H
priority = 4, Hit
damage = 30, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 15
air.hittime = 120
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -6.48, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 80), var(37) := -30

[State 245, Type]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I

[State 245, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Far Hard Kick>========================
[Statedef 250]
type = S
physics = S
movetype = A
anim = 250
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

[State 250, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 250, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 250, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 75, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 64), var(37) := -58

[State 250, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 5 && !movecontact && !movereversed
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 70, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 70) * (var(36) := 110), var(37) := -58

[State 250, Anim]
type = changeanim
trigger1 = anim = 250
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(5) >= 0 && animelemtime(6) <= 0
trigger1 = hitpausetime <= 10
value = 250
elem = 6
ignorehitpause = 1

[State 250, Type]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
[State 250, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Close Hard Kick>========================
[Statedef 251]
type = S
physics = S
movetype = A
anim = 251
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

[State 251, Snd]
type = playsnd
trigger1 = animelem = 4 && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 251, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 251, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 5
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 80, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -3.0, -9.0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 15) * (var(36) := 45), var(37) := -76
forcestand = 1

[State 251, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 6 && !movecontact && !movereversed
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 70, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 60), var(37) := -120

[State 251, Jump Cancel]
type = changestate
value = 40
trigger1 = movehit = 1
trigger1 = !AIlevel && !ishelper
trigger1 = roundstate = 2 && command = "holdup"

[State 251, Anim]
type = changeanim
trigger1 = anim = 251
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(6) > 0 && animelemtime(7) <= 0
trigger1 = hitpausetime <= 10
value = 251
elem = 7
ignorehitpause = 1

[State 251, Type]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
[State 251, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Knee Bullet>========================
[Statedef 255]
type = S
physics = N
movetype = A
anim = 255
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

[State 255, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 255, Snd]
type = playsnd
trigger1 = animelem = 3 || animelem = 7
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 255, Pos]
type = posadd
trigger1 = animelem = 2
x = ifelse(var(20), 0, 25) * const(size.xscale)

[State 255, Vel]
type = velmul
trigger1 = vel x
x = 0.9

[State 255, Vel]
type = velset
trigger1 = animelem = 3
x = 6

[State 255, Vel]
type = velset
trigger1 = animelem = 10
x = 0

[State 255, Hit]
type = hitdef
trigger1 = (var(15) < 3 || var(20))
trigger1 = animelem = 4
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = ifelse(var(20), 18, 12)
guard.hittime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -5.77, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -3.13, -5.50
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
forcenofall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 15) * (var(36) := 40), var(37) := -75
forcestand = 1

[State 255, Hit]
type = hitdef
trigger1 = (var(15) < 3 || var(20))
trigger1 = animelem = 8
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -3.13, -5.50
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
forcenofall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 15) * (var(36) := 40), var(37) := -75
forcestand = 0

[State 255, Anim]
type = changeanim
trigger1 = anim = 255
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
trigger1 = hitpausetime <= 10
value = 255
elem = 5
ignorehitpause = 1

[State 255, Anim]
type = changeanim
trigger1 = anim = 255
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(8) >= 0 && animelemtime(9) <= 0
trigger1 = hitpausetime <= 10
value = 255
elem = 9
ignorehitpause = 1

[State 255, Type]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I

[State 255, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Crouching Light Punch>========================
[Statedef 400]
type = C
physics = C
movetype = A
anim = 400
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

[State 400, Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 3)
channel = 0

[State 400, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 400, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 20, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2 * map(counterhit)
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 0)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 71), var(37) := -35

[State 400, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 400, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Medium Punch>========================
[Statedef 410]
type = C
physics = C
movetype = A
anim = 410
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

[State 410, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 4, 5)
channel = 0

[State 410, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 410, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 15
air.hittime = 120
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -6.48, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 1)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 35) * (var(36) := 77), var(37) := -32

[State 410, Anim]
type = changeanim
trigger1 = anim = 410
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 8
value = 410
elem = 4
ignorehitpause = 1

[State 410, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 410, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Hard Punch>========================
[Statedef 420]
type = C
physics = C
movetype = A
anim = 420
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

[State 420, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 420, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 420, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 70, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 55) * (var(36) := 95), var(37) := -83
forcestand = 1

[State 420, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
[State 420, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Light Kick>========================
[Statedef 430]
type = C
physics = C
movetype = A
anim = 430
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

[State 430, Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 3)
channel = 0

[State 430, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 430, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = 25, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2 * map(counterhit)
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 75), var(37) := -4

[State 430, Type]
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
physics = C
movetype = A
anim = 440
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

[State 440, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 4, 5)
channel = 0

[State 440, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 440, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = 50, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3 * map(counterhit)
ground.slidetime = 15
guard.hittime = 15
air.hittime = 120
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -5.40, -5.65
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 115), var(37) := -4

[State 440, Anim]
type = changeanim
trigger1 = anim = 440
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 8
value = 440
elem = 4
ignorehitpause = 1

[State 440, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 440, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Hard Kick>========================
[Statedef 450]
type = C
physics = C
movetype = A
anim = 450
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

[State 450, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 450, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 450, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = 70, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 18 + 4 * map(counterhit)
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1, -8.24
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -1, -8.24
air.cornerpush.veloff = 0
yaccel = 0.677
fall = 1
fall.recover = !map(counterhit)
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 50) * (var(36) := 110), var(37) := -14

[State 450, Type]
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
physics = N
movetype = A
anim = 600
ctrl = 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 600, Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 3)
channel = 0

[State 600, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 600, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 35, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * map(counterhit)
ground.slidetime = 12
guard.hittime = 12
guard.ctrltime = 12
guard.slidetime = 12
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 0)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 49), var(37) := -43

[State 600, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 600, Accel]
type = gravity
trigger1 = 1

[State 600, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<Jumping Medium Punch>========================
[Statedef 610]
type = A
physics = N
movetype = A
anim = 610
ctrl = 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 610, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 4, 5)
channel = 0

[State 610, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 610, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 50, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = High
ground.hittime = 12 + 3 * map(counterhit)
ground.slidetime = 12 + 3 * map(counterhit)
guard.hittime = 15
guard.ctrltime = 15
guard.slidetime = 15
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -6.48, -5.25
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 44), var(37) := -38

[State 610, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 610, Accel]
type = gravity
trigger1 = 1

[State 610, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<Jumping Hard Punch>========================
[Statedef 620]
type = A
physics = N
movetype = A
anim = 620
ctrl = 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 620, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 620, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 620, Hit]
type = hitdef
trigger1 = (var(15) < (1 + hitcount) || var(20))
trigger1 = animelem = 3
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 75, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 4 * map(counterhit)
ground.slidetime = 12 + 4 * map(counterhit)
guard.hittime = 18
guard.ctrltime = 18
guard.slidetime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 76), var(37) := -53

[State 620, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 620, Accel]
type = gravity
trigger1 = 1

[State 620, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<Jumping Light Kick>========================
[Statedef 630]
type = A
physics = N
movetype = A
anim = 630
ctrl = 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 630, Snd]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 3)
channel = 0

[State 630, Snd]
type = playsnd
trigger1 = animelem = 1
value = 1, 3
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 630, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 30, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2 * map(counterhit)
ground.slidetime = 12
guard.hittime = 12
guard.ctrltime = 12
guard.slidetime = 12
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := -20) * (var(36) := 100), var(37) := -49

[State 630, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 630, Accel]
type = gravity
trigger1 = 1

[State 630, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<Jumping Medium Kick>========================
[Statedef 640]
type = A
physics = N
movetype = A
anim = 640
ctrl = 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 640, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 4, 5)
channel = 0

[State 640, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 640, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 55, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 3 * map(counterhit)
ground.slidetime = 12 + 3 * map(counterhit)
guard.hittime = 15
guard.ctrltime = 15
guard.slidetime = 15
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -6.48, -5.25
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 66), var(37) := -66

[State 640, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 640, Accel]
type = gravity
trigger1 = 1

[State 640, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<Jumping Hard Kick>========================
[Statedef 650]
type = A
physics = N
movetype = A
anim = 650
ctrl = 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 650, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 650, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 650, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 70, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 4 * map(counterhit)
ground.slidetime = 12 + 4 * map(counterhit)
guard.hittime = 18
guard.ctrltime = 18
guard.slidetime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -4.25, -6.56
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 74), var(37) := -46

[State 650, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 650, Accel]
type = gravity
trigger1 = 1

[State 650, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<Throw Attempt>========================
[Statedef 800]
type = S
physics = S
movetype = A
anim = 800
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

[State 800, Button]
type = varset
trigger1 = !time
trigger1 = !AIlevel
var(10) = map(cmd_kthrow)

[State 800, Button AI]
type = varset
trigger1 = !time
trigger1 = AIlevel
var(10) = (random < 500)

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

[State 800, Guard Dist]
type = attackdist
trigger1 = 1
value = 0

[State 800, Hit]
type = hitdef
trigger1 = animelem = 3 && !var(10)
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= ceil(24 * const(size.xscale))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = S, NT
hitflag = M
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -50
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
fall.xvelocity = -3.325
fall.yvelocity = -3.85
numhits = 0
p1stateno = 810
p2stateno = 806

[State 800, Hit]
type = hitdef
trigger1 = animelem = 3 && var(10)
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= ceil(24 * const(size.xscale))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = S, NT
hitflag = M
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -50
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
fall.xvelocity = 3.325
fall.yvelocity = -3.85
numhits = 0
p1stateno = ifelse(command = "holdback", 820, 805)
p2stateno = 806

[State 800, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 8
channel = 0

[State 800, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 0
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 800, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 800, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER TURNS ---
[Statedef 805]
type = S
movetype = A
physics = S
anim = 805
ctrl = 0
sprpriority = 2

[State 805, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 806
[State 805, Throw]
type = targetfacing
trigger1 = !time
trigger1 = numtarget
value = -1

[State 805, Width]
type = width
trigger1 = 1
edge = ceil(24 * const(size.xscale)), ceil(24 * const(size.xscale))

[State 805, Turn]
type = turn
trigger1 = animelem = 3
[State 805, Turn]
type = targetfacing
trigger1 = 1
value = -1

[State 805, Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit) > 0
map = "techhit"
value = -1

[State 805, Tech Hit]
type = changestate
triggerall = numtarget && map(techhit)
triggerall = target, command != "holdup" && target, command != "holddown"
trigger1 = ((target, command = "a") + (target, command = "b") + (target, command = "c") + (target, command = "x") + (target, command = "y") + (target, command = "z")) >= 2
trigger2 = target, command = "holdfwd" || target, command = "holdback"
trigger2 = target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z"
value = 890

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(2) < 0 || animelemtime(4) >= 0
pos = 34 * const(size.xscale), 0
[State 805, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0
pos = 11 * const(size.xscale), 0

[State 805, End]
type = changestate
trigger1 = !numtarget
value = 0
ctrl = 1
[State 805, End]
type = changestate
trigger1 = animelemtime(4) >= 0
value = ifelse(var(10), 820, 810)


;--- TARGET ---
[Statedef 806]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 2

[State 806, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 806, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[State 806, Anim]
type = changeanim2
trigger1 = !time
value = 806

[State 806, Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


;=======================<Hooligan Suplex>========================
[Statedef 810]
type = S
physics = N
movetype = A
anim = 810
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 810, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 810, Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit) > 0
map = "techhit"
value = -1

[State 810, Tech Hit]
type = changestate
triggerall = numtarget && map(techhit)
triggerall = target, command != "holdup" && target, command != "holddown"
trigger1 = ((target, command = "a") + (target, command = "b") + (target, command = "c") + (target, command = "x") + (target, command = "y") + (target, command = "z")) >= 2
trigger2 = target, command = "holdfwd" || target, command = "holdback"
trigger2 = target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z"
value = 890

[State 810, Turn Var]
type = varset
trigger1 = !time
var(0) = 0
[State 810, Turn Var]
type = varset
trigger1 = !time
trigger1 = !AIlevel && command = "holdback"
var(0) = 1

[State 810, Turn]
type = turn
trigger1 = !time
trigger1 = var(0)

[State 810, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 815
[State 810, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 810, Width]
type = width
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
edge = ceil(47 * const(size.xscale)), 0
[State 810, Width]
type = width
trigger1 = animelemtime(8) >= 0 && animelemtime(10) < 0
edge = ceil(81 * const(size.xscale)), 0

[State 810, Bind 1]
type = bindtotarget
trigger1 = !var(0)
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
pos = -35 * const(size.xscale), 0
[State 810, Bind 1]
type = targetbind
trigger1 = var(0)
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
pos = -35 * const(size.xscale), 0

[State 810, Bind 2]
type = bindtotarget
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -52 * const(size.xscale), 0

[State 810, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -62 * const(size.xscale), 0

[State 810, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = -48 * const(size.xscale), -2 * const(size.yscale)

[State 810, Bind 5]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = -46 * const(size.xscale), -4 * const(size.yscale)

[State 810, Bind 6]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = -20 * const(size.xscale), -64 * const(size.yscale)

[State 810, Bind 7]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
pos = 42 * const(size.xscale), -56 * const(size.yscale)

[State 810, Bind 8]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(8) >= 0 && animelemtime(10) < 0
pos = 81 * const(size.xscale), 0

[State 810, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 8
value = floor(-140 * fvar(10))
kill = 1

;[State 810, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 8
;value = -ceil(130 * fvar(10)) * !var(20)

[State 810, Power]
type = targetpoweradd
trigger1 = numtarget
trigger1 = animelem = 8
value = 40;givepower

[State 810, Power]
type = poweradd
trigger1 = numtarget
trigger1 = animelem = 8 && !var(20)
value = 100;getpower

[State 810, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 8
value = 1

[State 810, Juggle]
type = varadd
trigger1 = numtarget
trigger1 = animelem = 8
var(15) = 1
ignorehitpause = 1

[State 810, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 10
value = 816

[State 810, Sound]
type = playsnd
trigger1 = animelem = 7
value = 4, 1
channel = 0

[State 810, Sound]
type = playsnd
trigger1 = animelem = 6
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 810, Sound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 8
value = 0, 5100

[State 810, Shake]
type = envshake
trigger1 = numtarget
trigger1 = animelem = 8
time = 12
ampl = 2
freq = 180

[State 810, Dust]
type = helper
trigger1 = numtarget
trigger1 = animelem = 8
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = ceil(48 * const(size.xscale)), 0
ownpal = 1

[State 810, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target ---
[Statedef 815]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 815, Anim]
type = changeanim2
trigger1 = !time
value = 815

[State 815, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 815, Pos]
type = posset
trigger1 = !time
y = 0

[State Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 816]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 816, Anim]
type = changeanim2
trigger1 = !time
value = 816

[State 816, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 816, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 816, Vel]
type = velset
trigger1 = !time
x = -5.32
y = -6.91

[State 816, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 816, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 816, Anim]
type = changeanim
trigger1 = vel y > 0
trigger1 = vel y > 0 && (pos y > -vel y)
trigger1 = selfanimexist(5051)
value = 5051

[State 816, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;=======================<Frankensteiner>========================
[Statedef 820]
type = A
physics = N
movetype = A
anim = 820
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 820, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 820, Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit) > 0
map = "techhit"
value = -1

[State 820, Tech Hit]
type = changestate
triggerall = numtarget && map(techhit)
triggerall = target, command != "holdup" && target, command != "holddown"
trigger1 = ((target, command = "a") + (target, command = "b") + (target, command = "c") + (target, command = "x") + (target, command = "y") + (target, command = "z")) >= 2
trigger2 = target, command = "holdfwd" || target, command = "holdback"
trigger2 = target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z"
value = 890

[State 820, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 825
[State 820, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 820, Width]
type = width
trigger1 = animelemtime(6) >= 0
edge = ceil(33 * const(size.xscale)), 0

[State 820, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) < 0
pos = 28 * const(size.xscale), 0

[State 820, Bind 3]
type = bindtotarget
trigger1 = numtarget = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 24 * const(size.xscale), 86, Head

[State 820, Bind 4]
type = bindtotarget
trigger1 = numtarget = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 18 * const(size.xscale), 90, Head

[State 820, Bind 5]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 24 * const(size.xscale), -68 * const(size.yscale)

[State 820, Bind 6]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0
pos = -32 * const(size.xscale), 0

[State 820, Bind Fix]
type = posset
trigger1 = pos y > 65
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
y = 65
[State 820, Bind Fix]
type = posset
trigger1 = pos y > 0
trigger1 = animelemtime(5) = 0
y = 0

[State 820, Accel]
type = veladd
trigger1 = animelemtime(5) >= 0
y = 0.77389375
[State 820, Vel]
type = velset
trigger1 = animelem = 5
x = -1.579375
y = -5.25

[State 820, Sound]
type = playsnd
trigger1 = animelem = 4
value = 4, 6
channel = 0

[State 820, End]
type = changestate
trigger1 = animelemtime(5) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 821


;--- Slam ---
[Statedef 821]
type = A
physics = N
movetype = A
anim = 821
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 821, Width]
type = width
trigger1 = animelemtime(2) < 0
edge = ceil(33 * const(size.xscale)), 0
[State 821, Pos]
type = posset
trigger1 = animelemtime(2) < 0
y = 0

[State 821, Bind 1]
type = targetbind
trigger1 = animelemtime(2) < 0
pos = -32 * const(size.xscale), 0

[State 821, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = !time
value = floor(-130 * fvar(10))
kill = 1

;[State 810, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = !time
;trigger1 = numtarget
;value = -ceil(140 * fvar(10)) * !var(20)

[State 821, Power]
type = targetpoweradd
trigger1 = numtarget
trigger1 = !time
value = 40;givepower

[State 821, Power]
type = poweradd
trigger1 = numtarget
trigger1 = !time
trigger1 = !var(20)
value = 100;getpower

[State 821, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = !time
value = 1

[State 821, Juggle]
type = varadd
trigger1 = numtarget
trigger1 = !time
var(15) = 1
ignorehitpause = 1

[State 821, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = !time
value = 826

[State 821, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 2
value = 827

[State 821, Sound]
type = playsnd
trigger1 = numtarget
trigger1 = !time
value = 0, 5100

[State 821, Shake]
type = envshake
trigger1 = numtarget
trigger1 = !time
time = 12
ampl = 2
freq = 180

[State 821, Dust]
type = helper
trigger1 = numtarget
trigger1 = !time
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = floor(-40 * const(size.xscale)), 0
ownpal = 1

[State 821, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 1.21611875
[State 821, Vel]
type = velset
trigger1 = animelem = 2
x = 1.579375
y = -6.91

[State 821, End]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 822


;--- Land ---
[Statedef 822]
type = S
physics = N
movetype = I
ctrl = 0
anim = 822
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 822, Pos]
type = posset
trigger1 = 1
y = 0

[State 822, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 822, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 822, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target ---
[Statedef 825]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 825, Anim]
type = changeanim2
trigger1 = !time
value = 825

[State 825, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 825, Pos]
type = posset
trigger1 = !time
y = 0

[State Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 826]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 826, Anim]
type = changeanim2
trigger1 = !time
value = 826

[State 826, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 826, End]
type = selfstate
trigger1 = time >= 60
value = 5040


[Statedef 827]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 827, Anim]
type = changeanim2
trigger1 = !time
value = 827

[State 827, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 827, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 827, Vel]
type = velset
trigger1 = !time
x = 5.32
y = -6.91

[State 827, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 827, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 827, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;=======================<Air Throw Attempt>========================
[Statedef 850]
type = A
physics = N
movetype = A
anim = 850
ctrl = 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 850, Button]
type = varset
trigger1 = !time
trigger1 = !AIlevel
var(10) = map(cmd_kthrow)

[State 850, Button AI]
type = varset
trigger1 = !time
trigger1 = AIlevel
var(10) = (random < 500)

[State 850, Guard Dist]
type = attackdist
trigger1 = 1
value = 0

[State 850, Hit]
type = hitdef
trigger1 = !var(10)
trigger1 = animelem = 2
trigger1 = var(15) < 1 || var(20)
trigger1 = map(p2bodydistx) <= ceil(37 - const(size.air.front))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
trigger1 = p2dist y = [-62, 20]
;(top + 28) (bottom + 92)
attr = A, NT
hitflag = AF
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -50
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
numhits = 0
p1stateno = 860
p2stateno = 865

[State 850, Hit]
type = hitdef
trigger1 = var(10)
trigger1 = animelem = 2 && var(10)
trigger1 = !map(unthrowable) && numenemy
trigger1 = var(15) < 1 || var(20)
trigger1 = map(p2bodydistx) <= ceil((44 * const(size.xscale)) - const(size.air.front))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
trigger1 = p2dist y = [-24, 48]
;(top + 28) (bottom + 92)
attr = A, NT
hitflag = AF
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -50
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
fall.xvelocity = 3.325
fall.yvelocity = -3.85
numhits = 0
p1stateno = 870
p2stateno = 875

[State 850, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 8
channel = 0

[State 850, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 0
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 850, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
[State 850, Accel]
type = gravity
trigger1 = 1

[State 850, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;=======================<Flying Neck Hunt>========================
[Statedef 860]
type = A
physics = N
movetype = A
anim = 860
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 860, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 860, Turn]
type = turn
triggerall = !time
trigger1 = !AIlevel && command = "holdback"
trigger2 = AIlevel && backedgedist < frontedgedist

[State 860, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 865

[State 860, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 860, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
edge = ceil(26 * const(size.xscale)), 0

[State 860, Width]
type = width
trigger1 = animelemtime(5) >= 0
edge = ceil(44 * const(size.xscale)), 0

[State 860, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
pos = -6 * const(size.xscale), -122 * const(size.yscale)

[State 860, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 40 * const(size.xscale), -90 * const(size.yscale)

[State 860, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 26 * const(size.xscale), -16 * const(size.yscale)

[State 860, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 4
value = floor(-120 * fvar(10))
kill = 1

;[State 860, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 4
;value = -ceil(150 * fvar(10)) * !var(20)

[State 860, Power]
type = targetpoweradd
trigger1 = numtarget
trigger1 = animelem = 4
value = 40;givepower

[State 860, Power]
type = poweradd
trigger1 = numtarget
trigger1 = animelem = 4 && !var(20)
value = 100;getpower

[State 860, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 4
value = 1

[State 860, Juggle]
type = varadd
trigger1 = numtarget
trigger1 = animelem = 4
var(15) = 1
ignorehitpause = 1

[State 860, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 4
value = 866

[State 860, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 5
channel = 0

[State 860, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 860, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
y = 0.55278125

[State 860, End]
type = changestate
trigger1 = animelemtime(4) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 861


;--- Land ---
[Statedef 861]
type = S
physics = N
movetype = I
ctrl = 0
anim = 861
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 861, Pos]
type = posset
trigger1 = 1
y = 0

[State 861, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 861, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 861, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target ---
[Statedef 865]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 865, Anim]
type = changeanim2
trigger1 = !time
value = 865

[State 865, Camera]
type = screenbound
trigger1 = 1
value = 0
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
velset = 0, 0
sprpriority = 0

[State 866, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 866, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 866, Vel]
type = velset
trigger1 = !time
x = -9.975
y = 6.65

[State 866, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 866, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 866, Shake]
type = envshake
trigger1 = vel y > 0 && pos y >= 25
time = 12
ampl = 2
freq = 180

[State 866, Anim]
type = changeanim
trigger1 = vel y > 0 && pos y >= 25
trigger1 = selfanimexist(5051)
value = 5051

[State 866, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 25
value = 5100


;=======================<Jumping Frankensteiner>========================
[Statedef 870]
type = A
physics = N
movetype = A
anim = 870
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 870, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 51
ctrl = 1

[State 870, Turn]
type = turn
triggerall = !time
trigger1 = !AIlevel && command = "holdfwd"
trigger2 = AIlevel && backedgedist < frontedgedist

[State 870, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 875

[State 870, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 870, Width]
type = width
trigger1 = animelemtime(4) >= 0
edge = ceil(33 * const(size.xscale)), 0

[State 870, Bind 3]
type = bindtotarget
trigger1 = numtarget = 1
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = (8 * const(size.xscale)), 86, Head

[State 870, Bind 4]
type = bindtotarget
trigger1 = numtarget = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 2, 90, Head

[State 870, Bind 5]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 8 * const(size.xscale), -68 * const(size.yscale)

[State 870, Bind 6]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0
pos = -32 * const(size.xscale), 0

[State 870, Bind Fix]
type = posset
trigger1 = pos y > 65
trigger1 = animelemtime(3) < 0
y = 65

[State 870, Accel]
type = veladd
trigger1 = time >= 9
y = 0.442225

[State 870, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 0

[State 870, End]
type = changestate
trigger1 = vel y > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 871


;--- Slam ---
[Statedef 871]
type = A
physics = N
movetype = A
anim = 871
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 871, Width]
type = width
trigger1 = animelemtime(2) < 0
edge = ceil(33 * const(size.xscale)), 0
[State 871, Pos]
type = posset
trigger1 = animelemtime(2) < 0
y = 0

[State 871, Bind 1]
type = targetbind
trigger1 = animelemtime(2) < 0
pos = -32 * const(size.xscale), 0

[State 871, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = !time
value = floor(-120 * fvar(10))
kill = 1

;[State 871, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = !time
;trigger1 = numtarget
;value = -ceil(150 * fvar(10)) * !var(20)

[State 871, Power]
type = targetpoweradd
trigger1 = numtarget
trigger1 = !time
value = 40;givepower

[State 871, Power]
type = poweradd
trigger1 = numtarget
trigger1 = !time
trigger1 = !var(20)
value = 100;getpower

[State 871, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = !time
value = 1

[State 871, Juggle]
type = varadd
trigger1 = numtarget
trigger1 = !time
var(15) = 1
ignorehitpause = 1

[State 871, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = !time
value = 876

[State 871, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 2
value = 877

[State 871, Sound]
type = playsnd
trigger1 = !time
value = 4, 1
channel = 0

[State 871, Sound]
type = playsnd
trigger1 = numtarget
trigger1 = !time
value = 0, 5100

[State 871, Shake]
type = envshake
trigger1 = numtarget
trigger1 = !time
time = 12
ampl = 2
freq = 180

[State 871, Dust]
type = helper
trigger1 = numtarget
trigger1 = !time
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = floor(-40 * const(size.xscale)), 0
ownpal = 1

[State 871, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.6633375

[State 871, Vel]
type = velset
trigger1 = animelem = 2
x = 2.66
y = -10.09

[State 871, End]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 872


;--- Land ---
[Statedef 872]
type = S
physics = N
movetype = I
ctrl = 0
anim = 872
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 872, Pos]
type = posset
trigger1 = 1
y = 0

[State 872, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 872, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 872, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target ---
[Statedef 875]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 875, Anim]
type = changeanim2
trigger1 = !time
value = 875

[State 875, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 875, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 876]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 876, Anim]
type = changeanim2
trigger1 = !time
value = 876
[State 876, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 876, End]
type = selfstate
trigger1 = time >= 60
value = 5040


[Statedef 877]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 877, Anim]
type = changeanim2
trigger1 = !time
value = 877
[State 877, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 877, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 877, Vel]
type = velset
trigger1 = !time
x = 5.32
y = -6.91

[State 877, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 877, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 877, End]
type = selfstate
trigger1 = vel y > 0
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
trigger1 = animelem = 2
value = 5000, 2
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
