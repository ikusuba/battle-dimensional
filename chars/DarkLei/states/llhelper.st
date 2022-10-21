; __________________________________
;| Lei-Lei by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<HELPER STATES>========================================
;==============================================================================================

;========================<ANKIHOU OBJECTS>=============================
[Statedef 1005]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1006
ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = anim != 1004
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = anim = 1004
time = -1
value = SCA, NA, SA, HA, NP, SP, HP
ignorehitpause = 1

[State 1005, Random]
type = changeanim
triggerall = !time && !prevstateno
trigger1 = root, map(ankihotype) <= 2
value = 1005 + (random % 7)

[State 1005, Shuriken]
type = changeanim
trigger1 = !time
trigger1 = !prevstateno
trigger1 = root, map(ankihotype) = 3
value = 1019

[State 1005, Statue]
type = changeanim
trigger1 = !time
trigger1 = !prevstateno
trigger1 = root, map(ankihotype) = 4
value = 1018

[State 1005, Dizzy]
type = changeanim
trigger1 = !time
trigger1 = !prevstateno
trigger1 = root, map(ankihotype) = 5
value = ifelse(random < 333, 1020, ifelse(random < 500, 1021, 1023))

[State 1005, Panda]
type = changeanim
trigger1 = !time
trigger1 = !prevstateno
trigger1 = root, stateno = 1095
value = 1004

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)

[State Damage Scaling - Counter Flag]
type = mapset
trigger1 = numenemy
map = "counterhit"
value = (enemynear, movetype = A)
ignorehitpause = 1

[State Damage Scaling - Helper Multiplier]
type = attackmulset
trigger1 = 1
value = root, fvar(10) * ifelse(map(counterhit), 1.2, 1)
ignorehitpause = 1

[State Damage Scaling - Update Root]
type = null
trigger1 = !var(43)
trigger1 = movecontact && numtarget
trigger1 = var(43) := 1
trigger1 = root, var(43) = 0
trigger1 = root, var(43) := 1
ignorehitpause = 1

[State 1005, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1
ignorehitpause = 1
[State 1005, ProjContact]
type = rootvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 1000
var(18) = 1
ignorehitpause = 1

[State 1005, Vel]
type = velset
trigger1 = !time
x = ifelse(var(10) = 3, 0.5, ifelse(var(10) = 2, 6.5, 6))
y = ifelse(var(10) = 3, -15, ifelse(var(10) = 2, -9, -5))

[State 1005, Vel]
type = velset
trigger1 = !time
trigger1 = anim = 1004
x = 6
y = -9

[State 1005, Accel]
type = veladd
trigger1 = 1
y = 0.45

[State 1005, Spin Snd]
type = playsnd
trigger1 = anim = 1005 || anim = 1006 || anim = 1011 || anim = 1019
trigger1 = !(time % 12)
value = 1, 7
channel = 1
[State 1005, Spin Snd]
type = playsnd
trigger1 = anim = 1007 || anim = 1009 || anim = 1010 || anim = 1018
trigger1 = !(time % 12)
value = 1, 1
channel = 1
[State 1005, Spin Snd]
type = playsnd
trigger1 = anim = 1008
trigger1 = !(time % 9)
value = 1, 1
channel = 1
[State 1005, Spin Snd]
type = playsnd
trigger1 = anim = 1004 || anim = 1020 || anim = 1021 || anim = 1023
trigger1 = !(time % 12)
value = 1, 2
channel = 1

[State 1005, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag =
sparkxy = -10, 0

[State 1005, Hit]
type = hitdef
trigger1 = root, var(15) < 1
trigger1 = var(10) != 3
trigger1 = anim < 1020
priority = 4, Hit
attr = S, SP
damage = 60, 15
dizzypoints = -ceil(root, fvar(10) * 100)
guard.dist = const(size.proj.attack.dist)
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 10
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -1.5 * vel x, 0
ground.cornerpush.veloff = 0
air.velocity = -vel x, -2
down.velocity = 0, 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = 2
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 1005, Hit]
type = hitdef
trigger1 = root, var(15) < 1
trigger1 = var(10) = 3
trigger1 = anim < 1020
priority = 4, Hit
attr = S, SP
damage = 60, 15
dizzypoints = -ceil(root, fvar(10) * 100)
guard.dist = const(size.proj.attack.dist)
animtype = Hard
hitflag = MAF
guardflag = HA
pausetime = 0, 10
sparkno = -1
sparkxy = -10, 0
guard.sparkno = -1
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -1.5 * vel x, 0
ground.cornerpush.veloff = 0
air.velocity = -vel x, -2
down.velocity = 0, 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = 2
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 1005, Hit]
type = hitdef
trigger1 = root, var(15) < 1
trigger1 = var(10) != 3
trigger1 = anim >= 1020
priority = 4, Hit
attr = S, SP
damage = 60, 15
dizzypoints = -ceil(root, fvar(10) * 900)
guard.dist = const(size.proj.attack.dist)
animtype = Back
hitflag = MAF
guardflag = MA
pausetime = 0, 10
sparkno = -1
sparkxy = -10, 0
guard.sparkno = -1
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4.5, -3
ground.cornerpush.veloff = 0
air.velocity = -4.5, -3
down.velocity = 0, 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = 2
guard.velocity = -12.97
fall = 1
fall.recover = 0
ID = 1020
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 1005, Hit]
type = hitdef
trigger1 = root, var(15) < 1
trigger1 = var(10) = 3
trigger1 = anim >= 1020
priority = 4, Hit
attr = S, SP
damage = 60, 15
dizzypoints = -ceil(root, fvar(10) * 900)
guard.dist = const(size.proj.attack.dist)
animtype = Back
hitflag = MAF
guardflag = HA
pausetime = 0, 10
sparkno = -1
sparkxy = -10, 0
guard.sparkno = -1
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4.5, -3
ground.cornerpush.veloff = 0
air.velocity = -4.5, -3
down.velocity = 0, 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180
p1sprpriority = 2
guard.velocity = -12.97
fall = 1
fall.recover = 0
ID = 1020
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 1005, Hit]
type = hitdef
trigger1 = root, var(15) < 1
trigger1 = anim = 1004
priority = 1, Hit
attr = S, SP
damage = 30, 8
dizzypoints = -ceil(root, fvar(10) * 100)
guard.dist = const(size.proj.attack.dist)
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 10
sparkno = -1
sparkxy = -10, 0
guard.sparkno = -1
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -1.5 * vel x, 0
ground.cornerpush.veloff = 0
air.velocity = -vel x, -2
down.velocity = 0, 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = 2
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120

[State 1005, Getpower]
type = poweradd
trigger1 = movecontact = 1
trigger1 = numtarget
value = ifelse(moveguarded, 25, 50)
ignorehitpause = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movecontact = 1
trigger1 = anim = 1005 || anim = 1008 || anim = 1010 || anim = 1018
value = 2, ifelse((movehit && numtarget), 2, 0)
persistent = 0
ignorehitpause = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movecontact = 1
trigger1 = anim = 1020 || anim = 1023
value = 2, ifelse((movehit && numtarget), 3, 0)
persistent = 0
ignorehitpause = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movecontact = 1
trigger1 = anim = 1004
value = 2, ifelse((movehit && numtarget), 4, 0)
persistent = 0
ignorehitpause = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movecontact = 1
trigger1 = anim = 1021
value = 2, ifelse((movehit && numtarget), 6, 0)
persistent = 0
ignorehitpause = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movecontact = 1
trigger1 = anim = 1006 || anim = 1007 || anim = 1009 || anim = 1011 || anim = 1019
value = 2, ifelse((movehit && numtarget), 8, 0)
persistent = 0
ignorehitpause = 1

[State 1005, Spark Impact]
type = helper
trigger1 = root, map(mysparks)
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
trigger1 = anim = 1004 || anim = 1005 || anim = 1008 || anim = 1010 || anim = 1018 || anim = 1020 || anim = 1021 || anim = 1023
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
postype = p1
pos = 0, 0
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1005, Spark Cut]
type = helper
trigger1 = root, map(mysparks)
trigger1 = anim = 1006 || anim = 1007 || anim = 1009 || anim = 1011 || anim = 1019
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8023)
ID = 8000
name = "Spark"
postype = p1
pos = 0, 0
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1005, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = Fifelse(moveguarded, 40, 2)
ID = 8000
postype = p1
pos = 0, 0
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 1005, Counter FX]
type = helper
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = map(counterhit)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p1
pos = 0, 0
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1005, Blood]
type = helper
trigger1 = root, map(blood)
trigger1 = root, map(mysparks)
trigger1 = anim = 1006 || anim = 1007 || anim = 1008 || anim = 1009 || anim = 1011 || anim = 1019
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
helpertype = normal
stateno = ifelse(anim = 1011, 7052, 7051)
ID = 7050
name = "Blood"
postype = p1
facing = 1
pos = 0, 0
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1005, Blood Screenpack]
type = explod
trigger1 = root, map(blood)
trigger1 = !(root, map(mysparks))
trigger1 = movehit = 1 && numtarget
trigger1 = anim = 1006 || anim = 1007 || anim = 1008 || anim = 1009 || anim = 1011 || anim = 1019
anim = F12
ID = 8000
postype = p1
pos = 0, 0
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1005, End]
type = changestate
trigger1 = movecontact || pos y >= -10
value = 1006
ignorehitpause = 1

[State 1005, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


[Statedef 1006]
type = A
physics = N
movetype = I
velset = -0.66 * vel x, vel y
ctrl = 0
sprpriority = 1

[State 1006, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 2, 0
channel = 2
lowpriority = 1
volumescale = 50

[State 1006, Anim]
type = changeanim
trigger1 = anim = 1021
value = 1022
persistent = 0

[State 1006, Ikemen Dizzy Disabled]
type = targetstate
trigger1 = anim = 1020 || anim = 1021 || anim = 1023
trigger1 = numtarget
trigger1 = roundstate = 2
trigger1 = target, dizzy = 0
trigger1 = target, stateno = [5000, 5050]
trigger1 = target, dizzypoints >= target, dizzypointsmax
value = 1115310
persistent = 0

[State 1006, Accel]
type = veladd
trigger1 = 1
y = 0.45

[State 1006, End]
type = destroyself
trigger1 = pos y >= -10


;========================<ANKIHOU SPIKED BALL>=============================
[Statedef 1055]
type = C
physics = N
movetype = A
anim = 1055
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1
[State 1055, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < var(10), 1055, 1056)
ignorehitpause = 1

[State 1055, Hit Number]
type = varadd
trigger1 = 1
var(2) = 1
persistent = 0
ignorehitpause = 1

[State Damage Scaling - Counter Flag]
type = mapset
trigger1 = numenemy
map = "counterhit"
value = (enemynear, movetype = A)
ignorehitpause = 1

[State Damage Scaling - Helper Multiplier]
type = attackmulset
trigger1 = 1
value = root, fvar(10) * ifelse(map(counterhit), 1.2, 1)
ignorehitpause = 1

[State Damage Scaling - Update Root]
type = null
trigger1 = !var(43)
trigger1 = movecontact && numtarget
trigger1 = var(43) := 1
trigger1 = root, var(43) = 0
trigger1 = root, var(43) := 1
ignorehitpause = 1

[State 1055, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1
ignorehitpause = 1
[State 1055, ProjContact]
type = rootvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 1050
var(18) = 1
ignorehitpause = 1

[State 1055, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1055, Vel]
type = velset
trigger1 = 1
x = 5
y = 0

[State 1055, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = 2, ifelse((movehit && numtarget), 10, 0)
channel = 2
ignorehitpause = 1

[State 1055, Freeze]
type = posfreeze
trigger1 = time <= ifelse(numtarget, 6, 0)
value = 1

[State 1055, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag =
sparkxy = -10, 0

[State 1055, Hit]
type = hitdef
trigger1 = root, var(15) < 2
trigger1 = time >= ifelse(numtarget, 6, 0)
priority = 4, Hit
attr = S, SP
damage = 34, 9
dizzypoints = -ceil(root, fvar(10) * 50)
guard.dist = const(size.proj.attack.dist)
animtype = Hard
hitflag = MAF
guardflag = L
pausetime = 0, 12
sparkno = -1
sparkxy = -10, 0
guard.sparkno = -1
guardsound = -1
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -7, 0
ground.cornerpush.veloff = 0
air.velocity = -3, -3
down.hittime = 20
down.velocity = 0, 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = 2
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 1055, Hit Knockdown]
type = hitdef
trigger1 = root, var(15) < 2
trigger1 = time >= ifelse(numtarget, 6, 0)
trigger1 = var(2) = 3
priority = 4, Hit
attr = S, SP
damage = 34, 9
dizzypoints = -ceil(root, fvar(10) * 50)
guard.dist = const(size.proj.attack.dist)
animtype = Hard
hitflag = MAF
guardflag = L
pausetime = 0, 12
sparkno = -1
sparkxy = -10, 0
guard.sparkno = -1
guardsound = -1
ground.type = Trip
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1, -8.24
ground.cornerpush.veloff = 0
air.velocity = -3, -3
down.hittime = 20
down.velocity = 0, 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = 2
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.677
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 1055, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
postype = p1
pos = 16, -16
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1055, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = Fifelse(moveguarded, 40, 2)
ID = 8000
postype = p1
pos = 0, 0
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 1055, Counter FX]
type = helper
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = map(counterhit)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p1
pos = 16, -16
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1055, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 3, 1055, 1056)
ignorehitpause = 1

[State 1055, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


[Statedef 1056]
type = A
physics = N
movetype = I
anim = 1056
velset = -0.33 * vel x, 0
ctrl = 0
sprpriority = 1

[State 1056, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 2, 0
channel = 2
lowpriority = 1
volumescale = 50

[State 1056, fadeout]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - (8 * time), (8 * time)

[State 1056, End]
type = destroyself
trigger1 = time >= 32
value = 1057


;========================<SENPUUBU CLAW>=============================
[Statedef 1105]
type = A
physics = N
movetype = A
anim = 1105
ctrl = 0
velset = 0, 0
sprpriority = -1

[State 1105, No Reversals]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 5000
ignorehitpause = 1

[State 1105, NHB]
type = hitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1

[State 1105, Strength]
type = varset
trigger1 = !time
var(10) = ifelse((root, stateno = [1120, 1121]), 4, (root, var(10)))

[State Damage Scaling - Counter Flag]
type = mapset
trigger1 = numenemy
map = "counterhit"
value = (enemynear, movetype = A)
ignorehitpause = 1

[State Damage Scaling - Helper Multiplier]
type = attackmulset
trigger1 = 1
value = root, fvar(10) * ifelse(map(counterhit), 1.2, 1)
ignorehitpause = 1

[State Damage Scaling - Update Root]
type = null
trigger1 = !var(43)
trigger1 = movecontact && numtarget
trigger1 = var(43) := 1
trigger1 = root, var(43) = 0
trigger1 = root, var(43) := 1
ignorehitpause = 1

[State 1105, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1
ignorehitpause = 1
[State 1105, ProjContact]
type = rootvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 1100
var(18) = 1
ignorehitpause = 1

[State 1105, Bind]
type = bindtoroot
trigger1 = 1
pos = (2 * root,const(size.xscale)), -65
ignorehitpause = 1

[State 1105, ES Speed]
type = changeanim
trigger1 = var(10) = 4
trigger1 = animelemtime(animelemno(0)) >= 1
value = 1105
elem = ifelse(animelemtime(12) >= 0, 1, animelemno(0) + 1)

[State 1105, Speed]
type = changeanim
trigger1 = var(10) < 4
trigger1 = animelemtime(animelemno(0)) >= 1
trigger1 = root, command = "x" || root, command = "y" || root, command = "z"
value = 1105
elem = ifelse(animelemtime(12) >= 0, 1, animelemno(0) + 1)
ignorehitpause = 1

[State 1105, Damage]
type = varset
trigger1 = !hitcount
var(0) = ifelse(var(10) = 4, 75, 60)
[State 1105, Damage]
type = varset
trigger1 = hitcount
var(0) = ceil(ifelse(var(10) = 4, (75.0 / (hitcount + 1)), (60.0 / (hitcount + 1))))
ignorehitpause = 1

[State 1105, Miss]
type = hitdef
trigger1 = 1
attr = A, SA
hitflag =
sparkxy = -10, 0

[State 1105, Hit]
type = hitdef
trigger1 = root, var(15) < 3
trigger1 = var(10) <= 3
trigger1 = animelemtime(animelemno(0)) = 0
priority = 4, Hit
attr = A, SA
damage = var(0), ceil(var(0) * 0.25)
dizzypoints = -ceil(root, fvar(10) * 25)
animtype = Hard
hitflag = MAFD
guardflag = MA
pausetime = 3, 3
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = ifelse(p2dist x > 0, -10, 10), 0
ground.cornerpush.veloff = 0
air.velocity = ifelse(p2dist x > 0, -5, 5), -5
down.velocity = 0, 0
p2facing = ifelse(p2dist x >= 0, 1, -1)
getpower = ifelse(movehit, 25, 100), ifelse(moveguarded, 25, 50)
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = -1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 1105, Hit]
type = hitdef
trigger1 = root, var(15) < (3 + hitcount)
trigger1 = var(10) = 4
trigger1 = animelemtime(animelemno(0)) = 0
priority = 4, Hit
attr = A, SA
damage = var(0), ceil(var(0) * 0.25)
dizzypoints = -ceil(root, fvar(10) * 25)
animtype = Hard
hitflag = MAFD
guardflag = MA
pausetime = 3, 3
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = ifelse(p2dist x > 0, -10, 10), 0
ground.cornerpush.veloff = 0
air.velocity = ifelse(p2dist x > 0, -5, 5), -5
down.velocity = 0, 0
p2facing = ifelse(p2dist x >= 0, 1, -1)
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = -1
air.fall = 1
fall.recover = 0
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 1105, HitSound]
type = playsnd
trigger1 = movecontact = 1
trigger1 = hitpausetime = 2
value = 2, ifelse((movehit && numtarget), 9, 12)
channel = 2
ignorehitpause = 1

[State 1105, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8023)
ID = 8000
name = "Spark"
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1105, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = Fifelse(moveguarded, 40, 2)
ID = 8000
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
facing = -1
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 1105, Counter FX]
type = helper
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = map(counterhit)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1105, Blood]
type = helper
trigger1 = root, map(blood)
trigger1 = root, map(mysparks)
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = 7052
ID = 7050
name = "Blood"
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
ownpal = 1
facing = ifelse((target, facing = facing), -1, 1)
ignorehitpause = 1

[State 1105, Blood Screenpack]
type = explod
trigger1 = root, map(blood)
trigger1 = !(root, map(mysparks))
trigger1 = movehit = 1 && numtarget
anim = F12
ID = 8000
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
facing = ifelse((target, facing = facing), -1, 1)
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1


;--- Root velocity calculator ---
[State 1105, Pos X]
type = varset
trigger1 = 1
fvar(1) = ifelse((!time && !prevstateno), (root, pos x), fvar(2))

[State 1105, Pos X]
type = varset
trigger1 = 1
fvar(2) = ifelse((!time && !prevstateno), (root, pos x), fvar(3))

[State 1105, Pos X]
type = varset
trigger1 = 1
fvar(3) = ifelse((!time && !prevstateno), (root, pos x), fvar(4))

[State 1105, Pos X]
type = varset
trigger1 = 1
fvar(4) = root, pos x

[State 1105, Vel X]
type = varset
trigger1 = 1
fvar(5) = (fvar(4) - fvar(1)) / 8.0 * facing

[State 1105, Pos Y]
type = varset
trigger1 = 1
fvar(10) = ifelse((!time && !prevstateno), (root, pos y), fvar(10))

[State 1105, Pos Y]
type = varset
trigger1 = 1
fvar(10) = ifelse((!time && !prevstateno), (root, pos y), fvar(13))

[State 1105, Pos Y]
type = varset
trigger1 = 1
fvar(13) = ifelse((!time && !prevstateno), (root, pos y), fvar(14))

[State 1105, Pos Y]
type = varset
trigger1 = 1
fvar(14) = root, pos y

[State 1105, Vel Y]
type = varset
trigger1 = 1
fvar(15) = (fvar(14) - fvar(10)) / 8.0

[State 1105, End]
type = changestate
trigger1 = var(10) <= 3
trigger1 = root, stateno != 1101 || root, anim != 1101
trigger2 = var(10) = 4 
trigger2 = root, stateno != 1121 || root, anim != 1101
value = 1107


;--- Wait ---
[Statedef 1107]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 1

[State 1107, End]
type = destroyself
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = target, time <= 1 && !(target, hitshakeover)


;========================<REITOU BLADE>=============================
[Statedef 1205]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = -1

[State 1205, No Reversals]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 5000
ignorehitpause = 1
[State 1205, HB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1

[State 1205, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)

[State 1205, Anim]
type = changeanim
trigger1 = anim != [1205, 1226]
value = ifelse(var(10) = 4, 1225, 1205) + 1 * (facing = -1)

[State 1205, spr]
type = sprpriority
trigger1 = 1
value = -1
ignorehitpause = 1

[State 1205, Strength]
type = varset
trigger1 = !time
var(10) = parent, var(10)

[State Damage Scaling - Counter Flag]
type = mapset
trigger1 = numenemy
map = "counterhit"
value = (enemynear, movetype = A)
ignorehitpause = 1

[State Damage Scaling - Helper Multiplier]
type = attackmulset
trigger1 = 1
value = root, fvar(10) * ifelse(map(counterhit), 1.2, 1)
ignorehitpause = 1

[State Damage Scaling - Update Root]
type = null
trigger1 = !var(43)
trigger1 = movecontact && numtarget
trigger1 = var(43) := 1
trigger1 = root, var(43) = 0
trigger1 = root, var(43) := 1
ignorehitpause = 1

[State 1205, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1
ignorehitpause = 1

[State 1205, ProjContact]
type = rootvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 1200
var(18) = 1
ignorehitpause = 1

[State 1205, Dust]
type = explod
trigger1 = !time
anim = 7105
sprpriority = -5
postype = p1
pos = 0, -3
scale = 0.33, 0.33
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1205, Pos]
type = posset
trigger1 = 1
y = 0

[State 1205, Miss]
type = hitdef
trigger1 = 1
attr = S, SA
hitflag =
sparkxy = -10, 0

[State 1205, Hit]
type = hitdef
trigger1 = root, var(15) < 2
trigger1 = var(10) != 4
trigger1 = !movecontact && !movereversed
attr = S, SA
damage = 90, 23
dizzypoints = -ceil(root, fvar(10) * 100)
guard.dist = const(size.proj.attack.dist)
animtype = Up
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 4
sparkno = -1
guard.sparkno = -1
sparkxy = -10, ceil(p2dist y - 60)
hitsound = -1
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -3.0, -9.0
ground.cornerpush.veloff = 0
air.velocity = -3.0, -9.0
down.velocity = 0, 0
getpower = ifelse(p2movetype = H, 25, 100), ifelse(p2movetype = H, 25, 50)
givepower = 40, 40
p1sprpriority = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
guard.velocity = -12.97
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00

[State 1205, Hit]
type = hitdef
trigger1 = root, var(15) < 3
trigger1 = var(10) = 4
trigger1 = !movecontact && !movereversed
attr = S, SA
damage = 75, 19
dizzypoints = -ceil(root, fvar(10) * 100)
guard.dist = const(size.proj.attack.dist)
animtype = Up
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 4
sparkno = -1
guard.sparkno = -1
sparkxy = -10, ceil(p2dist y - 60)
hitsound = -1
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4.5, -9.0
ground.cornerpush.veloff = 0
air.velocity = -4.5, -9.0
down.velocity = 0, 0
getpower = 0, 0
givepower = 40, 40
p1sprpriority = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
guard.velocity = -12.97
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00

[State 1205, HitSound]
type = playsnd
trigger1 = movehit = 1
trigger1 = numtarget
value = 2, 9
channel = 2
ignorehitpause = 1

[State 1205, GuardSound]
type = playsnd
trigger1 = moveguarded = 1
value = 2, 12
channel = 2
freqmul = 0.9 + (random / 5000.0)
ignorehitpause = 1

[State 1205, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8023)
ID = 8000
name = "Spark"
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1205, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = Fifelse(moveguarded, 40, 2)
ID = 8000
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
facing = -1
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 1205, Counter FX]
type = helper
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = map(counterhit)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1205, Blood]
type = helper
trigger1 = root, map(blood)
trigger1 = root, map(mysparks)
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = 7052
ID = 7050
name = "Blood"
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
ownpal = 1
facing = ifelse((target, facing = facing), -1, 1)
ignorehitpause = 1
persistent = 0

[State 1205, Blood Screenpack]
type = explod
trigger1 = root, map(blood)
trigger1 = !(root, map(mysparks))
trigger1 = movehit = 1 && numtarget
anim = F12
ID = 8000
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
facing = ifelse((target, facing = facing), -1, 1)
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1205, Idle]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I

[State 1205, End]
type = destroyself
trigger1 = !animtime


;========================<SOUND WAVE>=============================
[Statedef 1305]
type = U
physics = N
movetype = A
ctrl = 0
sprpriority = 4

[State 1305, Type]
type = statetypeset
trigger1 = !time
trigger1 = !prevstateno
statetype = S

[State 1305, Type]
type = statetypeset
trigger1 = !time
trigger1 = !prevstateno
trigger1 = root, statetype = A
statetype = A

[State 1305, Reflector]
type = helper
trigger1 = !numhelper(1310)
helpertype = normal
stateno = 1310
ID = 1310
name = "Projectile Reflector"
postype = p1
pos = 0, 0
ownpal = 1

[State 1305, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, HP
ignorehitpause = 1

[State 1305, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1307
ignorehitpause = 1

[State 1305, Anim]
type = changeanim
trigger1 = anim != 1305
value = 1305

[State 1305, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1305, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)

[State 1305, Type]
type = varset
trigger1 = !time
trigger1 = !prevstateno
var(11) = ifelse(root, statetype = A, 1, 0)

[State Damage Scaling - Counter Flag]
type = mapset
trigger1 = numenemy
map = "counterhit"
value = (enemynear, movetype = A)
ignorehitpause = 1

[State Damage Scaling - Helper Multiplier]
type = attackmulset
trigger1 = 1
value = root, fvar(10) * ifelse(map(counterhit), 1.2, 1)
ignorehitpause = 1

[State Damage Scaling - Update Root]
type = null
trigger1 = !var(43)
trigger1 = movecontact && numtarget
trigger1 = var(43) := 1
trigger1 = root, var(43) = 0
trigger1 = root, var(43) := 1
ignorehitpause = 1

[State 1305, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1
ignorehitpause = 1
[State 1305, ProjContact]
type = rootvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 1300
var(18) = 1
ignorehitpause = 1

[State 1305, Time Var]
type = varadd
trigger1 = 1
var(4) = -1

[State 1305, Time Var]
type = varset
trigger1 = !time
trigger1 = !prevstateno
var(4) = ifelse(var(10) = 3, 32, ifelse(var(10) = 2, 26, 20))

[State 1305, Vel]
type = velset
trigger1 = 1
x = 1.5
y = 0

[State 1305, Particles]
type = explod
trigger1 = !(time % 6)
trigger1 = var(4) >= 6
anim = 1306
sprpriority = 4
postype = p1
vel = (vel x / 2.0), 0
removetime = -2
scale = 0.5, 0.5

[State 1305, Particles]
type = explod
trigger1 = 1
vel = -0.5 + (random < 500), 0
accel = 0, 0.05
anim = 1308
sprpriority = 3
postype = p1
pos = -15, 0
random = 15, 30
;random = 30, 60
removetime = -2
scale = 0.25, 0.25
ignorehitpause = 1

[State 1305, Type]
type = statetypeset
trigger1 = movecontact
movetype = I

[State 1305, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = 2, ifelse((movehit && numtarget), 11, 0)
channel = 2
ignorehitpause = 1

[State 1305, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag =
sparkxy = -10, 0

[State 1305, Miss]
type = hitdef
trigger1 = var(11) = 1
attr = A, SP
hitflag =
sparkxy = -10, 0

[State 1305, Hit]
type = hitdef
trigger1 = root, var(15) < 2
trigger1 = !var(18)
trigger1 = var(11) = 0
priority = 4, Hit
attr = S, SP
damage = 90, 23
dizzypoints = -ceil(root, fvar(10) * 150)
guard.dist = const(size.proj.attack.dist)
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -7, 0
ground.cornerpush.veloff = 0
air.velocity = -3, -3
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = 4
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 1305, Hit]
type = hitdef
trigger1 = root, var(15) < 2
trigger1 = !var(18)
trigger1 = var(11) = 1
priority = 4, Hit
attr = A, SP
damage = 90, 23
dizzypoints = -ceil(root, fvar(10) * 150)
guard.dist = const(size.proj.attack.dist)
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 10
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -7, 0
ground.cornerpush.veloff = 0
air.velocity = -3, -3
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = 4
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 1305, Getpower]
type = poweradd
trigger1 = movecontact = 1
trigger1 = numtarget
value = ifelse(moveguarded, 25, 50)
ignorehitpause = 1

[State 1305, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
postype = p1
pos = 0, 0
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1305, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = Fifelse(moveguarded, 40, 2)
ID = 8000
postype = p1
pos = 0, 0
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 1305, Counter FX]
type = helper
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = map(counterhit)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p1
pos = 0, 0
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1305, End]
type = changestate
trigger1 = var(4) <= 0
value = 1307

[State 1305, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


;--- Wait ---
[Statedef 1307]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 1

[State 1307, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 2, 0
channel = 2
lowpriority = 1
volumescale = 50

[State 1307, End]
type = destroyself
triggerall = !numhelper(1310)
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = target, time <= 1 && !(target, hitshakeover)


;--- Projectile Reflector ---
[Statedef 1310]
type = S
movetype = A
anim = 1310
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1310, ID]
type = varset
trigger1 = !time
trigger1 = !prevstateno
var(0) = parent, ID

[State 1310, Strength]
type = varset
trigger1 = !time
var(10) = parent, var(10)

[State 1310, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AT, HP
time = -1
slot = 0
stateno = 1312
ignorehitpause = 1

[State 1310, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, NP, SP
time = -1
slot = 1
stateno = 1311
ignorehitpause = 1

[State 1310, HitOverride]
type = hitoverride
trigger1 = var(10) >= 4
attr = SCA, AA, AT
time = -1
slot = 0
stateno = 1312
ignorehitpause = 1

[State 1310, HitOverride]
type = hitoverride
trigger1 = var(10) >= 4
attr = SCA, NP, SP, HP
time = -1
slot = 1
stateno = 1311
ignorehitpause = 1

[State 1310, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP
time = -1
ignorehitpause = 1

[State 1310, HB]
type = hitby
trigger1 = var(10) >= 4
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1310, Bind]
type = bindtoparent
trigger1 = playerIDexist(var(0))
pos = 0, 0

[State 1310, Reflected]
type = helper
triggerall = prevstateno = 1311
trigger1 = time = 8
trigger2 = parent, movecontact != 1
trigger2 = inguarddist = 0 && root, inguarddist = 0
helpertype = normal
stateno = 1315
ID = 1315
name = "Reflected Projectile"
postype = p1
pos = 32, 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
persistent = 0

[State 1310, End]
type = destroyself
triggerall = ifelse(prevstateno = 1311, time >= 8, 1)
trigger1 = !playerIDexist(var(0))
trigger2 = playerIDexist(var(0))
trigger2 = (playerID(var(0)), ishelper(1305) = 0) && (playerID(var(0)), ishelper(1325) = 0)
trigger3 = playerIDexist(var(0))
trigger3 = (playerID(var(0)), stateno != 1305) && (playerID(var(0)), stateno != 1325)
trigger4 = time >= 180
ignorehitpause = 1


;--- Reflect Regular Projectiles ---
[Statedef 1311]
type = A
movetype = H
ctrl = 0
anim = 1310
velset = 0, 0

[State 1311, End]
type = changestate
trigger1 = hitshakeover
trigger2 = parent, movecontact != 1
trigger2 = inguarddist = 0 && root, inguarddist = 0
value = 1310


;--- End ---
[Statedef 1312]
type = A
movetype = I
anim = 9999
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1312, End]
type = destroyself
trigger1 = 1


;========================<EX SOUND WAVE>=============================
[Statedef 1325]
type = U
physics = N
movetype = A
ctrl = 0
sprpriority = 4

[State 1325, Type]
type = statetypeset
trigger1 = !time
trigger1 = !prevstateno
statetype = S

[State 1325, Type]
type = statetypeset
trigger1 = !time
trigger1 = !prevstateno
trigger1 = root, statetype = A
statetype = A

[State 1325, Reflector]
type = helper
trigger1 = !numhelper(1310)
helpertype = normal
stateno = 1310
ID = 1310
name = "Projectile Reflector"
postype = p1
pos = 0, 0
ownpal = 1

[State 1325, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1

[State 1325, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1325
ignorehitpause = 1

[State 1325, Type]
type = varset
trigger1 = !time
trigger1 = !prevstateno
var(11) = ifelse(root, statetype = A, 1, 0)

[State 1325, Anim]
type = changeanim
trigger1 = anim != 1305
value = 1305
[State 1325, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1325, Hitvar]
type = varadd
trigger1 = !time
var(2) = 1

[State Damage Scaling - Counter Flag]
type = mapset
trigger1 = numenemy
map = "counterhit"
value = (enemynear, movetype = A)
ignorehitpause = 1

[State Damage Scaling - Helper Multiplier]
type = attackmulset
trigger1 = 1
value = root, fvar(10) * ifelse(map(counterhit), 1.2, 1)
ignorehitpause = 1

[State Damage Scaling - Update Root]
type = null
trigger1 = !var(43)
trigger1 = movecontact && numtarget
trigger1 = var(43) := 1
trigger1 = root, var(43) = 0
trigger1 = root, var(43) := 1
ignorehitpause = 1

[State 1325, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1
ignorehitpause = 1
[State 1325, ProjContact]
type = rootvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 1320
var(18) = 1
ignorehitpause = 1

[State 1325, Time Var]
type = varadd
trigger1 = 1
var(4) = -1

[State 1325, Time Var]
type = varset
trigger1 = !time
trigger1 = !prevstateno
var(4) = 72

[State 1325, Vel]
type = velset
trigger1 = 1
x = 1.25

[State 1325, Particles]
type = explod
trigger1 = !(time % 6)
trigger1 = var(4) >= 6
anim = 1306
sprpriority = 4
postype = p1
vel = (vel x / 2.0), 0
removetime = -2
scale = 0.5, 0.5

[State 1325, particles]
type = explod
trigger1 = 1
vel = -0.5 + (random < 500), 0
accel = 0, 0.05
anim = 1308
sprpriority = 3
postype = p1
pos = -15, 0
random = 15, 30
;random = 30, 60
removetime = -2
scale = 0.25, 0.25
ignorehitpause = 1

[State 1325, Type]
type = statetypeset
trigger1 = movecontact && var(2) >= 4
movetype = I

[State 1325, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = 2, ifelse((movehit && numtarget), 11, 0)
channel = 2
ignorehitpause = 1

[State 1325, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag =
sparkxy = -10, 0

[State 1325, Miss]
type = hitdef
trigger1 = var(11) = 1
attr = A, SP
hitflag =
sparkxy = -10, 0

[State 1325, Hit]
type = hitdef
trigger1 = root, var(15) < (2 + var(2))
trigger1 = time >= (prevstateno = 1325) * 4
priority = 4, Hit
attr = S, SP
damage = 40, 10
dizzypoints = -ceil(root, fvar(10) * 67)
guard.dist = const(size.proj.attack.dist)
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10, 0
ground.cornerpush.veloff = 0
air.velocity = -4, -4
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = 4
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 1325, Hit]
type = hitdef
trigger1 = root, var(15) < (2 + var(2))
trigger1 = time >= (prevstateno = 1325) * 4
trigger1 = var(11) = 1
priority = 4, Hit
attr = A, SP
damage = 40, 10
dizzypoints = -ceil(root, fvar(10) * 67)
guard.dist = const(size.proj.attack.dist)
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 6, 10
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10, 0
ground.cornerpush.veloff = 0
air.velocity = -4, -4
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = 4
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 1325, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
postype = p1
pos = 0, 0
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1325, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = Fifelse(moveguarded, 40, 2)
ID = 8000
postype = p1
pos = 0, 0
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 1325, Counter FX]
type = helper
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = map(counterhit)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p1
pos = 0, 0
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1325, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) >= 3, 1307, 1325)
ignorehitpause = 1

[State 1325, End]
type = changestate
trigger1 = var(4) <= 0
value = 1307
ignorehitpause = 1

[State 1325, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


;========================<REFLECTED PROJECTILE>=============================
[Statedef 1315]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1315, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1316
ignorehitpause = 1

[State 1315, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1315, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1315, Anim]
type = changeanim
trigger1 = anim != 1315
value = 1315

[State 1315, Strength]
type = varset
trigger1 = !time
var(10) = parent, var(10)

[State 1315, Movehit Var]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(18) = 1
ignorehitpause = 1

[State 1315, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 4, 7, ifelse(var(10) = 3, 6, ifelse(var(10) = 2, 5, 4)))

[State 1315, particles]
type = explod
trigger1 = !(time % 2)
vel = -0.5 + (random < 500), 0
accel = 0, 0.05
anim = 1308
sprpriority = 3
postype = p1
pos = -30, 0
random = 5, 15
;random = 10, 30
removetime = -2
scale = 0.25, 0.25
ignorehitpause = 1

[State 1315, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = 2, ifelse((movehit && numtarget), 11, 0)
channel = 2
ignorehitpause = 1

[State 1315, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = 80, 20
dizzypoints = -ceil(root, fvar(10) * 100)
guard.dist = const(size.proj.attack.dist)
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 10
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10, 0
ground.cornerpush.veloff = 0
air.velocity = -4, -2
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 1315, Getpower]
type = poweradd
trigger1 = movecontact = 1
trigger1 = numtarget
value = ifelse(moveguarded, 25, 50)
ignorehitpause = 1

[State 1315, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
postype = p1
pos = 0, 0
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1315, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = Fifelse(moveguarded, 40, 2)
ID = 8000
postype = p1
pos = 0, 0
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 1315, Counter FX]
type = helper
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = map(counterhit)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p1
pos = 0, 0
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1315, End]
type = changestate
trigger1 = movecontact || movereversed
value = 1316
ignorehitpause = 1

[State 1315, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


[Statedef 1316]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
anim = 1316
sprpriority = 4

[State 1316, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 2, 0
channel = 2
lowpriority = 1
volumescale = 50

[State 1316, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1316, End]
type = destroyself
trigger1 = !animtime


;========================<CHUUKADAN>=============================
;--- THROWN ---
[Statedef 2004]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 2004, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)

[State 2004, Colorvar]
type = varset
trigger1 = !time
trigger1 = !prevstateno
var(1) = ifelse(root, var(11) = 3, 2, 1)

[State 2004, Vel]
type = velset
trigger1 = !time
x = ifelse(root, var(11) = 3, 4.5, ifelse(root, var(11) = 2, 3.0, 1.5))
y = ifelse(root, var(11) = 3, -6, ifelse(root, var(11) = 2, -7.5, -9))

[State 2004, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(1) = 1, 2005, 2035)

[State 2004, Ticking]
type = playsnd
trigger1 = ID = (helper(2005), ID)
value = 5, 13
channel = 5
lowpriority = 1

[State 2004, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, NP, SP, AT
stateno = 2015
slot = 0
ignorehitpause = 1

[State 2004, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, HP
stateno = 2020
slot = 1
ignorehitpause = 1

[State 2004, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, AA, AP
ignorehitpause = 1

[State 2004, Timer Var]
type = varset
trigger1 = !time
var(0) = ifelse(root, var(11) = 3, 40, ifelse(root, var(11) = 2, 120, 300))

[State 2004, Timer Var]
type = varadd
trigger1 = time
var(0) = -1
ignorehitpause = 1

[State 2004, Timer]
type = helper
trigger1 = !time
trigger1 = var(1) = 1
helpertype = normal
stateno = 2090
ID = 2090
name = "Timer"
postype = p1
facing = ifelse(facing = 1, 1, -1)
ownpal = 1

[State 2004, Hit by Lei-Lei]
type = changestate
triggerall = root, movetype = A
triggerall = ((pos y - root, pos y) = [-50, 50])
trigger1 = (root, stateno = [200, 699])
trigger1 = root, hitdefattr = SCA, AA
trigger1 = ((pos x - root, pos x) * (root, facing) = [0, 100])
trigger2 = root, stateno = 640 || root, stateno = 1101
trigger2 = ((pos x - root, pos x) * (root, facing) = [-60, 60])
value = 2016

[State 2004, Hit by Chireitou]
type = changestate
triggerall = numhelper(1205) || numhelper(1225) || numhelper(3205)
trigger1 = numhelper(1205)
trigger1 = helper(1205), movetype = A
trigger1 = abs(pos x - (helper(1205), pos x)) < 33
trigger2 = numhelper(1225)
trigger2 = helper(1225), movetype = A
trigger2 = abs(pos x - (helper(1225), pos x)) < 33
trigger3 = numhelper(3204)
trigger3 = helper(3204), movetype = A
trigger3 = abs(pos x - (helper(3204), pos x)) < 33
value = 2016

[State 2004, Hit by Partner]
type = changestate
trigger1 = numpartner
trigger1 = partner, movetype = A && partner, hitdefattr = SCA, AA
trigger1 = ((pos x - partner, pos x) * (partner, facing) = [0, 80])
trigger1 = ((pos y - partner, pos y) = [-50, 50])
value = 2017

[State 2004, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 2004, Poing]
type = playsnd
trigger1 = vel x > 0 && frontedgedist <= 0
trigger2 = vel x < 0 && backedgedist <= 0
value = 5, 7
channel = 0

[State 2004, Turn]
type = velmul
trigger1 = vel x > 0 && frontedgedist <= 0
trigger2 = vel x < 0 && backedgedist <= 0
x = -1

[State 2004, bounce]
type = changestate
trigger1 = vel y >= 0 && pos y >= -5
value = 2010

[State 2004, detonate]
type = changestate
triggerall = roundstate < 4
trigger1 = var(0) <= 0
trigger2 = root, stateno = 2002 && root, animelemtime(3) >= 10
value = 2020


;--- IDLE ---
[Statedef 2005]
type = S
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 2005, timervar]
type = varadd
trigger1 = time
var(0) = -1
ignorehitpause = 1

[State 2005, Ticking]
type = playsnd
trigger1 = ID = (helper(2005), ID)
value = 5, 13
channel = 5
lowpriority = 1

[State 2005, Hit by Lei-Lei]
type = changestate
triggerall = root, movetype = A
triggerall = ((pos y - root, pos y) = [-50, 50])
trigger1 = (root, stateno = [200, 699])
trigger1 = root, hitdefattr = SCA, AA
trigger1 = ((pos x - root, pos x) * (root, facing) = [0, 100])
trigger2 = root, stateno = 640 || root, stateno = 1101
trigger2 = ((pos x - root, pos x) * (root, facing) = [-60, 60])
value = 2016

[State 2005, Hit by Chireitou]
type = changestate
triggerall = numhelper(1205) || numhelper(1225) || numhelper(3205)
trigger1 = numhelper(1205)
trigger1 = helper(1205), movetype = A
trigger1 = abs(pos x - (helper(1205), pos x)) < 33
trigger2 = numhelper(1225)
trigger2 = helper(1225), movetype = A
trigger2 = abs(pos x - (helper(1225), pos x)) < 33
trigger3 = numhelper(3204)
trigger3 = helper(3204), movetype = A
trigger3 = abs(pos x - (helper(3204), pos x)) < 33
value = 2016

[State 2005, Hit by partner]
type = changestate
trigger1 = numpartner
trigger1 = partner, movetype = A && partner, hitdefattr = SCA, AA
trigger1 = ((pos x - partner, pos x) * (partner, facing) = [0, 80])
trigger1 = ((pos y - partner, pos y) = [-50, 50])
value = 2017

[State 2005, Pos]
type = posset
trigger1 = 1
y = 0

[State 2005, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) >= 420) && anim != 2005
value = 2005
[State 2005, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [180, 419]) && anim != 2006
value = 2006
[State 2005, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [1, 179]) && anim != 2007
value = 2007

[State 2005, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) >= 120) && anim != 2035
value = 2035
[State 2005, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) = [1, 119]) && anim != 2036
value = 2036

[State 2005, poing]
type = playsnd
trigger1 = !time
value = 5, 7
[State 2005, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7102
sprpriority = -10
postype = p1
removetime = -2
ownpal = 1
scale = 0.33, 0.33

[State 2005, detonate]
type = changestate
triggerall = roundstate < 4
trigger1 = var(0) <= 0
trigger2 = root, stateno = 2002 && root, animelemtime(3) >= 10
value = 2020
[State 2005, detonate]
type = changestate
trigger1 = roundstate = 4 && var(0) <= 0
value = 2030


;--- BOUNCING ---
[Statedef 2010]
type = S
physics = N
movetype = I
ctrl = 0
sprpriority = 3

[State 2010, timervar]
type = varadd
trigger1 = time
var(0) = -1
ignorehitpause = 1

[State 2010, Hit by Lei-Lei]
type = changestate
triggerall = root, movetype = A
triggerall = ((pos y - root, pos y) = [-50, 50])
trigger1 = (root, stateno = [200, 699])
trigger1 = root, hitdefattr = SCA, AA
trigger1 = ((pos x - root, pos x) * (root, facing) = [0, 100])
trigger2 = root, stateno = 640 || root, stateno = 1101
trigger2 = ((pos x - root, pos x) * (root, facing) = [-60, 60])
value = 2016

[State 2010, Hit by Chireitou]
type = changestate
triggerall = numhelper(1205) || numhelper(1225) || numhelper(3205)
trigger1 = numhelper(1205)
trigger1 = helper(1205), movetype = A
trigger1 = abs(pos x - (helper(1205), pos x)) < 33
trigger2 = numhelper(1225)
trigger2 = helper(1225), movetype = A
trigger2 = abs(pos x - (helper(1225), pos x)) < 33
trigger3 = numhelper(3204)
trigger3 = helper(3204), movetype = A
trigger3 = abs(pos x - (helper(3204), pos x)) < 33
value = 2016

[State 2010, Hit by partner]
type = changestate
trigger1 = numpartner && time
trigger1 = partner, movetype = A && partner, hitdefattr = SCA, AA
trigger1 = ((pos x - partner, pos x) * (partner, facing) = [0, 80])
trigger1 = ((pos y - partner, pos y) = [-50, 50])
value = 2017

[State 2010, xvar]
type = varset
trigger1 = !time
fvar(1) = vel x
[State 2010, yvar]
type = varset
trigger1 = !time
fvar(2) = vel y

[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) >= 420) && anim != 2010 && time < 6
value = 2010
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [180, 419]) && anim != 2011 && time < 6
value = 2011
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [1, 179]) && anim != 2012 && time < 6
value = 2012
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) >= 120) && anim != 2040 && time < 6
value = 2040
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) = [1, 119]) && anim != 2041 && time < 6
value = 2041

[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) >= 420) && anim != 2005 && time >= 6
value = 2005
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [180, 419]) && anim != 2006 && time >= 6
value = 2006
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [1, 179]) && anim != 2007 && time >= 6
value = 2007
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) >= 120) && anim != 2035 && time >= 6
value = 2035
[State 2010, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) = [1, 119]) && anim != 2036 && time >= 6
value = 2036

[State 2010, Vel]
type = velset
trigger1 = time < 6
x = 0
y = 0
[State 2010, Pos]
type = posset
trigger1 = time < 6
y = 0

[State 2010, Accel]
type = veladd
trigger1 = time >= 6
y = 0.5
[State 2010, Vel]
type = velset
trigger1 = time = 6
x = 0.5 * fvar(1)
y = -0.5 * fvar(2)

[State 2010, Poing]
type = playsnd
trigger1 = vel x > 0 && frontedgedist <= 0
trigger2 = vel x < 0 && backedgedist <= 0
value = 5, 7
channel = 0

[State 2010, Turn]
type = velmul
trigger1 = vel x > 0 && frontedgedist <= 0
trigger2 = vel x < 0 && backedgedist <= 0
x = -1

[State 2010, poing]
type = playsnd
trigger1 = !time
value = 5, 7
channel = 0

[State 2010, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7102
sprpriority = -10
postype = p1
removetime = -2
ownpal = 1
scale = 0.33, 0.33

[State 2010, land]
type = changestate
trigger1 = vel y >= 0 && pos y >= -5 && time > 6
value = 2005
[State 2010, detonate]
type = changestate
triggerall = roundstate < 4
trigger1 = var(0) <= 0
trigger2 = root, stateno = 2002 && root, animelemtime(3) >= 10
value = 2020


;--- HIT by Enemy ---
[Statedef 2015]
type = A
physics = N
movetype = H
anim = ifelse(var(1) = 1, 2015, 2045)
ctrl = 0
sprpriority = 3

[State 2015, timervar]
type = varadd
trigger1 = 1
var(0) = -1
ignorehitpause = 1

[State 2015, Turn]
type = turn
trigger1 = !time
trigger1 = p2dist x >= 0
[State 2015, Hitvel]
type = velset
trigger1 = !time
x = 5
y = -5

[State 2015, Hit by Lei-Lei]
type = changestate
triggerall = root, movetype = A
triggerall = ((pos y - root, pos y) = [-50, 50])
trigger1 = (root, stateno = [200, 699])
trigger1 = root, hitdefattr = SCA, AA
trigger1 = ((pos x - root, pos x) * (root, facing) = [0, 100])
trigger2 = root, stateno = 640 || root, stateno = 1101
trigger2 = ((pos x - root, pos x) * (root, facing) = [-60, 60])
value = 2016

[State 2015, Hit by Chireitou]
type = changestate
triggerall = numhelper(1205) || numhelper(1225) || numhelper(3205)
trigger1 = numhelper(1205)
trigger1 = helper(1205), movetype = A
trigger1 = abs(pos x - (helper(1205), pos x)) < 33
trigger2 = numhelper(1225)
trigger2 = helper(1225), movetype = A
trigger2 = abs(pos x - (helper(1225), pos x)) < 33
trigger3 = numhelper(3204)
trigger3 = helper(3204), movetype = A
trigger3 = abs(pos x - (helper(3204), pos x)) < 33
value = 2016

[State 2015, Hit by partner]
type = changestate
trigger1 = numpartner && time
trigger1 = partner, movetype = A && partner, hitdefattr = SCA, AA
trigger1 = ((pos x - partner, pos x) * (partner, facing) = [0, 80])
trigger1 = ((pos y - partner, pos y) = [-50, 50])
value = 2017

[State 2015, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) >= 420) && anim != 2005 && vel y >= 0
value = 2005
[State 2015, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [180, 419]) && anim != 2006 && vel y >= 0
value = 2006
[State 2015, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [1, 179]) && anim != 2007 && vel y >= 0
value = 2007
[State 2015, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) >= 120) && anim != 2035 && vel y >= 0
value = 2035
[State 2015, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) = [1, 119]) && anim != 2036 && vel y >= 0
value = 2036

[State 2015, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 2015, Poing]
type = playsnd
trigger1 = vel x > 0 && frontedgedist <= 0
trigger2 = vel x < 0 && backedgedist <= 0
value = 5, 7
channel = 0

[State 2015, Turn]
type = velmul
trigger1 = vel x > 0 && frontedgedist <= 0
trigger2 = vel x < 0 && backedgedist <= 0
x = -1

[State 2015, bounce]
type = changestate
trigger1 = vel y >= 0 && pos y >= -5
value = 2010
[State 2015, detonate]
type = changestate
triggerall = roundstate < 4
trigger1 = var(0) <= 0
trigger2 = root, stateno = 2002 && root, animelemtime(3) >= 10
value = 2020


;--- HIT by Lei-Lei ---
[Statedef 2016]
type = A
physics = N
movetype = H
anim = ifelse(var(1) = 1, 2015, 2045)
ctrl = 0
sprpriority = 3

[State 2016, timervar]
type = varadd
trigger1 = time
var(0) = -1
ignorehitpause = 1

[State 2016, Turn]
type = turn
trigger1 = !time
trigger1 = rootdist x >= 0
[State 2016, Hitvel]
type = velset
trigger1 = !time
x = 5
y = -5

[State 2016, Hit by partner]
type = changestate
trigger1 = numpartner && time
trigger1 = partner, movetype = A && partner, hitdefattr = SCA, AA
trigger1 = ((pos x - partner, pos x) * (partner, facing) = [0, 80])
trigger1 = ((pos y - partner, pos y) = [-50, 50])
value = 2017

[State 2016, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = !time
helpertype = normal
stateno = ifelse((root, stateno = [2000, 4999]), 8012, ifelse((root, stateno = [1000, 1999]), 8011, 8010))
ID = 8000
name = "Spark"
postype = p1
pos = 10, -22
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 2016, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = !time
anim = Fifelse((root, stateno = [2000, 4999]), 2, ifelse((root, stateno = [1000, 1999]), 1, 0))
ID = 8000
postype = p1
pos = 10, -22
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 2016, Snd]
type = playsnd
trigger1 = !time
value = 2, ifelse((root, stateno = [2000, 4999]), 3, ifelse((root, stateno = [1000, 1999]), 2, 1))
channel = 2

[State 2016, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) >= 420) && anim != 2005 && vel y >= 0
value = 2005
[State 2016, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [180, 419]) && anim != 2006 && vel y >= 0
value = 2006
[State 2016, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [1, 179]) && anim != 2007 && vel y >= 0
value = 2007
[State 2016, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) >= 120) && anim != 2035 && vel y >= 0
value = 2035
[State 2016, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) = [1, 119]) && anim != 2036 && vel y >= 0
value = 2036

[State 2016, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 2016, Poing]
type = playsnd
trigger1 = vel x > 0 && frontedgedist <= 0
trigger2 = vel x < 0 && backedgedist <= 0
value = 5, 7
channel = 0

[State 2016, Turn]
type = velmul
trigger1 = vel x > 0 && frontedgedist <= 0
trigger2 = vel x < 0 && backedgedist <= 0
x = -1

[State 2016, bounce]
type = changestate
trigger1 = vel y >= 0 && pos y >= -5
value = 2010

[State 2016, detonate]
type = changestate
triggerall = roundstate < 4
trigger1 = var(0) <= 0
trigger2 = root, stateno = 2002 && root, animelemtime(3) >= 10
value = 2020


;--- HIT by Partner ---
[Statedef 2017]
type = A
physics = N
movetype = H
anim = ifelse(var(1) = 1, 2015, 2045)
ctrl = 0
sprpriority = 3

[State 2017, timervar]
type = varadd
trigger1 = time
var(0) = -1
ignorehitpause = 1

[State 2017, Turn]
type = turn
trigger1 = !time
trigger1 = ((partner, pos x) -pos x) >= 0
[State 2017, Hitvel]
type = velset
trigger1 = !time
x = 5
y = -5

[State 2017, Hit by Lei-Lei]
type = changestate
triggerall = root, movetype = A
triggerall = ((pos y - root, pos y) = [-50, 50])
trigger1 = (root, stateno = [200, 699])
trigger1 = root, hitdefattr = SCA, AA
trigger1 = ((pos x - root, pos x) * (root, facing) = [0, 100])
trigger2 = root, stateno = 640 || root, stateno = 1101
trigger2 = ((pos x - root, pos x) * (root, facing) = [-60, 60])
value = 2016

[State 2017, Hit by Chireitou]
type = changestate
triggerall = numhelper(1205) || numhelper(1225) || numhelper(3205)
trigger1 = numhelper(1205)
trigger1 = helper(1205), movetype = A
trigger1 = abs(pos x - (helper(1205), pos x)) < 33
trigger2 = numhelper(1225)
trigger2 = helper(1225), movetype = A
trigger2 = abs(pos x - (helper(1225), pos x)) < 33
trigger3 = numhelper(3204)
trigger3 = helper(3204), movetype = A
trigger3 = abs(pos x - (helper(3204), pos x)) < 33
value = 2016

[State 2017, Sparks]
type = explod
trigger1 = !time
anim = f0 + ifelse((partner, hitdefattr = SCA, HA), 3, ifelse((partner, hitdefattr = SCA, SA), 2, 1))
ontop = 1
postype = p1
pos = 10, -22
removetime = -2
ownpal = 1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 2017, Snd]
type = playsnd
trigger1 = !time
value = f5, ifelse((partner, hitdefattr = SCA, HA), 2, ifelse((partner, hitdefattr = SCA, SA), 1, 0))

[State 2017, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) >= 420) && anim != 2005 && vel y >= 0
value = 2005
[State 2017, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [180, 419]) && anim != 2006 && vel y >= 0
value = 2006
[State 2017, Anim]
type = changeanim
trigger1 = var(1) = 1 && (var(0) = [1, 179]) && anim != 2007 && vel y >= 0
value = 2007
[State 2017, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) >= 120) && anim != 2035 && vel y >= 0
value = 2035
[State 2017, Anim]
type = changeanim
trigger1 = var(1) = 2 && (var(0) = [1, 119]) && anim != 2036 && vel y >= 0
value = 2036

[State 2017, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 2017, Poing]
type = playsnd
trigger1 = vel x > 0 && frontedgedist <= 0
trigger2 = vel x < 0 && backedgedist <= 0
value = 5, 7
channel = 0

[State 2017, Turn]
type = velmul
trigger1 = vel x > 0 && frontedgedist <= 0
trigger2 = vel x < 0 && backedgedist <= 0
x = -1

[State 2017, bounce]
type = changestate
trigger1 = vel y >= 0 && pos y >= -5
value = 2010

[State 2017, detonate]
type = changestate
triggerall = roundstate < 4
trigger1 = var(0) <= 0
trigger2 = root, stateno = 2002 && root, animelemtime(3) >= 10
value = 2020


;--- EXPLODE ---
[Statedef 2020]
type = U
physics = N
movetype = A
anim = ifelse(var(1) = 1, 2020, 2050)
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 2020, Snd]
type = playsnd
trigger1 = animelem = 5
value = 5, 8
channel = 5

[State 2020, Explosion]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 2025
ID = 2025
name = "Bomb explosion"
postype = p1
pos = 0, 0
ownpal = 1

[State 2025, Shake]
type = envshake
trigger1 = animelem = 5
time = 18
freq = 180
ampl = 4

[State 2025, Dust]
type = explod
trigger1 = animelem = 5
anim = 7102
ID = 7102
sprpriority = -10
postype = p1
pos = 0, ceil(-pos y)
vel = 0, 0
removetime = -2
ownpal = 1
scale = 2, 1

[State 2020, End]
type = destroyself
trigger1 = !animtime


;--- ROUND OVER ---
[Statedef 2030]
type = S
physics = N
movetype = I
anim = ifelse(var(1) = 1, 2030, 2060)
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 2020, Snd]
type = stopsnd
trigger1 = !time
value = 5, 8
channel = 2

[State 2030, Pos]
type = posset
trigger1 = 1
y = 0


;--- TIMER ---
[Statedef 2090]
type = A
physics = N
movetype = I
anim = 2090
ctrl = 0
sprpriority = 4

[State 2090, Parent]
type = varset
trigger1 = !time
sysvar(0) = parent, ID

[State 2090, End]
type = destroyself
trigger1 = !playerIDexist(sysvar(0))
trigger2 = playerID(sysvar(0)), stateno = 2020
trigger2 = playerID(sysvar(0)), animelemtime(5) >= 0

[State 2090, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 2090, Anim]
type = changeanim
trigger1 = anim != (2090 + floor(parent, var(0) / 60))
value = 2090 + ceil(parent, var(0) / 60.0)

[State 2090, Bind]
type = bindtoparent
trigger1 = 1
pos = ceil(ifelse((parent, facing = 1), 14, -14) * parent, const(size.xscale)), -7


;========================<BOMB EXPLOSION>=============================
[Statedef 2025]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 5

[State 2025, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 2025
ignorehitpause = 1
[State 2025, HB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1

[State 2025, Strength]
type = varset
trigger1 = !time
var(10) = parent, var(10)

[State 2025, Anim]
type = changeanim
trigger1 = !time
trigger1 = !prevstateno
value = 2025

[State 2025, Strength]
type = varset
trigger1 = !time
var(1) = 4

[State Damage Scaling - Counter Flag]
type = mapset
trigger1 = numenemy
map = "counterhit"
value = (enemynear, movetype = A)
ignorehitpause = 1

[State Damage Scaling - Helper Multiplier]
type = attackmulset
trigger1 = 1
value = root, fvar(10) * ifelse(map(counterhit), 1.2, 1)
ignorehitpause = 1

[State Damage Scaling - Update Root]
type = null
trigger1 = !var(43)
trigger1 = movecontact && numtarget
trigger1 = var(43) := 1
trigger1 = root, var(43) = 0
trigger1 = root, var(43) := 1
ignorehitpause = 1

[State 2025, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1
ignorehitpause = 1
[State 2025, ProjContact]
type = rootvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 2002
var(18) = 1
ignorehitpause = 1

[State 2025, Shadows]
type = afterimage
trigger1 = !time
trigger1 = !prevstateno
time = 999
timegap = 1
framegap = 1
length = 2
palmul = 0.5, 0.5, 0.5
palcontrast = 90, 0, 0
trans = add

[State 2025, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 2025, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = 2, ifelse((movehit && numtarget), 3, 0)
channel = 2
ignorehitpause = 1

[State 2025, Hit]
type = hitdef
trigger1 = !time
trigger1 = !prevstateno
priority = 4, Hit
attr = S, HP
damage = 220, 55
dizzypoints = 0
guardpoints = -ceil(root, fvar(10) * 73)
guard.dist = 320
animtype = Up
hitflag = MAFD
guardflag = M
affectteam = B
pausetime = 0, 6
sparkno = -1
guard.sparkno = -1
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0, -16
ground.cornerpush.veloff = 0
air.velocity = 0, -16
guard.velocity = ifelse(p2dist x < 0, 10.52, -10.52)
fall = 1
fall.recover = 0
getpower = 0, 0
givepower = 40, 40
;no envshake
palfx.color = 32
palfx.sinadd = 80, 25, 0, 8
palfx.mul = 512, 256, 128
palfx.time = 60
p1sprpriority = 5
ID = 2025
yaccel = 0.4850
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 2025, Burn]
type = targetstate
trigger1 = movehit && numtarget(2025)
trigger1 = root, stateno != [150, 155]
trigger1 = !(target(2025), ishelper)
trigger1 = (target(2025), stateno != 7697) && (target(2025), selfanimexist(7697))
value = 7697
ignorehitpause = 1

[State 2025, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
postype = p1
pos = ceil((((target, pos x) - pos x) * facing) / 2.0), ceil(((target, const(size.mid.pos.y)) + (target, pos y) - pos y) / 2.0)
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 2025, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = Fifelse(moveguarded, 40, 3)
ID = 8000
postype = p1
pos = ceil((((target, pos x) - pos x) * facing) / 2.0), ceil(((target, const(size.mid.pos.y)) + (target, pos y) - pos y) / 2.0)
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 2025, Counter FX]
type = helper
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = map(counterhit)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p1
pos = ceil((((target, pos x) - pos x) * facing) / 2.0), ceil(((target, const(size.mid.pos.y)) + (target, pos y) - pos y) / 2.0)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 2025, Flame Particles Enemy]
type = helper
trigger1 = !numhelper(8150)
trigger1 = movehit && numtarget && numenemy
trigger1 = enemynear(0), gethitvar(chainID) = 2025
trigger1 = (enemynear(0), time = 0) && (enemynear(0), movetype = H)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flame Particles (enemy 0)"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 2025, Flame Particles Enemy]
type = helper
trigger1 = !numhelper(8151)
trigger1 = movehit && numtarget && numenemy >= 2
trigger1 = enemynear(1), gethitvar(chainID) = 2025
trigger1 = (enemynear(1), time = 0) && (enemynear(1), movetype = H)
helpertype = normal
stateno = 8150
ID = 8151
name = "Flame Particles (enemy 1)"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 2025, Flame Particles Root]
type = helper
trigger1 = !numhelper(8152)
trigger1 = movehit && numtarget
trigger1 = root, gethitvar(chainID) = 2025
trigger1 = (root, time = 0) && (root, movetype = H)
helpertype = normal
stateno = 8150
ID = 8152
name = "Flame Particles (Lei-Lei)"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 2025, Flame Particles Partner]
type = helper
trigger1 = !numhelper(8153)
trigger1 = movehit && numtarget && numpartner
trigger1 = partner, gethitvar(chainID) = 2025
trigger1 = (partner, time = 0) && (partner, movetype = H)
helpertype = normal
stateno = 8150
ID = 8153
name = "Flame Particles (partner)"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 2025, Fix Combo]
type = hitadd
trigger1 = !time
trigger1 = numhelper(2025) = 2
value = -1
ignorehitpause = 1
persistent = 0

[State 2025, End]
type = destroyself
trigger1 = !animtime


;========================<CHIREITOU BLADE DISPENSER>=============================
[Statedef 3204]
type = S
physics = N
movetype = A
ctrl = 0
anim = 9999

[State 3204, Vel]
type = velset
trigger1 = 1
x = 4.6 * (root, const(size.xscale))

[State 3204, Vel]
type = velset
trigger1 = time = [25, 36]
x = 0

[State 3204, Pos]
type = posset
trigger1 = 1
y = 0

[State 3204, Snd]
type = playsnd
trigger1 = time = 0 || time = 12 || time = 24 || time = 48 || time = 60 || time = 72
value = 5, 5
channel = 1

[State 3204, Blade]
type = helper
trigger1 = time = 0 || time = 12 || time = 24 || time = 48 || time = 60 || time = 72
helpertype = normal
stateno = 3205
ID = 3205
name = "Blade"
postype = p1
pos = ceil(30 * const(size.xscale))
ownpal = 1
size.xscale = const(size.xscale)
size.height = (time = 90)
size.shadowoffset = -5

[State 3204, HitSound]
type = playsnd
trigger1 = var(2) = 2
value = 2, 9
channel = 2
ignorehitpause = 1

[State 3204, GuardSound]
type = playsnd
trigger1 = var(2) = 1
value = 2, 12
channel = 2
freqmul = 0.9 + (random / 5000.0)
ignorehitpause = 1

[State 3204, HitSound]
type = varset
trigger1 = var(2)
var(2) = 0

[State 3204, End]
type = changestate
trigger1 = time >= 90
value = 3209


;--- Wait ---
[Statedef 3209]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 1

[State 3209, End]
type = destroyself
trigger1 = !numhelper(3205)
trigger2 = time >= 40


;========================<CHIREITOU BLADE>=============================
[Statedef 3205]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3205 + 1 * (facing = -1)
velset = 0, 0
sprpriority = -1

[State 3205, spr]
type = sprpriority
trigger1 = 1
value = -1
ignorehitpause = 1

[State 3205, No Reversals]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 5000
ignorehitpause = 1
[State 3205, HB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1

[State 3205, Pos]
type = posset
trigger1 = 1
y = 0

[State Damage Scaling - Counter Flag]
type = mapset
trigger1 = numenemy
map = "counterhit"
value = (enemynear, movetype = A)
ignorehitpause = 1

[State Damage Scaling - Helper Multiplier]
type = attackmulset
trigger1 = 1
value = root, fvar(10) * ifelse(map(counterhit), 1.2, 1)
ignorehitpause = 1

[State Damage Scaling - Update Root]
type = null
trigger1 = !var(43)
trigger1 = movecontact && numtarget
trigger1 = var(43) := 1
trigger1 = root, var(43) = 0
trigger1 = root, var(43) := 1
ignorehitpause = 1

[State 3205, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1
ignorehitpause = 1
[State 3205, ProjContact]
type = rootvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 3200
var(18) = 1
ignorehitpause = 1

[State 3205, Dust]
type = explod
trigger1 = !time
anim = 7105
sprpriority = -5
postype = p1
pos = 0, -3
scale = 0.33, 0.33
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3205, HitSound]
type = parentvarset
trigger1 = movecontact = 1
var(2) = ifelse((movehit && numtarget), 2, 1)
ignorehitpause = 1

[State 3205, Miss]
type = hitdef
trigger1 = 1
attr = S, HA
hitflag =
sparkxy = -10, 0

[State 3205, Hit]
type = hitdef
trigger1 = root, var(15) < 6
trigger1 = !movecontact && !movereversed
attr = S, HA
damage = 45, 11
dizzypoints = 0
guardpoints = -ceil(root, fvar(10) * 15)
guard.dist = 320
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 4
sparkno = -1
guard.sparkno = -1
sparkxy = -10, ceil(p2dist y - 60)
hitsound = -1
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4.75 * (root, const(size.xscale)), -4.00
ground.cornerpush.veloff = 0
air.velocity = -4.75 * (root, const(size.xscale)), -4.00
down.velocity = 0, 0
getpower = 0, 0
givepower = 40, 40
p1sprpriority = -1
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180
guard.velocity = -10.52
fall = 1
fall.recover = 0
yaccel = 0.4850
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00

[State 3205, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8024)
ID = 8000
name = "Spark"
postype = p1
pos = 0, ceil(target, pos y) + (target, const(size.mid.pos.y))
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3205, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = Fifelse(moveguarded, 40, 3)
ID = 8000
postype = p1
pos = 0, ceil(target, pos y) + (target, const(size.mid.pos.y))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 3205, Counter FX]
type = helper
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = map(counterhit)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3205, Blood]
type = helper
trigger1 = root, map(blood)
trigger1 = root, map(mysparks)
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = 7052
ID = 7050
name = "Blood"
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
ownpal = 1
facing = ifelse((target, facing = facing), -1, 1)
ignorehitpause = 1
persistent = 0

[State 3205, Blood Screenpack]
type = explod
trigger1 = root, map(blood)
trigger1 = !(root, map(mysparks))
trigger1 = movehit = 1 && numtarget
anim = F12
ID = 8000
postype = p2
pos = (target, const(size.ground.front) -10), target, const(size.mid.pos.y)
facing = ifelse((target, facing = facing), -1, 1)
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3205, Idle]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I

[State 3205, End]
type = destroyself
trigger1 = !animtime
trigger2 = frontedgedist < -80 || backedgedist < -80


;========================<SHOCKWAVE>=============================
[Statedef 3405]
type = C
physics = N
movetype = A
ctrl = 0
anim = 3405
velset = 0, 0

[State 3405, No Reversals]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AT
stateno = 5000
ignorehitpause = 1

[State 3405, HB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1

[State 3405, Hit]
type = hitdef
trigger1 = !time
priority = 4, Hit
attr = C, HA
damage = 0, 0
dizzypoints = 0
guardpoints = 0
guard.dist = 320
animtype = Hard
hitflag = MFD
guardflag = M
pausetime = 0, 2
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound = -1
guardsound = -1
ground.type = Trip
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0, -8
ground.cornerpush.veloff = 0
air.type = Trip
air.velocity = 0, -8
getpower = 0, 0
givepower = 40, 40
guard.velocity = 0
fall = 1
fall.recover = 0
yaccel = 0.4850
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1
kill = 0
numhits = 0

[State 3405, End]
type = destroyself
triggerall = time
trigger1 = root, movetype = H
trigger2 = time >= 90
trigger2 = !numhelper(3410)


;========================<TENRAIHA SPIKED BALL>=============================
[Statedef 3410]
type = A
physics = N
movetype = A
anim = 3410
ctrl = 0
velset = 0, 2
sprpriority = 2

[State 3410, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3410
ignorehitpause = 1

[State 3410, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State Damage Scaling - Counter Flag]
type = mapset
trigger1 = numenemy
map = "counterhit"
value = (enemynear, movetype = A)
ignorehitpause = 1

[State Damage Scaling - Helper Multiplier]
type = attackmulset
trigger1 = 1
value = root, fvar(10) * ifelse(map(counterhit), 1.2, 1)
ignorehitpause = 1

[State Damage Scaling - Update Root]
type = null
trigger1 = !var(43)
trigger1 = movecontact && numtarget
trigger1 = var(43) := 1
trigger1 = root, var(43) = 0
trigger1 = root, var(43) := 1
ignorehitpause = 1

[State 3410, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1
ignorehitpause = 1

[State 3410, ProjContact]
type = rootvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 3400
var(18) = 1
ignorehitpause = 1

[State 3410, Pos]
type = posset
trigger1 = !time
y = -ceil(screenpos y)

[State 3410, Accel]
type = veladd
trigger1 = !(vel y > 0 && (pos y > -vel y))
y = 0.5

[State 3410, Bounce]
type = posfreeze
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1

[State 3410, Bounce]
type = posset
trigger1 = vel y > 0 && (pos y > -vel y)
y = 0

[State 3410, Bounce]
type = playsnd
trigger1 = anim = 3410
trigger1 = vel y > 4
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5, 10
channel = 1
volumescale = ifelse(var(0), 50, 75)

[State 3410, Bounce]
type = explod
trigger1 = anim = 3410
trigger1 = vel y > 4
trigger1 = vel y > 0 && (pos y > -vel y)
anim = 7102
ID = 7102
postype = p1
pos = 0, 0
scale = ifelse(var(0), 0.25, 0.33), ifelse(var(0), 0.25, 0.33)
sprpriority = -2
ownpal = 1

[State 3410, Bounce]
type = velset
trigger1 = !var(0)
trigger1 = vel y > 0 && (pos y > -vel y)
trigger1 = var(0) := 1
x = 1 + (random / 333.3)
y = -0.5 * vel y

[State 3410, Bounce]
type = velmul
trigger1 = var(0)
trigger1 = vel y > 0 && (pos y > -vel y)
x = 0.75
y = -0.75

[State 3410, Vel]
type = velmul
trigger1 = movecontact
x = ifelse(p2dist x >= 0, -1, 1)
y = ifelse((vel y > 0 && p2dist y > 0), -0.5, 0.75)
persistent = 0

[State 3410, HitSound]
redirectID = root, ID
type = playsnd
trigger1 = movecontact = 1
value = 2, ifelse((movehit && numtarget), 3, 0)
channel = 2
abspan = ceil(pos x)
persistent = 0
ignorehitpause = 1

[State 3410, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag =
sparkxy = -10, 0

[State 3410, Hit]
type = hitdef
trigger1 = root, var(15) < 1
trigger1 = !movecontact && !var(0)
priority = 4, Hit
attr = A, HP
damage = 25, 6
dizzypoints = 0
guardpoints = -ceil(root, fvar(10) * 8)
guard.dist = const(size.proj.attack.dist)
animtype = Back
hitflag = MAFD
guardflag = M
pausetime = 0, 6
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -16
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0, -5
ground.cornerpush.veloff = 0
air.velocity = 0, -5
down.velocity = 0, 0
down.hittime = 18
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180
p1sprpriority = 2
guard.velocity = -12.97
fall = 1
fall.recover = 0
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 3410, Hit]
type = hitdef
trigger1 = root, var(15) < 1
trigger1 = !movecontact && var(0)
priority = 4, Hit
attr = S, HP
damage = 25, 6
dizzypoints = 0
guardpoints = -ceil(root, fvar(10) * 8)
guard.dist = const(size.proj.attack.dist)
animtype = Back
hitflag = MAFD
guardflag = M
pausetime = 0, 6
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -16
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0, -5
ground.cornerpush.veloff = 0
air.velocity = 0, -5
down.velocity = 0, 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180
p1sprpriority = 2
guard.velocity = ifelse(p2dist x > 0, -12.97, 12.97)
fall = 1
fall.recover = 0
yaccel = 0.4850
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 3410, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
postype = p1
pos = 0, -16
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3410, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = Fifelse(moveguarded, 40, 3)
ID = 8000
postype = p1
pos = 0, -16
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 3410, Counter FX]
type = helper
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = map(counterhit)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p1
pos = 0, -16
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3410, Anim]
type = changeanim
trigger1 = anim = 3410 && time >= 90
value = 3411

[State 3410, fadeout]
type = trans
trigger1 = anim = 3411
trans = addalpha
alpha = ceil(256 - 16 * (animelemtime(1))), ceil(16 * animelemtime(1))

[State 3410, Idle]
type = statetypeset
trigger1 = root, movetype = H
trigger2 = movecontact || movereversed
movetype = I

[State 3410, End]
type = destroyself
triggerall = anim = 3411
trigger1 = !animtime
trigger2 = animelemtime(1) >= 16


;========================<BOWLING BALL>=============================
[Statedef 3510]
type = C
physics = N
movetype = I
velset = 12, 0
anim = 3510
sprpriority = 3

[State 3510, Assert]
type = assertspecial
trigger1 = root, var(35)
flag = invisible

[State 3510, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 3510, Pos]
type = posset
trigger1 = time >= 4
trigger1 = fvar(20)
x = root, fvar(20)
ignorehitpause = 1

[State 3510, Pos]
type = posset
trigger1 = time
x = root, fvar(20)
ignorehitpause = 1

[State 3510, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT

[State 3510, Dust]
type = explod
trigger1 = !(time % 2)
anim = 7103
ID = 7103
sprpriority = 4
postype = p1
pos = -10, -ceil(pos y)
scale = 0.5, 0.5

[State 3510, End]
type = destroyself
trigger1 = frontedgedist < -60 || backedgedist < -60
trigger2 = time >= 180


;========================<PIN>=============================
[Statedef 3511]
physics = N
velset = 0, 0
anim = ifelse((ishelper(351101) && random < 100), 3512, 3511)
sprpriority = 2

[State 3511, Pos]
type = offset
trigger1 = 1
y = ifelse((anim = 3512), -27, -24)

[State 3511, fadein]
type = trans
trigger1 = animelemtime(2) >= 0 && animelemtime(2) < 20
trans = addalpha
alpha = ceil(12.8 * animelemtime(2)), ceil(256 -12.8 * animelemtime(2))

[State 3511, End]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = (root, animelemtime(22) > 0 || root, stateno != 3501) && root, numtarget
trigger1 = (facing = 1 && (root, fvar(20) -pos x <= 40)) || (facing = -1 && (root, fvar(20) -pos x >= -40))
value = 3512

[State 3511, End]
type = changestate
trigger1 = animelemtime(2) >= 0 && root, stateno != 3501
value = 3513


[Statedef 3512]
physics = N
velset = -5 -(random % 5), -20
sprpriority = 3

[State 3512, Angle]
type = angleadd
trigger1 = 1
value = 15

[State 3512, Angle]
type = angledraw
trigger1 = 1

[State 3512, fadeout]
type = trans
trigger1 = time >= 60
trans = addalpha
alpha = ceil(256 -4.25 * (time -60)), ceil(4.25 * (time -60))

[State 3512, Vel]
type = velmul
trigger1 = vel y > 0 && pos y >= -24
x = 0.75
y = -0.75

[State 3512, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = !time
helpertype = normal
stateno = 8012
ID = 8000
name = "Spark"
postype = p1
pos = 0, 20
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3512, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = !time
anim = F2
ID = 8000
postype = p1
pos = 0, 0
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 3512, Vel]
type = velmul
trigger1 = vel x < 0 && backedgedist <= 12
trigger2 = vel x > 0 && frontedgedist <= 12
x = -1

[State 3512, Accel]
type = veladd
trigger1 = 1
y = 0.75

[State 3512, End]
type = destroyself
trigger1 = time >= 120


[Statedef 3513]
physics = N
velset = 0, 0
sprpriority = 3

[State 3513, fadeout]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -4.25 * time), ceil(4.25 * time)

[State 3513, End]
type = destroyself
trigger1 = time >= 60


;========================<RED DUST>=============================
[Statedef 3406]
physics = N
anim = 9999

[State 3406, Dust]
type = explod
trigger1 = !time
anim = 7522
ID = 3406
sprpriority = -5
postype = p1
removetime = 16

[State 3406, Shrink]
type = modifyexplod
trigger1 = 1
ID = 3406
scale = 0.2 + (0.05 * time) * const(size.xscale), 0.05 + (0.01 * time) * const(size.yscale)
trans = addalpha
alpha = 256 - (16 * time), 256

[State 3406, End]
type = removeexplod
trigger1 = time >= 16

[State 3406, End]
type = destroyself
trigger1 = !numexplod


;========================<SPARKS>=============================
;--- Guard Normal ---
[Statedef 8000]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0
sprpriority = 99

[State 8000, Main]
type = explod
trigger1 = !time
anim = 8000
ID = 1
postype = p1
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.1 + (0.0375 * time), 0.1 + (0.0375 * time)
trans = addalpha
alpha = ifelse(time < 4, 256, 256 - 64 * (time - 4)), 256

[State 8000, End]
type = removeexplod
trigger1 = time >= 8
trigger2 = time >= 4
trigger2 = numhelper > (56 / (1 + numenemy + numpartner))

[State 8000, End]
type = destroyself
trigger1 = !numexplod


;--- Guard Special ---
[Statedef 8001]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0
sprpriority = 99

[State 8001, Main]
type = explod
trigger1 = !time
anim = 8001
ID = 1
postype = p1
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8001, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.2 + (0.025 * time), 0.2 + (0.025 * time)
trans = addalpha
alpha = ifelse(time < 4, 256, 256 - 64 * (time - 4)), 256

[State 8001, End]
type = removeexplod
trigger1 = time >= 8
trigger2 = time >= 4
trigger2 = numhelper > (56 / (1 + numenemy + numpartner))

[State 8001, End]
type = destroyself
trigger1 = !numexplod


;--- Weak ---
[Statedef 8010]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0
sprpriority = 99

[State 8010, Main]
type = explod
trigger1 = !time
anim = 8010
ID = 0
postype = p1
ontop = 1
removetime = 10
pausemovetime = -1
supermovetime = -1
[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(0)
ID = 0
scale = 0.3 - (time * 0.03), 0.3 - (time * 0.03)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8011
ID = 1
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.15 + (0.009375 * time), 0.15 + (0.009375 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8010, Streaks]
type = explod
trigger1 = !time
anim = 8012
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.15 + (0.009375 * time), 0.15 + (0.009375 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8010, Impact]
type = explod
trigger1 = !time
anim = 8014
ID = 4
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 8
pausemovetime = -1
supermovetime = -1
[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 0.3 -(0.0375 * time), 0.3 -(0.0375 * time)
trans = addalpha
alpha = 128 -(16 * time), 256

[State 8010, End]
type = removeexplod
trigger1 = time >= 16
trigger2 = time >= 8
trigger2 = numhelper > (56 / (1 + numenemy + numpartner))

[State 8010, End]
type = destroyself
trigger1 = !numexplod


;--- Medium ---
[Statedef 8011]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0
sprpriority = 99

[State 8011, Main]
type = explod
trigger1 = !time
anim = 8010
ID = 0
postype = p1
ontop = 1
removetime = 10
pausemovetime = -1
supermovetime = -1
[State 8011, Scale]
type = modifyexplod
trigger1 = numexplod(0)
ID = 0
scale = 0.35 - (time * 0.035), 0.35 - (time * 0.035)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)

[State 8011, Center]
type = explod
trigger1 = !time
anim = 8011
ID = 1
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8011, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.175 + (0.0109375 * time), 0.175 + (0.0109375 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8011, Streaks]
type = explod
trigger1 = !time
anim = 8012
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8011, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.175 + (0.0109375 * time), 0.175 + (0.0109375 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8011, Impact]
type = explod
trigger1 = !time
anim = 8014
ID = 4
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 8
pausemovetime = -1
supermovetime = -1
[State 8011, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 0.35 -(0.04375 * time), 0.35 -(0.04375 * time)
trans = addalpha
alpha = 128 -(16 * time), 256

[State 8011, End]
type = removeexplod
trigger1 = time >= 16
trigger2 = time >= 8
trigger2 = numhelper > (56 / (1 + numenemy + numpartner))

[State 8011, End]
type = destroyself
trigger1 = !numexplod


;--- Strong ---
[Statedef 8012]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0
sprpriority = 99

[State 8012, Main]
type = explod
trigger1 = !time
anim = 8010
ID = 0
postype = p1
ontop = 1
removetime = 10
pausemovetime = -1
supermovetime = -1
[State 8012, Scale]
type = modifyexplod
trigger1 = numexplod(0)
ID = 0
scale = 0.4 - (time * 0.04), 0.4 - (time * 0.04)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)

[State 8012, Center]
type = explod
trigger1 = !time
anim = 8011
ID = 1
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8012, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.2 + (0.0125 * time), 0.2 + (0.0125 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8012, Streaks]
type = explod
trigger1 = !time
anim = 8012
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8012, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.2 + (0.0125 * time), 0.2 + (0.0125 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8012, Impact]
type = explod
trigger1 = !time
anim = 8014
ID = 4
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 8
pausemovetime = -1
supermovetime = -1
[State 8012, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 0.4 -(0.05 * time), 0.4 -(0.05 * time)
trans = addalpha
alpha = 128 -(16 * time), 256

[State 8012, End]
type = removeexplod
trigger1 = time >= 16
trigger2 = time >= 8
trigger2 = numhelper > (56 / (1 + numenemy + numpartner))

[State 8012, End]
type = destroyself
trigger1 = !numexplod


;--- Special ---
[Statedef 8013]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0
sprpriority = 99

[State 8013, Main]
type = explod
trigger1 = !time
anim = 8010
ID = 0
postype = p1
ontop = 1
removetime = 10
pausemovetime = -1
supermovetime = -1
[State 8013, Scale]
type = modifyexplod
trigger1 = numexplod(0)
ID = 0
scale = 0.45 - (time * 0.045), 0.45 - (time * 0.045)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)

[State 8013, Center]
type = explod
trigger1 = !time
anim = 8011
ID = 1
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8013, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.225 + (0.0140625 * time), 0.225 + (0.0140625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8013, Streaks]
type = explod
trigger1 = !time
anim = 8012
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8013, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.225 + (0.0140625 * time), 0.225 + (0.0140625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8013, P2 Back]
type = explod
triggerall = !time
triggerall = parent, numtarget
trigger1 = numenemy = parent, numtarget
trigger2 = numenemy > parent, numtarget
trigger2 = abs(enemynear(0), pos x - enemynear(1), pos x) >= 120
anim = 8013
ID = 3
postype = p1
vfacing = ifelse(random < 500, -1, 1)
sprpriority = -3
removetime = 8
pausemovetime = -1
supermovetime = -1

[State 8013, Position]
type = modifyexplod
triggerall = numexplod(3)
trigger1 = numenemy = 1
trigger2 = numenemy >= 2 && !time
ID = 3
postype = p1
pos = ceil(p2dist x + enemynear, const(size.ground.back)), ceil(p2dist y + ifelse(p2statetype = L, 0, ifelse(p2statetype = C, 0.5, 0.75) * enemynear, const(size.head.pos.y)))

[State 8013, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.25 + (0.03125 * time), 0.25 + (0.03125 * time)
trans = addalpha
alpha = 256 -(32 * time), 256

[State 8013, Impact]
type = explod
trigger1 = !time
anim = 8014
ID = 4
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 8
pausemovetime = -1
supermovetime = -1
[State 8013, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 0.45 -(0.05625 * time), 0.45 -(0.05625 * time)
trans = addalpha
alpha = 192 -(24 * time), 256

[State 8013, End]
type = removeexplod
trigger1 = time >= 16
trigger2 = time >= 8
trigger2 = numhelper > (56 / (1 + numenemy + numpartner))

[State 8013, End]
type = destroyself
trigger1 = !numexplod


;--- Super ---
[Statedef 8014]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0
sprpriority = 99

[State 8014, Main]
type = explod
trigger1 = !time
anim = 8010
ID = 0
postype = p1
ontop = 1
removetime = 10
pausemovetime = -1
supermovetime = -1
[State 8014, Scale]
type = modifyexplod
trigger1 = numexplod(0)
ID = 0
scale = 0.5 - (time * 0.05), 0.5 - (time * 0.05)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)

[State 8014, Center]
type = explod
trigger1 = !time
anim = 8011
ID = 1
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8014, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.25 + (0.015625 * time), 0.25 + (0.015625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8014, Streaks]
type = explod
trigger1 = !time
anim = 8012
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8014, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.25 + (0.015625 * time), 0.25 + (0.015625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8014, P2 Back]
type = explod
triggerall = !time
triggerall = parent, numtarget
trigger1 = numenemy = parent, numtarget
trigger2 = numenemy > parent, numtarget
trigger2 = abs(enemynear(0), pos x - enemynear(1), pos x) >= 120
anim = 8013
ID = 3
postype = p1
vfacing = ifelse(random < 500, -1, 1)
sprpriority = -3
removetime = 8
pausemovetime = -1
supermovetime = -1

[State 8014, Position]
type = modifyexplod
triggerall = numexplod(3)
trigger1 = numenemy = 1
trigger2 = numenemy >= 2 && !time
ID = 3
postype = p1
pos = ceil(p2dist x + enemynear, const(size.ground.back)), ceil(p2dist y + ifelse(p2statetype = L, 0, ifelse(p2statetype = C, 0.5, 0.75) * enemynear, const(size.head.pos.y)))

[State 8014, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.30 + (0.0375 * time), 0.30 + (0.0375 * time)
trans = addalpha
alpha = 256 -(32 * time), 256

[State 8014, Impact]
type = explod
trigger1 = !time
anim = 8014
ID = 4
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 8
pausemovetime = -1
supermovetime = -1
[State 8014, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 0.5 -(0.0625 * time), 0.5 -(0.0625 * time)
trans = addalpha
alpha = 256 -(32 * time), 256

[State 8014, End]
type = removeexplod
trigger1 = time >= 16
trigger2 = time >= 8
trigger2 = numhelper > (56 / (1 + numenemy + numpartner))

[State 8014, End]
type = destroyself
trigger1 = !numexplod


;--- Light Cut ---
[Statedef 8020]
type = A
anim = 8020
velset = 0, 0
sprpriority = 99
[State 8020, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8020, Angle]
type = angleset
trigger1 = !time
value = 15 * (random % 24)

[State 8020, Scale]
type = angledraw
trigger1 = time < 10
scale = 0.16 + (time * 0.048), 0.32 - (time * 0.032)

[State 8020, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0

[State 8020, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8020, Streaks]
type = explod
trigger1 = !time
anim = 8012
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8020, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.125 + (0.0078 * time), 0.125 + (0.0078 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8020, End]
type = removeexplod
trigger1 = time >= 16

[State 8020, End]
type = destroyself
trigger1 = time >= 16


;--- Medium Cut ---
[Statedef 8021]
type = A
anim = 8020
velset = 0, 0
sprpriority = 99
[State 8021, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8021, Angle]
type = angleset
trigger1 = !time
value = 15 * (random % 24)

[State 8021, Scale]
type = angledraw
trigger1 = time < 10
scale = 0.19 + (time * 0.056), 0.37 - (time * 0.037)

[State 8021, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0

[State 8021, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8021, Streaks]
type = explod
trigger1 = !time
anim = 8012
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8021, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.145 + (0.0091 * time), 0.145 + (0.0091 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8021, End]
type = removeexplod
trigger1 = time >= 16

[State 8021, End]
type = destroyself
trigger1 = time >= 16


;--- Hard Cut ---
[Statedef 8022]
type = A
anim = 8020
velset = 0, 0
sprpriority = 99
[State 8022, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8022, Angle]
type = angleset
trigger1 = !time
value = 15 * (random % 24)

[State 8022, Scale]
type = angledraw
trigger1 = time < 10
scale = 0.22 + (time * 0.065), 0.43 - (time * 0.043)

[State 8022, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0

[State 8022, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8022, Streaks]
type = explod
trigger1 = !time
anim = 8012
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8022, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.169 + (0.0106 * time), 0.169 + (0.0106 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8022, End]
type = removeexplod
trigger1 = time >= 16

[State 8022, End]
type = destroyself
trigger1 = time >= 16


;--- Special Cut ---
[Statedef 8023]
type = A
anim = 8020
velset = 0, 0
sprpriority = 99
[State 8023, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8023, Angle]
type = angleset
trigger1 = !time
value = 15 * (random % 24)

[State 8023, Scale]
type = angledraw
trigger1 = time < 10
scale = 0.22 + (time * 0.065), 0.43 - (time * 0.043)

[State 8023, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0

[State 8023, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8023, Center]
type = explod
trigger1 = !time
anim = 8021
ID = 1
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8023, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.18 + (0.01125 * time), 0.18 + (0.01125 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8023, Streaks]
type = explod
trigger1 = !time
anim = 8012
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8023, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.169 + (0.0106 * time), 0.169 + (0.0106 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8023, P2 Back]
type = explod
triggerall = !time
triggerall = parent, numtarget
trigger1 = numenemy = parent, numtarget
trigger2 = numenemy > parent, numtarget
trigger2 = abs(enemynear(0), pos x - enemynear(1), pos x) >= 120
anim = 8013
ID = 3
postype = p1
vfacing = ifelse(random < 500, -1, 1)
sprpriority = -3
removetime = 8
pausemovetime = -1
supermovetime = -1

[State 8023, Position]
type = modifyexplod
triggerall = numexplod(3)
trigger1 = numenemy = 1
trigger2 = numenemy >= 2 && !time
ID = 3
postype = p1
pos = ceil(p2dist x + enemynear, const(size.ground.back)), ceil(p2dist y + ifelse(p2statetype = L, 0, ifelse(p2statetype = C, 0.5, 0.75) * enemynear, const(size.head.pos.y)))

[State 8023, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.25 + (0.03125 * time), 0.25 + (0.03125 * time)
trans = addalpha
alpha = 256 -(32 * time), 256

[State 8023, End]
type = removeexplod
trigger1 = time >= 16

[State 8023, End]
type = destroyself
trigger1 = time >= 16


;--- Super Cut ---
[Statedef 8024]
type = A
anim = 8020
velset = 0, 0
sprpriority = 99
[State 8024, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8024, Angle]
type = angleset
trigger1 = !time
value = 15 * (random % 24)

[State 8024, Scale]
type = angledraw
trigger1 = time < 10
scale = 0.257 + (time * 0.076), 0.50 - (time * 0.050)

[State 8024, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0

[State 8024, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8024, Center]
type = explod
trigger1 = !time
anim = 8021
ID = 1
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8024, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.225 + (0.0140625 * time), 0.225 + (0.0140625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8024, Streaks]
type = explod
trigger1 = !time
anim = 8012
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8024, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.197 + (0.0124 * time), 0.197 + (0.0124 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8024, P2 Back]
type = explod
triggerall = !time
triggerall = parent, numtarget
trigger1 = numenemy = parent, numtarget
trigger2 = numenemy > parent, numtarget
trigger2 = abs(enemynear(0), pos x - enemynear(1), pos x) >= 120
anim = 8013
ID = 3
postype = p1
vfacing = ifelse(random < 500, -1, 1)
sprpriority = -3
removetime = 8
pausemovetime = -1
supermovetime = -1

[State 8024, Position]
type = modifyexplod
triggerall = numexplod(3)
trigger1 = numenemy = 1
trigger2 = numenemy >= 2 && !time
ID = 3
postype = p1
pos = ceil(p2dist x + enemynear, const(size.ground.back)), ceil(p2dist y + ifelse(p2statetype = L, 0, ifelse(p2statetype = C, 0.5, 0.75) * enemynear, const(size.head.pos.y)))

[State 8024, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.30 + (0.0375 * time), 0.30 + (0.0375 * time)
trans = addalpha
alpha = 256 -(32 * time), 256

[State 8024, End]
type = removeexplod
trigger1 = time >= 16

[State 8024, End]
type = destroyself
trigger1 = time >= 16


;========================<RECOVER FX>=============================
[Statedef 8200]
type = A
velset = 0, 0
anim = 8200
sprpriority = 5

[State 8200, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8200, Scale]
type = angledraw
trigger1 = 1
scale = 0.25 + (0.017 * time), 0.25 + (0.017 * time)

[State 8200, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - (16 * time), 256

[State 8200, End]
type = destroyself
trigger1 = time >= 16


;========================<COUNTER FX>=============================
[Statedef 8290]
type = A
physics = N
velset = 0, 0
anim = 9999

[State 8290, Circle]
type = explod
trigger1 = !numexplod(8290)
anim = 8290
ID = 8290
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8290, Scale]
type = modifyexplod
trigger1 = numexplod(8290)
ID = 8290
scale = 0.2 + (0.05 * time), 0.2 + (0.05 * time)
trans = addalpha
alpha = ceil(256 -(16 * time)), 256

[State 8290, Safety]
type = removeexplod
trigger1 = time >= 16

[State 8290, End]
type = destroyself
trigger1 = !numexplod


;========================<RED FLAMES>=============================
[Statedef 8150]
type = A
velset = 0, 0
anim = 9999

[State 8150, Player]
type = varset
trigger1 = ishelper(8150)
trigger1 = numenemy
var(0) = enemynear(0), ID

[State 8150, Player]
type = varset
trigger1 = ishelper(8151)
trigger1 = numenemy >= 2
var(0) = enemynear(1), ID

[State 8150, Player]
type = varset
trigger1 = ishelper(8152)
var(0) = root, ID

[State 8150, Player]
type = varset
trigger1 = ishelper(8153)
trigger1 = numpartner
var(0) = partner, ID


[State 8150, Pos]
type = posset
trigger1 = playerIDexist(var(0))
x = ceil(playerID(var(0)), pos x)
y = ceil(playerID(var(0)), pos y) + (playerID(var(0)), const(size.mid.pos.y))

[State 8150, Pos]
type = posset
trigger1 = playerIDexist(var(0))
trigger1 = playerID(var(0)), statetype = L
x = ceil(playerID(var(0)), pos x)
y = ceil(playerID(var(0)), pos y) - 20

[State 8150, Turn]
type = turn
trigger1 = playerIDexist(var(0))
trigger1 = facing != (playerID(var(0)), facing)

[State 8150, Snd]
type = playsnd
trigger1 = playerIDexist(var(0))
trigger1 = playerID(var(0)), hitshakeover
value = 5, 11
persistent = 0

[State 8150, Flames]
type = explod
trigger1 = playerIDexist(var(0))
anim = 8150
sprpriority = 3
postype = p1
pos = 0, 0
random = 20, 20
;random = 40, 40
vel = (random / 2000.0), -0.5 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1

[State 8150, Flames]
type = explod
trigger1 = playerIDexist(var(0))
anim = 8150
sprpriority = -1
postype = p1
pos = 0, 0
random = 30, 30
;random = 60, 60
vel = (random / 2000.0), -0.5 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1

[State 8150, End]
type = destroyself
trigger1 = time >= 60
trigger2 = !playerIDexist(var(0))


;========================<BLOOD>=============================
;--- Small ---
[Statedef 7050]
type = A
anim = 9999
velset = 0, 0

[State 7050, Small]
type = explod
trigger1 = !time
anim = 7050
ID = 7050
postype = p1
vel = -3 + (random / 166.7), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1
[State 7050, Small]
type = explod
trigger1 = !time
anim = 7050
ID = 7050
postype = p1
vel = -3 + (random / 166.7), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1
[State 7050, Small]
type = explod
trigger1 = !time
anim = 7050
ID = 7050
postype = p1
vel = -3 + (random / 166.7), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1

[State 7050, End]
type = destroyself
trigger1 = 1


;--- Medium ---
[Statedef 7051]
type = A
anim = 9999
velset = 0, 0

[State 7051, Medium]
type = explod
trigger1 = !time
anim = 7051
ID = 7050
postype = p1
vel = -10 + (random / 50.0), -5 -(random / 200.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1

[State 7051, Small]
type = explod
trigger1 = !time
anim = 7050
ID = 7050
postype = p1
vel = -4 + (random / 125.0), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1
[State 7051, Small]
type = explod
trigger1 = !time
anim = 7050
ID = 7050
postype = p1
vel = -4 + (random / 125.0), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1
[State 7051, Small]
type = explod
trigger1 = !time
anim = 7050
ID = 7050
postype = p1
vel = -4 + (random / 125.0), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1

[State 7051, End]
type = destroyself
trigger1 = 1


;--- Large ---
[Statedef 7052]
type = A
anim = 9999
velset = 0, 0

[State 7052, Large]
type = explod
trigger1 = !time
anim = 7052
ID = 7050
postype = p1
vel = -(random / 333.3), -2.5 -(random / 400.0)
accel = 0, 0.25
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1

[State 7052, Medium]
type = explod
trigger1 = !time
anim = 7051
ID = 7050
postype = p1
vel = -10 + (random / 50.0), -5 -(random / 200.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1
[State 7052, Medium]
type = explod
trigger1 = !time
anim = 7051
ID = 7050
postype = p1
vel = -10 + (random / 50.0), -5 -(random / 200.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1

[State 7052, Small]
type = explod
trigger1 = !time
anim = 7050
ID = 7050
postype = p1
vel = -5 + (random / 100.0), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1
[State 7052, Small]
type = explod
trigger1 = !time
anim = 7050
ID = 7050
postype = p1
vel = -5 + (random / 100.0), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1
[State 7052, Small]
type = explod
trigger1 = !time
anim = 7050
ID = 7050
postype = p1
vel = -5 + (random / 100.0), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1

[State 7052, End]
type = destroyself
trigger1 = 1


;========================<DUSTS>=============================
;--- Jump ---
[Statedef 7100]
physics = N
velset = 0, 0
anim = 9999

[State 7100, Bind]
type = bindtoroot
trigger1 = time

[State 7100, Dust]
type = explod
trigger1 = !time
anim = 7100
ID = 7100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 7100, Dust]
type = explod
trigger1 = !time || time = 2 || time = 6
anim = 7101
ID = 7100
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 7100, Assert]
type = assertspecial
trigger1 = 1
flag = invisible
[State 7100, End]
type = destroyself
trigger1 = !numexplod
trigger2 = time >= 60


;--- Dash ---
[Statedef 7104]
type = A
anim = 9999
velset = 0, 0
sprpriority = 5

[State 7104, Pos]
type = posset
trigger1 = !time = 0
y = 0

[State 7104, Dust]
type = explod
trigger1 = time = 0 || time = 3 || time = 6
anim = 7104
ID = ifelse((time = 6), 3, ifelse((time = 3), 2, 1))
postype = p1
pos = 0, -4
random = 4, 4
;random = 8, 8
vel = -3 -(random / 1000.0), -2 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
removetime = 16
sprpriority = 3
pausemovetime = -1
supermovetime = -1

[State 7104, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.1 + (0.025 * time), 0.1 + (0.025 * time)
trans = addalpha
alpha = 256 -(16 * time), 256
[State 7104, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.1 + (0.025 * (time -3)), 0.1 + (0.025 * (time -3))
trans = addalpha
alpha = 256 -(16 * (time -3)), 256
[State 7104, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.1 + (0.025 * (time -6)), 0.1 + (0.025 * (time -6))
trans = addalpha
alpha = 256 -(16 * (time -6)), 256

[State 7104, End]
type = removeexplod
trigger1 = time >= 22
[State 7104, End]
type = destroyself
trigger1 = !numexplod


;--- Impact ---
[Statedef 8110]
type = A
anim = 9999
velset = 0, 0
sprpriority = 5

[State 8110, Pos]
type = posset
trigger1 = !time
y = 0

[State 8110, FX Ground]
type = explod
trigger1 = !time
anim = 8110
ID = 1
postype = p1
removetime = 8
sprpriority = -10
pausemovetime = -1
supermovetime = -1

[State 8110, FX Back]
type = explod
trigger1 = !time
anim = 8111
ID = 2
postype = p1
removetime = 8
sprpriority = -10
pausemovetime = -1
supermovetime = -1

[State 8110, Scale]
type = modifyexplod
trigger1 = numexplod
scale = 0.25 + (0.03125 * time), 0.25 + (0.03125 * time)
trans = addalpha
alpha = 256 - (32 * time), 256

[State 8110, End]
type = removeexplod
trigger1 = time >= 8

[State 8110, End]
type = destroyself
trigger1 = !numexplod


;====================<POWER CHARGE>====================
;--- MAIN FX ---
[Statedef 7240]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
velset = 0, 0

[State 7240, Bind]
type = bindtoroot
trigger1 = root, stateno = 740
trigger1 = root, anim = 740
pos = -8, 0

[State 7240, Snd]
type = playsnd
trigger1 = !time
value = 7, 4
channel = 0

[State 7240, Snd]
type = playsnd
trigger1 = 1
value = 7, 7
channel = 1
lowpriority = 1
volumescale = ifelse(time < 180, (time * 0.277), 50)

[State 7240, Aura]
type = explod
trigger1 = !numexplod(7240)
ID = 7240
anim = 7240
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 7240, Dust]
type = explod
trigger1 = !(time % 6)
anim = 7105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 7240, FX]
type = modifyexplod
trigger1 = numexplod(7240)
trigger1 = root, time <= 60
ID = 7240
scale = 0.5, 0.125

[State 7240, FX]
type = modifyexplod
trigger1 = numexplod(7240)
trigger1 = root, time = [61, 119]
ID = 7240
scale = 0.5, 0.1 + ((root, time - 60) * 0.00625)

[State 7240, FX]
type = modifyexplod
trigger1 = numexplod(7240)
trigger1 = root, time >= 120
ID = 7240
scale = 0.5, 0.5

[State 7240, End]
type = stopsnd
trigger1 = root, stateno != 740
trigger2 = root, movetype = H
channel = 0
[State 7240, End]
type = stopsnd
trigger1 = root, stateno != 740
trigger2 = root, movetype = H
channel = 1

[State 7240, End]
type = removeexplod
trigger1 = root, stateno != 740
trigger2 = root, movetype = H

[State 7240, End]
type = destroyself
trigger1 = root, stateno != 740
trigger2 = root, movetype = H


;--- Particles ---
[Statedef 7241]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
velset = 0, 0

[State 7241, Bind]
type = bindtoroot
trigger1 = !(time % 8)
pos = ceil(-160 + (random / 3.125)), ceil(160 - (random / 3.125))

[State 7241, Particle]
type = explod
trigger1 = (time % 8) = 1
anim = 7241
sprpriority = ifelse(random < 750, 5, -1)
postype = p1
vel = ((rootdist x -12) / 32.0), ((rootdist y -48) / 32.0)
scale = ifelse(random < 500, 0.5, -0.5), ifelse(random < 500, 0.5, -0.5)
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 7241, End]
type = removeexplod
trigger1 = root, stateno != 740
[State 7241, End]
type = destroyself
trigger1 = root, stateno != 740


;====================<ZERO COUNTER PAUSE>====================
[Statedef 7250]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
velset = 0, 0

[State 7250, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 1
color = 16 * time
mul = 16 * time, 16 * time, 16 * time

[State 7250, Circle]
type = explod
trigger1 = !time
anim = 7250
ID = 1
sprpriority = 3
postype = p1
removetime = 16
supermovetime = -1
ownpal = 1

[State 7250, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = (0.0625 * time), (0.0625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 7250, Lightning]
type = explod
trigger1 = !time
anim = 7251
ID = 2
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
supermovetime = -1
ownpal = 1

[State 7250, End]
type = destroyself
trigger1 = time >= 16


;========================<DARK FORCE PAUSE=============================
[Statedef 7270]
type = A
physics = N
movetype = I
anim = 7270
ctrl = 0
velset = 0, 0
sprpriority = 5

[State 7270, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7270, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 7270, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 7270, Scale]
type = angledraw
trigger1 = time < 8
scale = (0.0625 * time), (0.0625 * time)
[State 7270, Scale]
type = angledraw
trigger1 = time >= 8
scale = 0.5, 0.5
[State 7270, Trans]
type = trans
trigger1 = time < 16
trans = addalpha
alpha = 256, 256
[State 7270, Trans]
type = trans
trigger1 = time >= 16
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256

[State 7270, Lines]
type = explod
trigger1 = !time
anim = 7271
ID = 1
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
removetime = 16
supermovetime = -1

[State 7270, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 2 -(0.125 * time), 2 -(0.125 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 7270, Circle]
type = explod
trigger1 = time = 16
anim = 7272
ID = 2
sprpriority = 5
postype = p1
removetime = 32
supermovetime = -1

[State 7270, Bat]
type = explod
trigger1 = !time
anim = 7273
ID = 3
sprpriority = -5
postype = left
pos = 160, 120
bindtime = -1
ownpal = 1

[State 7270, Bat]
type = modifyexplod
trigger1 = time < 10
ID = 3
scale = 5 -(0.4 * time), 5 -(0.4 * time)

[State 7270, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = (0.1 * (time -16)), (0.1 * (time -16))
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256

[State 7270, Safety]
type = removeexplod
trigger1 = time >= 26
[State 7270, End]
type = destroyself
trigger1 = time >= 26


;========================<SUPERPAUSE FX>=============================
;----- Level 1 -----
[Statedef 7500]
type = A
velset = 0, 0
anim = 7500
sprpriority = 5

[State 7500, Bind]
type = varset
trigger1 = !time
fvar(24) = -rootdist x

[State 7500, Bind]
type = varset
trigger1 = !time
fvar(25) = -rootdist y

[State 7500, Bind]
type = bindtoroot
trigger1 = 1
pos = fvar(24), fvar(25)

[State 7500, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7500, BG PalFX]
type = bgpalfx
trigger1 = time < 39
time = 1
color = 0
mul = 0, 0, 256

[State 7500, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 7500, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 7500, Scale]
type = angledraw
trigger1 = 1
scale = (0.0177 * time) * (0.0177 * time), (0.0177 * time) * (0.0177 * time)

[State 7500, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 7500, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 7501
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
bindtime = -1
removetime = 16
supermovetime = -1

[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 7500, Circle]
type = explod
trigger1 = time = 24
anim = 7502
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
bindtime = -1
removetime = 32
supermovetime = -1

[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 7500, Safety]
type = removeexplod
trigger1 = time >= 40
[State 7500, End]
type = destroyself
trigger1 = time >= 40


;----- Level 2 -----
[Statedef 7510]
type = A
velset = 0, 0
anim = 7510
sprpriority = 5

[State 7510, Bind]
type = varset
trigger1 = !time
fvar(24) = -rootdist x

[State 7510, Bind]
type = varset
trigger1 = !time
fvar(25) = -rootdist y

[State 7510, Bind]
type = bindtoroot
trigger1 = 1
pos = fvar(24), fvar(25)

[State 7510, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7510, BG PalFX]
type = bgpalfx
trigger1 = time < 39
time = 1
color = 0
mul = 192, 0, 256

[State 7510, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 7510, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 7510, Scale]
type = angledraw
trigger1 = 1
scale = (0.0177 * time) * (0.0177 * time), (0.0177 * time) * (0.0177 * time)

[State 7510, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 7510, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 7511
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
bindtime = -1
removetime = 16
supermovetime = -1

[State 7510, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256
[State 7510, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256
[State 7510, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256
[State 7510, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 7510, Circle]
type = explod
trigger1 = time = 24
anim = 7512
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
bindtime = -1
removetime = 32
supermovetime = -1

[State 7510, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 7510, Safety]
type = removeexplod
trigger1 = time >= 40
[State 7510, End]
type = destroyself
trigger1 = time >= 40


;----- Level 3 -----
[Statedef 7520]
type = A
velset = 0, 0
anim = 7520
sprpriority = 5

[State 7520, Bind]
type = varset
trigger1 = !time
fvar(24) = -rootdist x

[State 7520, Bind]
type = varset
trigger1 = !time
fvar(25) = -rootdist y

[State 7520, Bind]
type = bindtoroot
trigger1 = 1
pos = fvar(24), fvar(25)

[State 7520, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7520, Assert]
type = assertspecial
trigger1 = time < 40
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 7520, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 7520, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 7520, Scale]
type = angledraw
trigger1 = 1
scale = (0.0177 * time) * (0.0177 * time), (0.0177 * time) * (0.0177 * time)

[State 7520, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 7520, Portrait]
type = explod
trigger1 = !time
anim = 7525
ID = 20
sprpriority = -16
postype = back
bindtime = -1
removetime = 40
supermovetime = -1
[State 7520, Portrait]
type = explod
trigger1 = !time
anim = 7525
ID = 21
sprpriority = -16
postype = back
bindtime = -1
removetime = 40
supermovetime = -1

[State 7520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && time < 16
ID = 20
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 1 - (0.03125 * time), 1 - (0.03125 * time)
trans = addalpha
alpha = (8 * time), 256
[State 7520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && time < 16
ID = 21
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 2 - (0.09375 * time), 2 - (0.09375 * time)
trans = addalpha
alpha = (8 * time), 256

[State 7520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && (time = [16, 32])
ID = 20
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 256
[State 7520, Scale]
type = removeexplod
trigger1 = numexplod(21) && time >= 16
ID = 21

[State 7520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && time >= 32
ID = 20
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 0.5, 0.5
trans = addalpha
alpha = 128 - 16 * (time -32), 256

[State 7520, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 7521
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
bindtime = -1
removetime = 16
supermovetime = -1

[State 7520, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256
[State 7520, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256
[State 7520, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256
[State 7520, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 7520, Circle]
type = explod
trigger1 = time = 24
anim = 7522
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
bindtime = -1
removetime = 32
supermovetime = -1

[State 7520, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 7520, Safety]
type = removeexplod
trigger1 = time >= 40
[State 7520, End]
type = destroyself
trigger1 = time >= 40


;========================<SUPER FINISH>=============================
[Statedef 8600]
type = A
velset = 0, 0
anim = 9999

[State 8600, Sound]
type = playsnd
trigger1 = !time
value = 7, 5
channel = 1

[State 8600, Snd]
type = sndpan
trigger1 = time <= 80
channel = 1
abspan = ceil(sin(gametime / 20.0 * pi) * 160)

[State 8600, Snd]
type = assertspecial
trigger1 = time <= 80
flag = nomusic

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time < 16
trigger1 = !(time % 2)
time = 1
color = 0

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time < 16
trigger1 = (time % 2)
time = 1
color = 0
mul = 128, 32, 0

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time = [16, 24]
time = 1
color = 32 * (time -16)
mul = 128 + 8 * (time - 16), 32 + 14 * (time - 16), 32 * (time - 16)

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, var(23) = 900
var(0) = 1
[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, var(23) = 2000
var(0) = 2
[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, var(23) = 3500
var(0) = 3
[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, var(23) = 3200
var(0) = 4
[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, var(23) = 3400
var(0) = 5

[State 8600, MvC]
type = explod
trigger1 = !time
anim = 8600
ID = 8600
ontop = 1
postype = left
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 32
pausemovetime = -1
supermovetime = -1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(8600)
ID = 8600
trans = addalpha
alpha = ifelse(time < 16, 256, 256 -32 * (time -16)), 256

[State 8600, Text]
type = explod
trigger1 = !time
trigger1 = var(0)
anim = 8609 + var(0)
ID = 10
ontop = 1
postype = left
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 32
pausemovetime = -1
supermovetime = -1
[State 8600, Text]
type = explod
trigger1 = !time
trigger1 = var(0)
anim = 8609 + var(0)
ID = 11
ontop = 1
postype = left
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 8
pausemovetime = -1
supermovetime = -1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
trans = addalpha
alpha = ifelse(time < 16, 256, 256 -32 * (time -16)), ifelse(time < 16, 0, 32 * (time -16))
[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(11)
ID = 11
scale = 0.5 + (0.0625 * time), (0.5 + (0.0625 * time)) * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = 256 - (32 * time), 32 * time

[State 8600, Stop Shake]
type = envshake
trigger1 = time <= 24
time = 1
ampl = 0

[State 8600, Assert]
type = assertspecial
trigger1 = time < 16
flag = noFG
[State 8600, Assert]
type = assertspecial
trigger1 = time < 24
flag = nobardisplay

[State 8600, End]
type = removeexplod
trigger1 = time >= 24
trigger2 = roundstate < 3
[State 8600, End]
type = destroyself
trigger1 = roundstate < 3


;========================<LIN-LIN>=============================
;--- WIN 3 ---
[Statedef 6010]
type = A
physics = N
anim = 6000
sprpriority = -1

[State 6010, Vel]
type = velset
trigger1 = !time
trigger1 = anim = 6000
x = 3
y = -12
[State 6010, Accel]
type = veladd
trigger1 = anim = 6000
y = 0.75

[State 6010, Anim]
type = changeanim
trigger1 = anim = 6000 && animelemtime(8) < 0 && vel y > 0 && pos y >= -70
value = 6000
elem = 8
[State 6010, Snd]
type = playsnd
trigger1 = anim = 6000 && animelemtime(8) = 5
value = 5, 9

[State 6010, Flash]
type = explod
trigger1 = anim = 6000 && animelemtime(8) = 5
anim = 6005
ID = 6005
ontop = 1
postype = p1
pos = 0, 0
scale = 0.5, 0.5
removetime = -2
ownpal = 1

[State 6010, Anim]
type = changeanim
trigger1 = anim = 6000 && animelemtime(8) >= 10
value = 6010
[State 6010, Pos]
type = posset
trigger1 = anim = 6010
y = 0
[State 6010, Vel]
type = velset
trigger1 = anim = 6000 && animelemtime(8) >= 0
trigger2 = anim = 6010
x = 0
y = 0
[State 6010, Type]
type = statetypeset
trigger1 = anim = 6010
type = S
physics = S

[State 6010, Snd]
type = playsnd
trigger1 = anim = 6010 && animelem = 9
value = 6, 1

[State 6010, Shadows]
type = afterimage
trigger1 = !time
time = 999
timegap = 1
framegap = 1
length = 8
palcolor = 0
palbright = 0, 0, 0
palcontrast = 256, 256, 0
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.5, 0.5, 0.5
trans = add

[State 6010, Shadows]
type = afterimagetime
trigger1 = anim = 6010
persistent = 0
time = 0


;--- INTRO 2 ---
[Statedef 6015]
type = A
physics = N
anim = 6015
sprpriority = -1

[State 6015, Snd]
type = playsnd
trigger1 = anim = 6015 && animelem = 2
value = 6, 2
channel = 0

[State 6015, Vel]
type = velset
trigger1 = anim = 6001
x = 1.7
y = -12
persistent = 0
[State 6015, Pos]
type = posadd
trigger1 = anim = 6015 && !animtime
y = -65
[State 6015, Accel]
type = veladd
trigger1 = anim = 6001
y = 0.75

[State 6015, Anim]
type = changeanim
trigger1 = anim = 6015 && !animtime
value = 6001

[State 6015, Snd]
type = playsnd
trigger1 = anim = 6015 && animelem = 6
value = 5, 9

[State 6015, Flash]
type = explod
trigger1 = anim = 6015 && animelem = 6
anim = 6005
ID = 6005
ontop = 1
postype = p1
pos = 0, -64
scale = 0.5, 0.5
removetime = -2
ownpal = 1

[State 6015, Shadows]
type = afterimage
trigger1 = anim = 6001
persistent = 0
time = 999
timegap = 1
framegap = 1
length = 8
palcolor = 0
palbright = 0, 0, 0
palcontrast = 256, 256, 0
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.5, 0.5, 0.5
trans = add

[State 6015, spr]
type = sprpriority
trigger1 = anim = 6001
value = 1
ignorehitpause = 1

[State 6015, End]
type = destroyself
trigger1 = anim = 6001 && time >= 109


;--- INTRO 3 ---
[Statedef 6027]
type = A
physics = N
anim = 6027
velset = 0, 0
sprpriority = -1

[State 6027, Snd]
type = playsnd
trigger1 = anim = 6027 && animelem = 2
value = 6, 0

[State 6027, Vel]
type = velset
trigger1 = anim = 6001
x = 1.2
y = -12
persistent = 0

[State 6027, Pos]
type = posadd
trigger1 = anim = 6027 && !animtime
y = -65

[State 6027, Accel]
type = veladd
trigger1 = anim = 6001
y = 0.75

[State 6027, Anim]
type = changeanim
trigger1 = anim = 6027 && !animtime
value = 6001

[State 6027, Snd]
type = playsnd
trigger1 = anim = 6027 && animelem = 6
value = 5, 9

[State 6027, Flash]
type = explod
trigger1 = anim = 6027 && animelem = 6
anim = 6005
ID = 6005
ontop = 1
postype = p1
pos = 0, -64
scale = 0.5, 0.5
removetime = -2
ownpal = 1

[State 6027, Shadows]
type = afterimage
trigger1 = anim = 6001
persistent = 0
time = 999
timegap = 1
framegap = 1
length = 8
palcolor = 0
palbright = 0, 0, 0
palcontrast = 256, 256, 0
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.5, 0.5, 0.5
trans = add

[State 6027, spr]
type = sprpriority
trigger1 = anim = 6001
value = 1
ignorehitpause = 1

[State 6027, End]
type = destroyself
trigger1 = root, stateno = 193
trigger1 = root, animelemtime(5) >= 0
trigger2 = root, stateno != 193


;--- Dark Force Start ---
[Statedef 6040]
type = S
physics = N
anim = 6040
sprpriority = 2

[State 6040, Accel]
type = veladd
trigger1 = time > 0
trigger1 = animelemtime(7) < 0
y = 0.75

[State 6040, Vel]
type = velset
trigger1 = time = 1
x = ifelse(pos x > 0, -2.75, 2.75) * facing
y = -11

[State 6040, Snd]
type = playsnd
trigger1 = animelem = 7
value = 5, 9

[State 6040, Flash]
type = explod
trigger1 = animelem = 7
anim = 6005
ID = 6005
ontop = 1
postype = p1
pos = 0, 0
scale = 0.5, 0.5
removetime = -2
ownpal = 1

[State 6040, Vel]
type = velset
trigger1 = animelemtime(7) >= 0
x = 0
y = 0

[State 6040, Pos]
type = posset
trigger1 = animelem = 7
y = -64

[State 6040, Pos]
type = posset
trigger1 = animelemtime(8) >= 0
y = 0

[State 6044, Offset]
type = offset
trigger1 = animelemtime(8) >= 0
y = -8

[State 6040, Shadows]
type = afterimage
trigger1 = !time
time = 999
timegap = 1
framegap = 1
length = 8
palcolor = 0
palbright = 0, 0, 0
palcontrast = 256, 256, 0
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.5, 0.5, 0.5
trans = add

[State 6040, Shadows]
type = afterimagetime
trigger1 = animelem = 8
time = 0

[State 6040, Turn]
type = turn
trigger1 = animelem = 8
trigger1 = rootdist x < 0

[State 6040, Spr]
type = sprpriority
trigger1 = animelem = 4
value = -4

[State 6040, Anim]
type = changestate
trigger1 = !animtime
value = 6041


;--- Dark Force Active ---
[Statedef 6041]
type = S
physics = N
anim = 6041
velset = 0, 0
sprpriority = -4

[State 6041, Anim Var]
type = varset
trigger1 = !time
var(0) = 0
[State 6041, Anim Var]
type = varset
trigger1 = !time
var(1) = 0

[State 6041, Anim Var]
type = varset
trigger1 = root, stateno = [4010, 4012]
trigger1 = root, prevstateno != 4240
trigger1 = var(0) := 1
trigger2 = root, stateno = 4020
trigger2 = var(0) := 2
trigger3 = root, stateno = 4040
trigger3 = var(0) := 3
trigger4 = root, stateno = [4200, 4225]
trigger4 = var(0) := 4
trigger5 = root, stateno = 4240
trigger5 = var(0) := 5
trigger6 = root, stateno = 4260
trigger6 = var(0) := 6
var(0) = var(0)

[State 6041, Anim Cycle]
type = changeanim
trigger1 = !animtime
trigger1 = root, time = 1
trigger1 = var(1) != var(0)
trigger1 = 1 || var(1) := var(0)
value = ifelse(anim = 6041, 6042, ifelse(anim = 6042, 6043, 6041))

[State 6041, Turn]
type = turn
trigger1 = animelem = 1
trigger1 = rootdist x < 0

[State 6041, Offset]
type = offset
trigger1 = 1
y = -8

[State 6041, Snd]
type = playsnd
trigger1 = !time
value = 6, 2
channel = 0

[State 6041, End]
type = changestate
trigger1 = root, stateno = 4510
value = 6044

[State 6041, KO]
type = changestate
trigger1 = !(root, alive)
trigger2 = !(root, var(20))
value = 6045


;--- Dark Force Ends ---
[Statedef 6044]
type = S
physics = N
anim = 6044
velset = 0, 0
sprpriority = -4

[State 6044, Snd]
type = playsnd
trigger1 = animelem = 6
value = 5, 9

[State 6044, Flash]
type = explod
trigger1 = animelem = 6
anim = 6005
ID = 6005
ontop = 1
postype = p1
pos = 0, -64
scale = 0.5, 0.5
removetime = -2
ownpal = 1

[State 6044, Pos]
type = posset
trigger1 = animelem = 10
y = -64

[State 6044, Pos]
type = velset
trigger1 = animelemtime(11) >= 0
x = -5
y = -1

[State 6044, Pos]
type = velset
trigger1 = rootdist y >= 80
y = 0

[State 6044, Pos]
type = offset
trigger1 = animelemtime(11) >= 0
y = ceil(4 * sin((time / 8.0 ) * pi))

[State 6044, Shadows]
type = afterimage
trigger1 = animelem = 10
time = 999
timegap = 1
framegap = 1
length = 8
palcolor = 0
palbright = 0, 0, 0
palcontrast = 256, 256, 0
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.5, 0.5, 0.5
trans = add

[State 6044, Turn]
type = turn
trigger1 = rootdist x < 0
trigger1 = !time

[State 6044, Turn]
type = turn
trigger1 = rootdist x >= 0
trigger1 = animelem = 10

[State 6044, Anim]
type = destroyself
trigger1 = rootdist x >= 0
trigger1 = animelemtime(11) >= 0


;--- Dark Force Interrupted ---
[Statedef 6045]
type = S
physics = N
velset = 0, 0
sprpriority = -4

[State 6045, Pos]
type = offset
trigger1 = 1
y = -8

[State 6045, Fadeout]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - (8 * time), (8 * time)

[State 6045, Anim]
type = destroyself
trigger1 = time >= 32


;========================<CAMERA CONTROL>=============================
[Statedef 7650]
physics = N
velset = 0, 0
anim = 9999

[State 7650, Bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[State 7650, End]
type = destroyself
trigger1 = roundstate = 2
