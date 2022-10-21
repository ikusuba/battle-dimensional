; ________________________________
;| Karin by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;======================================<NORMAL MOVES>========================================
;============================================================================================

;=======================<Standing Light Punch>========================
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
value = 4, ifelse(random < 500, 5, 6)
channel = 0

[State 200, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 200, Hit]
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
getpower =  ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
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
guard.velocity = ifelse(var(20), -2.66, -4.49)
air.velocity = -4.25, -6.56
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 65), var(37) := floor(-66 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 0)
guardsound = -1

[State 200, Type]
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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 3, 7)
channel = 0

[State 210, Snd]
type = playsnd
trigger1 = animelem = 2
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
damage = 70, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
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
guard.velocity = ifelse(var(20), -4.30, -7.51)
air.velocity = -4.25, -6.56
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 80), var(37) := floor(-55 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 1)
guardsound = -1

[State 210, Anim]
type = changeanim
trigger1 = anim = 210
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
trigger1 = hitpausetime <= 8
value = 210
elem = 3
ignorehitpause = 1

[State 210, Anim]
type = changeanim
trigger1 = anim = 210
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 5
value = 210
elem = 4
ignorehitpause = 1

[State 210, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Hard Punch>========================
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

[State 220, Pos]
type = posadd
trigger1 = animelem = 2
trigger2 = animelem = 3
x = 16 * const(size.xscale)

[State 220, Pos]
type = posadd
trigger1 = animelem = 9
trigger2 = animelem = 10
x = -16 * const(size.xscale)

[State 220, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 5
channel = 0

[State 220, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 220, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 90, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
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
ground.velocity = -10.52, 0
guard.velocity = -10.52
air.velocity = -4.25, -6.56
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := -45) * (var(36) := 65), var(37) := floor(-77 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1

[State 220, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4 && prevstateno = 250 && !var(20)
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 45, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
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
guard.velocity = ifelse(var(20), -5.77, -10.52)
air.velocity = -4.25, -6.56
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := -45) * (var(36) := 65), var(37) := floor(-77 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1

[State 220, Anim]
type = changeanim
trigger1 = anim = 220
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
trigger1 = hitpausetime <= 10
value = 220
elem = 5
ignorehitpause = 1

[State 220, Anim]
type = changeanim
trigger1 = anim = 220
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(5) >= 0 && animelemtime(6) <= 0
trigger1 = hitpausetime <= 7
value = 220
elem = 6
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


;=======================<Standing Light Kick>========================
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
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 5, 6)
channel = 0

[State 230, Snd]
type = playsnd
trigger1 = animelem = 2
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
damage = 20, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
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
guard.velocity = ifelse(var(20), -2.66, -4.49)
air.velocity = -4.25, -6.56
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 95), var(37) := floor(-65 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1

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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 3, 7)
channel = 0

[State 240, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 240, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 60, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
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
guard.velocity = ifelse(var(20), -4.30, -7.51)
air.velocity = -4.25, -6.56
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 105), var(37) := floor(-62 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1

[State 240, Anim]
type = changeanim
trigger1 = anim = 240
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 8
value = 240
elem = 4
ignorehitpause = 1

[State 240, Anim]
type = changeanim
trigger1 = anim = 240
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
trigger1 = hitpausetime <= 5
value = 240
elem = 5
ignorehitpause = 1

[State 240, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 240, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Tsumuji-gari>========================
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

[State 245, Pos]
type = posadd
trigger1 = animelemtime(1) = 0 || animelemtime(2) = 0 || animelemtime(7) = 0
x = 2 * const(size.xscale)

[State 245, Pos]
type = posadd
trigger1 = animelemtime(3) = 0 || animelemtime(4) = 0 || animelemtime(5) = 0 || animelemtime(6) = 0
x = 8 * const(size.xscale)

[State 245, Pos]
type = posadd
trigger1 = animelemtime(11) = 0 || animelemtime(11) = 2 || animelemtime(12) = 0 || animelemtime(12) = 1
x = -8 * const(size.xscale)

[State 245, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 2
channel = 0

[State 245, Snd]
type = playsnd
trigger1 = animelem = 6
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 245, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 7
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = H
priority = 4, Hit
damage = 60, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
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
guard.velocity = ifelse(var(20), -4.30, -7.51)
air.velocity = -4.25, -6.56
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 80), var(37) := floor(-47 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1

[State 245, Type]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
[State 245, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Hard Kick>========================
[Statedef 250]
type = S
physics = S
movetype = A
anim = 250
ctrl = 0
velset = 0, 0
sprpriority = -1
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 250, Pos]
type = posadd
trigger1 = animelemtime(2) = 0 || animelemtime(2) = 1 || animelemtime(3) = 0 || animelemtime(3) = 1
x = 8 * const(size.xscale)

[State 250, Pos]
type = posadd
trigger1 = animelemtime(9) = 0 || animelemtime(9) = 2 || animelemtime(10) = 0 || animelemtime(10) = 1
x = -8 * const(size.xscale)

[State 250, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 3
channel = 0

[State 250, Snd]
type = playsnd
trigger1 = animelem = 3
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
damage = 90, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
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
ground.velocity = -10.52, 0
guard.velocity = -10.52
air.velocity = -4.25, -6.56
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 90), var(37) := floor(-39 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
p1sprpriority = -1

[State 250, spr]
type = sprpriority
trigger1 = animelem = 5
value = 1

[State 250, Target Combo]
type = changestate
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_z)
trigger1 = command != "holddown"
trigger2 = AILevel && random < 500
value = 220

[State 250, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 250, End]
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
value = 4, ifelse(random < 500, 5, 6)
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
getpower =  ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
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
guard.velocity = ifelse(var(20), -2.66, -4.49)
air.velocity = -4.25, -6.56
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 60), var(37) := floor(-43 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 0)
guardsound = -1

[State 400, Type]
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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 3, 7)
channel = 0

[State 410, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 410, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = 60, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
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
guard.velocity = ifelse(var(20), -4.30, -7.51)
air.velocity = -4.25, -6.56
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 75), var(37) := floor(-12 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 1)
guardsound = -1

[State 410, Anim]
type = changeanim
trigger1 = anim = 410
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
trigger1 = hitpausetime <= 8
value = 410
elem = 3
ignorehitpause = 1

[State 410, Anim]
type = changeanim
trigger1 = anim = 410
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 5
value = 410
elem = 4
ignorehitpause = 1

[State 410, Type]
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
trigger1 = animelem = 3 && random < 500
value = 4, ifelse(random < 500, 4, 8)
channel = 0

[State 420, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 420, Hit]
type = hitdef
triggerall = var(15) < 1 || var(20)
trigger1 = animelem = 3
trigger2 = animelem = 4 && !movecontact && !movereversed
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 80, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
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
guard.velocity = ifelse(var(20), -5.77, -10.52)
air.velocity = -4.25, -6.56
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 65), var(37) := ceil(ifelse((animelem = 4), -100, -68) * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
forcestand = 1

[State 420, Anim]
type = changeanim
trigger1 = anim = 420
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(5) >= 0 && animelemtime(6) <= 0
trigger1 = hitpausetime <= 10
value = 420
elem = 6
ignorehitpause = 1

[State 420, Anim]
type = changeanim
trigger1 = anim = 420
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(6) >= 0 && animelemtime(7) <= 0
trigger1 = hitpausetime <= 7
value = 420
elem = 7
ignorehitpause = 1

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
value = 4, ifelse(random < 500, 5, 6)
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
damage = 20, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
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
guard.velocity = ifelse(var(20), -2.66, -4.49)
air.velocity = -4.25, -6.56
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 75), var(37) := floor(-8 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1

[State 430, Type]
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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 3, 7)
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
damage = 55, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
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
guard.velocity = ifelse(var(20), -4.30, -7.51)
air.velocity = -4.25, -6.56
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 45) * (var(36) := 110), var(37) := floor(-11 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1

[State 440, Anim]
type = changeanim
trigger1 = anim = 440
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 8
value = 440
elem = 4
ignorehitpause = 1

[State 440, Anim]
type = changeanim
trigger1 = anim = 440
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
trigger1 = hitpausetime <= 5
value = 440
elem = 5
ignorehitpause = 1

[State 440, Type]
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
trigger1 = animelem = 3 && random < 500
value = 4, ifelse(random < 500, 4, 8)
channel = 0

[State 450, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 450, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4
forcenofall = !var(20)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = 75, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
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
guard.velocity = ifelse(var(20), -5.77, -10.52)
air.velocity = -1, -8.24
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.677
fall = 1
fall.recover = !map(counterhit)
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 120), var(37) := floor(-8 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1

[State 450, Anim]
type = changeanim
trigger1 = anim = 450
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
trigger1 = hitpausetime <= 10
value = 450
elem = 5
ignorehitpause = 1

[State 450, Anim]
type = changeanim
trigger1 = anim = 450
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(5) >= 0 && animelemtime(6) <= 0
trigger1 = hitpausetime <= 7
value = 450
elem = 6
ignorehitpause = 1

[State 450, Type]
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
value = 4, ifelse(random < 500, 5, 6)
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
getpower =  ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
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
guard.velocity = ifelse(var(20), -2.66, -4.49)
air.velocity = -4.25, -6.56
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 25) * (var(36) := 60), var(37) := floor(-90 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 0)
guardsound = -1

[State 600, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
[State 600, Accel]
type = gravity
trigger1 = 1

[State 600, Land]
type = changestate
trigger1 = pos y >= -vel y
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
value = 4, ifelse(random < 500, 3, 7)
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
trigger1 = animelem = 2
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 75, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 3 * map(counterhit)
ground.slidetime = 10 + 3 * map(counterhit)
guard.hittime = 15
guard.ctrltime = 15
guard.slidetime = 15
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
guard.velocity = ifelse(var(20), -4.30, -7.51)
air.velocity = -4.0, -6.0
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 25) * (var(36) := 70), var(37) := floor(-72 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 1)
guardsound = -1

[State 610, Anim]
type = changeanim
trigger1 = anim = 610
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
trigger1 = hitpausetime <= 8
value = 610
elem = 3
ignorehitpause = 1

[State 610, Target Combo]
type = changestate
triggerall = (movecontact + movereversed) = [1, 2]
triggerall = var(3) != [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_b)
trigger2 = AILevel && random < 500
value = 645

[State 610, Type]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 610, Accel]
type = gravity
trigger1 = 1

[State 610, Land]
type = changestate
trigger1 = pos y >= -vel y
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
trigger1 = animelem = 1 && random < 500
value = 4, ifelse(random < 500, 4, 8)
channel = 0

[State 620, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 620, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 90, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 4 * map(counterhit)
ground.slidetime = 10 + 4 * map(counterhit)
guard.hittime = 18
guard.ctrltime = 18
guard.slidetime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
air.velocity = -4.25, -6.56
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 70), var(37) := floor(-60 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1

[State 620, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 620, Accel]
type = gravity
trigger1 = 1

[State 620, Land]
type = changestate
trigger1 = pos y >= -vel y
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
value = 4, ifelse(random < 500, 5, 6)
channel = 0

[State 630, Snd]
type = playsnd
trigger1 = animelem = 2
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
damage = 35, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 50) * !var(20), 25 * !var(20)
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
guard.velocity = ifelse(var(20), -2.66, -4.49)
air.velocity = -4.25, -6.56
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 60), var(37) := floor(-20 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1

[State 630, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
[State 630, Accel]
type = gravity
trigger1 = 1

[State 630, Land]
type = changestate
trigger1 = pos y >= -vel y
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
value = 4, ifelse(random < 500, 3, 7)
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
trigger1 = animelem = 2
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 70, 0
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 3 * map(counterhit)
ground.slidetime = 10 + 3 * map(counterhit)
guard.hittime = 15
guard.ctrltime = 15
guard.slidetime = 15
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
guard.velocity = ifelse(var(20), -4.30, -7.51)
air.velocity = -4.25, -6.56
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := -20) * (var(36) := 85), var(37) := floor(-47 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 4)
guardsound = -1

[State 640, Anim]
type = changeanim
trigger1 = anim = 640
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
trigger1 = hitpausetime <= 8
value = 640
elem = 3
ignorehitpause = 1

[State 640, Type]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
[State 640, Accel]
type = gravity
trigger1 = 1

[State 640, Land]
type = changestate
trigger1 = pos y >= -vel y
value = 52


;=======================<Jumping Strong - > Forward>========================
[Statedef 645]
type = A
physics = N
movetype = A
anim = 645
ctrl = 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 645, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 3, 7)
channel = 0

[State 645, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 645, Hit]
type = hitdef
trigger1 = (var(15) < 2 || var(20))
trigger1 = animelem = 2
forcenofall = !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 30, 0
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 3 * map(counterhit)
ground.slidetime = 10 + 3 * map(counterhit)
guard.hittime = 15
guard.ctrltime = 15
guard.slidetime = 15
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
guard.velocity = ifelse(var(20), -4.30, -7.51)
air.velocity = -4.25, -6.56
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 85), var(37) := floor(-47 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1

[State 645, Anim]
type = changeanim
trigger1 = anim = 645
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
trigger1 = hitpausetime <= 8
value = 645
elem = 3
ignorehitpause = 1

[State 645, Type]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 645, Accel]
type = gravity
trigger1 = 1

[State 645, Land]
type = changestate
trigger1 = pos y >= -vel y
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
trigger1 = animelem = 1 && random < 500
value = 4, ifelse(random < 500, 4, 8)
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
damage = 90, 0
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower =  ifelse(movehit, 25, 200) * !var(20), ifelse(moveguarded, 25, 100) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 4 * map(counterhit)
ground.slidetime = 10 + 4 * map(counterhit)
guard.hittime = 18
guard.ctrltime = 18
guard.slidetime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
air.velocity = -4.25, -6.56
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := -50) * (var(36) := 85), var(37) := floor(-36 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1

[State 650, Anim]
type = changeanim
trigger1 = anim = 650
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 10
value = 650
elem = 4
ignorehitpause = 1

[State 650, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
[State 650, Accel]
type = gravity
trigger1 = 1

[State 650, Land]
type = changestate
trigger1 = pos y >= -vel y
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

[State 800, Strength]
type = varset
trigger1 = !time
trigger1 = !AIlevel
var(10) = map(cmd_kthrow)

[State 800, Strength]
type = varset
trigger1 = !time
trigger1 = AIlevel
var(10) = ifelse(var(20), 0, (random < 666))

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
trigger1 = animelem = 2 && !var(10)
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= ceil(27 * const(size.xscale))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = S, NT
hitflag = M
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 0)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 80), var(37) := floor(-50 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
numhits = 0
p1stateno = 810
p2stateno = 811

[State 800, Hit]
type = hitdef
trigger1 = animelem = 2 && var(10)
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= ceil(27 * const(size.xscale))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = S, NT
hitflag = M
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 0)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 80), var(37) := floor(-50 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
numhits = 0
p1stateno = ifelse(command = "holdback", 805, 820)
p2stateno = 806

[State 800, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 9
channel = 0

[State 800, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 0
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 800, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
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
sprpriority = 0

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
pos = 42 * const(size.xscale), 0

[State 805, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0
pos = 21 * const(size.xscale), 0

[State 805, spr]
type = sprpriority
trigger1 = animelemtime(2) < 0 || animelemtime(4) >= 0
value = 1
[State 805, spr]
type = sprpriority
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0
value = -1

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
sprpriority = 0

[State 806, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 806, Anim]
type = changeanim2
trigger1 = !time
value = 806

[State 806, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[State 806, Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


;=======================<Yashiro Kuzushi>========================
[Statedef 810]
type = S
physics = S
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

[State 810, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 811

[State 810, Turn]
type = varset
trigger1 = !time
var(0) = command = "holdback"
[State 810, Turn]
type = turn
trigger1 = var(0) && animelem = 3

[State 810, Throw]
type = targetfacing
trigger1 = numtarget
value = -1

[State 810, Width]
type = width
trigger1 = 1
edge = ceil(48 * const(size.xscale)), ceil(48 * const(size.xscale))

[State 810, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) < 0
pos = 42 * const(size.xscale), 0

[State 810, Bind 2]
type = bindtotarget
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 4 * const(size.xscale), 0

[State 810, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 19 * const(size.xscale), -72 * const(size.yscale)

[State 810, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 39 * const(size.xscale), -60 * const(size.yscale)

[State 810, Bind 5]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0
pos = 30 * const(size.xscale), -42 * const(size.yscale)

[State 810, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 810, End]
type = changestate
trigger1 = !animtime
value = 815


;----- Hit Floor -----
[Statedef 815]
type = S
physics = S
movetype = A
anim = 815
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 815, juggle]
type = varadd
trigger1 = !time
trigger1 = numtarget
var(15) = 1
ignorehitpause = 1

[State 815, Pos]
type = posset
trigger1 = !time
y = 0

[State 815, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 816

[State 815, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) < 0
pos = 19 * const(size.xscale), 0

[State 815, Damage]
type = targetlifeadd
trigger1 = !time
trigger1 = numtarget
trigger1 = prevstateno = 810
value = floor(-130 * fvar(10))

[State 815, Damage]
type = targetlifeadd
trigger1 = !time
trigger1 = numtarget
trigger1 = prevstateno = 860
value = floor(-120 * fvar(10))

;[State 810, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = !time
;trigger1 = numtarget
;value = -ceil(100 * fvar(10)) * !var(20)

[State 815, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = !time
value = 1

[State 815, givepower]
type = targetpoweradd
trigger1 = numtarget
trigger1 = !time
value = 40;givepower

[State 815, getpower]
type = poweradd
trigger1 = !time
trigger1 = !var(20)
value = 100;getpower

[State 815, Snd]
type = playsnd
trigger1 = !time
value = 4, 4
channel = 0

[State 815, Snd]
type = playsnd
trigger1 = !time
value = 0, 5100

[State 815, Shake]
type = envshake
trigger1 = !time
time = 12
freq = 180
ampl = 2

[State 815, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = ceil(19 * const(size.xscale)), 0
ownpal = 1

[State 815, End]
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
value = 0
movecamera = 0, 0

[State 811, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 816]
type = L
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 816, Anim]
type = changeanim2
trigger1 = !time
value = 816

[State 816, End]
type = changestate
trigger1 = !animtime
value = 817


[Statedef 817]
type = L
physics = N
movetype = H
anim = 5110
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 817, Pos]
type = posset
trigger1 = !time
y = 0

[State 817, Stun]
type = selfstate
trigger1 = time >= 3
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzylyingdown)

[State 817, End]
type = selfstate
trigger1 = time >= 30
value = ifelse(!alive, 5150, 5120)


;=======================<Homura-geri>========================
[Statedef 820]
type = S
physics = S
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

[State 820, Width]
type = width
trigger1 = 1
edge = ceil(48 * const(size.xscale)), 0

[State 820, Timer]
type = varset
trigger1 = !time
var(51) = 135

[State 820, Timer]
type = varset
trigger1 = roundstate != 2
var(51) = 0

[State 820, Timer]
type = varadd
trigger1 = hitcount
var(51) = -1

[State 820, Timer]
type = varadd
trigger1 = numtarget
trigger1 = hitcount
trigger1 = target, command = "U" || target, command = "D" || target, command = "B" || target, command = "F"
var(51) = -4

[State 820, Timer]
type = varadd
triggerall = numtarget && hitcount
trigger1 = target, command = "x" || target, command = "y" || target, command = "z"
trigger2 = target, command = "a" || target, command = "b" || target, command = "c"
var(51) = -1

[State 820, End]
type = changestate
triggerall = hitcount
triggerall = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger1 = var(51) <= 0
trigger2 = numtarget
trigger2 = !(target, alive)
value = 821

[State 820, p1 mashing]
type = varset
trigger1 = !time
var(12) = 0
[State 820, p1 mashing]
type = varadd
triggerall = !AIlevel
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "U" || command = "D" || command = "B" || command = "F"
var(12) = 1
[State 820, p1 mashing]
type = varadd
trigger1 = AIlevel
trigger1 = random < 333
var(12) = 1

[State 820, anim skip]
type = changeanim
triggerall = var(51) > 0
trigger1 = animelemtime(animelemno(0)) >= 0 && animelemtime(5) < 0
trigger1 = animelemtime(animelemno(0) + 1) >= -var(12)
trigger1 = 1 || var(12) := (var(12) + animelemtime(animelemno(0) + 1))
value = 820
elem = animelemno(0) + 1
[State 820, anim skip]
type = changeanim
triggerall = var(51) > 0
trigger1 = animelemtime(5) > 0
trigger1 = animelemtime(5) >= (5 -var(12))
trigger1 = 1 || var(12) := (var(12) + 5 -animelemtime(5))
value = 820
elem = 1

[State 820, p1 mashing]
type = varset
trigger1 = var(12) < 0
var(12) = 0

[State 820, Flash]
type = palfx
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "U" || command = "D" || command = "B" || command = "F"
time = 1
add = 32, 32, 32

[State 820, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
value = 825
[State 820, Throw]
type = targetstate
triggerall = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
trigger2 = animelemtime(5) >= 0
value = 826
[State 820, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
value = 827

[State 820, Throw]
type = targetfacing
trigger1 = numtarget
value = -1

[State 820, Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) < 0 || animelemtime(5) >= 0
pos = 45 * const(size.xscale), 0

[State 820, Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
pos = 50 * const(size.xscale), -66 * const(size.yscale)

[State 820, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 3 && !hitcount
value = floor(-45 * fvar(10))

[State 820, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 3 && hitcount
value = floor(-15 * fvar(10))

[State 820, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 6
channel = 0

[State 820, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 820, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 3
value = 1

[State 820, Snd]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 3
value = 2, 4

[State 820, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget
trigger1 = animelem = 3
helpertype = normal
stateno = 8011
ID = 8000
name = "Spark"
postype = p1
pos = ceil(60 * const(size.xscale)), floor(-55 * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 820, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = numtarget && animelem = 3
anim = F1
ID = 8000
postype = p1
pos = ceil(60 * const(size.xscale)), ceil(-55 * const(size.yscale))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 820, Shake]
type = envshake
trigger1 = numtarget
trigger1 = animelem = 3
time = 12
freq = 180
ampl = 1


;--- FINISH ---
[Statedef 821]
type = S
physics = S
movetype = A
anim = 821
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 821, juggle]
type = varadd
trigger1 = !time
trigger1 = numtarget
var(15) = 1
ignorehitpause = 1

[State 821, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
value = 825
[State 821, Throw]
type = targetstate
triggerall = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
value = 826

[State 821, Throw]
type = targetstate
trigger1 = animelem = 3
value = 829
[State 821, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 821, Width]
type = width
trigger1 = 1
edge = ceil(48 * const(size.xscale)), 0

[State 821, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) < 0
pos = 45 * const(size.xscale), 0

[State 821, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 3
value = floor(-15 * fvar(10))

;[State 821, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 3
;value = -ceil(150 * fvar(10)) * !var(20)

[State 821, givepower]
type = targetpoweradd
trigger1 = numtarget
trigger1 = animelem = 3
value = 40;givepower

[State 821, getpower]
type = poweradd
trigger1 = numtarget
trigger1 = animelem = 3 && !var(20)
value = 100;getpower

[State 821, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 3
value = 1

[State 820, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 6
channel = 0

[State 820, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 821, Snd]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 3
value = 2, 5

[State 821, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget
trigger1 = animelem = 3
helpertype = normal
stateno = 8012
ID = 8000
name = "Spark"
postype = p1
pos = ceil(60 * const(size.xscale)), floor(-55 * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 821, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = numtarget && animelem = 3
anim = F1
ID = 8000
postype = p1
pos = ceil(60 * const(size.xscale)), ceil(-55 * const(size.yscale))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 821, Shake]
type = envshake
trigger1 = numtarget
trigger1 = animelem = 3
time = 12
freq = 180
ampl = 1

[State 821, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
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

[State 825, Flash]
type = palfx
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "U" || command = "D" || command = "B" || command = "F"
time = 1
add = 32, 32, 32

[State 825, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 826]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 826, Anim]
type = changeanim2
trigger1 = !time
value = 826

[State 826, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 826, Flash]
type = palfx
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "U" || command = "D" || command = "B" || command = "F"
time = 1
add = 32, 32, 32

[State 826, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 827]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 827, Anim]
type = changeanim2
trigger1 = !time
value = 827

[State 827, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 827, Flash]
type = palfx
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "U" || command = "D" || command = "B" || command = "F"
time = 1
add = 32, 32, 32

[State 827, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 829]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 829, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5035), 5035, 5030)
[State 829, Anim]
type = changeanim
trigger1 = (anim = [5030, 5035]) && !animtime
value = 5050

[State 829, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 829, Vel]
type = velset
trigger1 = !time
x = -4
y = -8.26

[State 829, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 829, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 829, End]
type = selfstate
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

[State 850, Strength]
type = varset
trigger1 = !time
trigger1 = !AIlevel
var(10) = map(cmd_kthrow)

[State 850, Strength]
type = varset
trigger1 = !time
trigger1 = AIlevel
var(10) = (random < 500)

[State 850, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 850, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = var(15) < 1 || var(20)
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= ceil((44 * const(size.xscale)) - const(size.air.front))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
trigger1 = p2dist y = [-56, 48]
;(top + 28) (bottom + 92)
attr = A, NT
hitflag = AF
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 0)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 80), var(37) := floor(-88 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
numhits = 0
p1stateno = 860
p2stateno = 861

[State 850, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 9
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

[State 850, Land]
type = changestate
trigger1 = pos y >= -vel y
value = 52


;=======================<Abise Yashiro Kuzushi>========================
[Statedef 860]
type = A
physics = N
movetype = A
anim = 860
ctrl = 0
sprpriority = 2

[State 860, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 861

[State 860, Turn]
type = turn
trigger1 = var(10) && animelem = 3
[State 860, Throw]
type = targetfacing
trigger1 = numtarget
value = -1

[State 860, Width]
type = width
trigger1 = 1
edge = ceil(48 * const(size.xscale)), ceil(48 * const(size.xscale))

[State 860, Pos]
type = posset
trigger1 = pos y > 0 && animelemtime(3) < 0
y = 0
[State 860, Pos]
type = posfreeze
trigger1 = animelemtime(3) < 0
value = 1

[State 860, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
y = 0.5
[State 860, Vel]
type = velset
trigger1 = animelem = 3
y = -4

[State 860, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) < 0
pos = 29 * const(size.xscale), -64 * const(size.yscale)

[State 860, Bind 2]
type = bindtotarget
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 0, 64 * const(size.yscale)

[State 860, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 19 * const(size.xscale), -72 * const(size.yscale)

[State 860, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 39 * const(size.xscale), -60 * const(size.yscale)

[State 860, Bind 5]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0
pos = 30 * const(size.xscale), -42 * const(size.yscale)


[State 860, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1
freqmul = 0.95 + (random / 10000.0)

[State 860, End]
type = changestate
trigger1 = pos y >= -vel y
value = 815


;--- TARGET ---
[Statedef 861]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 861, Anim]
type = changeanim2
trigger1 = !time
value = 861

[State 861, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0


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
