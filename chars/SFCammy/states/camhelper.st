; ________________________________
;| Cammy by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<HELPER STATES>========================================
;==============================================================================================

;========================<EX DRILL FX>=============================
[Statedef 1025]
type = A
physics = N
movetype = I
anim = 1025
velset = 0, 0
sprpriority = 3

[State 1025, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1025, Bind]
type = bindtoroot
trigger1 = 1
pos = (96 * root, const(size.xscale)), -14
facing = 1
[State 1025, Bind]
type = bindtoroot
trigger1 = root, stateno = 1620
pos = (85 * root, const(size.xscale)), -62
facing = 1

[State 1025, Flames]
type = explod
trigger1 = 1
anim = 8150
sprpriority = 1
postype = p1
pos = -32, 0
random = 32, 16
;random = 64, 32
vel = -(random / 250.0), 2 -(random / 250.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1

[State 1025, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = root, stateno != 1020 && root, stateno != 1060 && root, stateno != 1620 && root, stateno != 3050
trigger3 = root, stateno = 1020 && root, animelemtime(4) < 0
trigger4 = root, stateno = 1060 && root, animelemtime(3) < 0
trigger5 = root, stateno = 1620 && root, animelemtime(6) < 0
trigger6 = root, stateno = 3050 && root, animelemtime(7) < 0


;========================<EX SPIKE FX>=============================
[Statedef 1125]
type = A
physics = N
movetype = I
anim = 1125
velset = 0, 0
sprpriority = 3

[State 1125, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1125, Bind]
type = bindtoroot
trigger1 = 1
pos = 0, 0
facing = 1

[State 1125, Anim]
type = changeanim
trigger1 = root, stateno = 1120
trigger1 = root, animelemtime(5) >= 0 && root, animelemtime(6) < 1
trigger2 = root, stateno = 3051
trigger2 = root, animelemtime(8) >= 0 && root, animelemtime(9) < 1
value = 1125
elem = 1
[State 1125, Anim]
type = changeanim
trigger1 = root, stateno = 1120 && !(root, Hitpausetime)
trigger1 = animelemtime(2) < 0 && root, animelemtime(6) >= 0
trigger2 = root, stateno = 3051 && !(root, Hitpausetime)
trigger2 = animelemtime(2) < 0 && root, animelemtime(9) >= 0
value = 1125
elem = 2

[State 1125, Flames]
type = explod
trigger1 = animelemtime(2) >= 0
anim = 8150
sprpriority = 1
postype = p1
pos = 36, -90
random = 4, 24
;random = 48, 48
vel = -(random / 250.0), (random / 250.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1

[State 1125, End]
type = changestate
trigger1 = root, stateno = [1121, 1122]
trigger2 = root, stateno = [3052, 3053]
value = 1126
[State 1125, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = root, stateno != 1120 && root, stateno != 3051
trigger3 = root, stateno = 1120 && root, animelemtime(5) < 0
trigger5 = root, stateno = 3051 && root, animelemtime(8) < 0


;--- Over ---
[Statedef 1126]
type = A
physics = N
movetype = I
anim = 1126
velset = 0, 0
sprpriority = 3

[State 1126, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1126, Bind]
type = bindtoroot
trigger1 = 1
pos = 0, 0
facing = 1

[State 1126, Anim]
type = changeanim
trigger1 = root, animelemtime(2) < 0
value = 1126
elem = 1
[State 1126, Anim]
type = changeanim
trigger1 = root, animelemtime(2) >= 0 && root, animelemtime(3) < 0
value = 1126
elem = 2
[State 1126, Anim]
type = changeanim
trigger1 = animelemtime(3) < 0
trigger1 = root, animelemtime(3) >= 0
value = 1126
elem = 3

[State 1126, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = (root, stateno != [1121, 1122]) && (root, stateno != [3052, 3053])
trigger3 = !animtime


;========================<EX KNUCKLE FX>=============================
[Statedef 1225]
type = A
physics = N
movetype = I
anim = 1225
velset = 0, 0
sprpriority = 3

[State 1225, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1225, Bind]
type = bindtoroot
trigger1 = 1
pos = 0, 0
facing = 1

[State 1225, Anim]
type = changeanim
trigger1 = root, stateno = 1221 && !(root, Hitpausetime)
trigger1 = root, animelemtime(2) >= 0 && root, animelemtime(2) < 1
value = 1225
elem = 1
[State 1225, Anim]
type = changeanim
trigger1 = root, stateno = 1221 && !(root, Hitpausetime)
trigger1 = root, animelemtime(2) >= 1 && root, animelemtime(3) < 0
value = 1225
elem = 2
[State 1225, Anim]
type = changeanim
trigger1 = root, stateno = 1221 && !(root, Hitpausetime)
trigger1 = root, animelemtime(3) >= 0 && root, animelemtime(4) < 0
value = 1225
elem = 3
[State 1225, Anim]
type = changeanim
trigger1 = root, stateno = 1221 && !(root, Hitpausetime)
trigger1 = root, animelemtime(4) >= 0 && root, animelemtime(4) < 1
value = 1225
elem = 4
[State 1225, Anim]
type = changeanim
trigger1 = root, stateno = 1221 && !(root, Hitpausetime)
trigger1 = root, animelemtime(4) >= 1 && root, animelemtime(5) < 0
value = 1225
elem = 5
[State 1225, Anim]
type = changeanim
trigger1 = root, stateno = 1221 && !(root, Hitpausetime)
trigger1 = root, animelemtime(5) >= 0 && root, animelemtime(5) < 1
value = 1225
elem = 6
[State 1225, Anim]
type = changeanim
trigger1 = root, stateno = 1221 && !(root, Hitpausetime)
trigger1 = root, animelemtime(5) >= 1 && root, animelemtime(6) < 0
value = 1225
elem = 7
[State 1225, Anim]
type = changeanim
trigger1 = root, stateno = 1221 && !(root, Hitpausetime)
trigger1 = root, animelemtime(6) >= 0 && root, animelemtime(7) < 0
value = 1225
elem = 8
[State 1225, Anim]
type = changeanim
trigger1 = root, stateno = 1221 && !(root, Hitpausetime)
trigger1 = root, animelemtime(7) >= 0 && root, animelemtime(8) < 0
value = 1225
elem = 9
[State 1225, Anim]
type = changeanim
trigger1 = root, stateno = 1221 && !(root, Hitpausetime)
trigger1 = root, animelemtime(8) >= 0 && root, animelemtime(9) < 0
value = 1225
elem = 10

[State 1225, Anim]
type = changeanim
trigger1 = 1
value = 1225
elem = animelemno(0)

[State 1225, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = root, stateno != 1221
trigger3 = root, stateno = 1221 && (root, animelemtime(2) < 0 || root, animelemtime(9) >= 0)


;========================<EX STRIKE FX>=============================
[Statedef 1425]
type = A
physics = N
movetype = I
anim = 1425
velset = 0, 0
sprpriority = 3

[State 1425, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1425, Bind]
type = bindtoroot
trigger1 = 1
pos = 0, 0
facing = 1

[State 1425, Anim]
type = changeanim
trigger1 = root, stateno = 1420
trigger1 = root, animelemtime(3) >= 0 && root, animelemtime(4) < 1
value = 1425
elem = 1
[State 1425, Anim]
type = changeanim
trigger1 = root, stateno = 1420
trigger1 = animelemtime(2) < 0 && root, animelemtime(4) >= 0
value = 1425
elem = 2

[State 1425, Flames]
type = explod
trigger1 = animelemtime(2) >= 0
anim = 8150
sprpriority = 1
postype = p1
pos = 20, -8
random = 24, 24
;random = 48, 48
vel = -(random / 250.0), -(random / 250.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1

[State 1425, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = root, stateno != 1420
trigger3 = root, stateno = 1420 && root, animelemtime(3) < 0


;========================<MAX REVERSE SHAFT BREAKER FX>=============================
[Statedef 3155]
type = A
physics = N
movetype = I
anim = 1025
velset = 0, 0
sprpriority = 3

[State 3155, Angle]
type = angleset
trigger1 = 1
value = 90
[State 3155, Angle]
type = angledraw
trigger1 = 1

[State 3155, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 3155, Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -126
facing = 1

[State 3155, Flames]
type = explod
trigger1 = 1
anim = 8150
sprpriority = 1
postype = p1
pos = 0, 32
random = 16, 32
;random = 32, 64
vel = 2 -(random / 250.0), (random / 250.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1

[State 3155, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = root, stateno != 3151
trigger3 = root, stateno = 3151 && root, animelemtime(4) < 0


;========================<COAT>=============================
[Statedef 6000]
type = A
physics = N
movetype = I
anim = 6000
velset = 0, 0
sprpriority = 1

[State 6000, Accel]
type = veladd
trigger1 = time
y = 0.25
[State 6000, Vel]
type = velset
trigger1 = !time
x = -3
y = -5

[State 6000, Fade]
type = trans
trigger1 = time >= 16
trans = addalpha
alpha = 256 -(16 * (time -16)), 16 * (time -16)

[State 6000, End]
type = destroyself
trigger1 = time >= 32


;========================<VEGA FX>=============================
;--- Psycho Crusher ---
[Statedef 6105]
type = A
physics = N
movetype = I
anim = 6105
velset = 0, 0
sprpriority = -1

[State 6105, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 6105, Bind]
type = bindtoparent
trigger1 = playerIDexist(parent, ID)
pos = 0, 0
facing = 1

[State 6105, Anim]
type = changeanim
trigger1 = parent, stateno = 6100 || parent, stateno = 6110
trigger1 = parent, animelemtime(3) >= 0 && parent, animelemtime(4) < 0
value = 6105
elem = 1
[State 6105, Anim]
type = changeanim
trigger1 = parent, stateno = 6100 || parent, stateno = 6110
trigger1 = parent, animelemtime(4) >= 0 && parent, animelemtime(5) < 0
value = 6105
elem = 2
[State 6105, Anim]
type = changeanim
triggerall = animelemtime(3) < 0
trigger1 = parent, stateno = 6100 || parent, stateno = 6110
trigger1 = parent, animelemtime(5) >= 0
trigger2 = parent, stateno = 6101 || parent, stateno = 6111
value = 6105
elem = 3

[State 6105, Flames]
type = explod
trigger1 = animelemtime(3) >= 0
anim = 8151
sprpriority = -1
postype = p1
pos = 0, -60
random = 32, 24
;random = 64, 48
vel = -(random / 250.0), 2 -(random / 250.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1

[State 6105, End]
type = destroyself
trigger1 = !playerIDexist(parent, ID)
trigger2 = parent, movetype = H
trigger3 = (parent, stateno != [6100, 6103]) && (parent, stateno != [6110, 6113])
trigger4 = parent, stateno = 6100 && parent, animelemtime(3) < 0
trigger5 = parent, stateno = 6110 && parent, animelemtime(3) < 0


;--- Warp FX In ---
[Statedef 6108]
type = A
physics = N
movetype = I
anim = 9999
sprpriority = -3

[State 6108, End]
type = destroyself
trigger1 = time >= 10 || !numhelper(6100)

[State 6108, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 6108, Spr]
type = sprpriority
trigger1 = !time
value = ifelse(ishelper(6109), -3, -1)

[State 6108, Anim]
type = varset
trigger1 = !time
trigger1 = numhelper(6100)
var(1) = helper(6100), anim
[State 6108, Anim]
type = varset
trigger1 = !time
trigger1 = numhelper(6100)
var(2) = helper(6100), animelemno(0)
[State 6108, Anim]
type = changeanim
trigger1 = 1
value = var(1)
elem = var(2)

[State 6108, Pos]
type = posadd
trigger1 = !time
x = ceil(ifelse(ishelper(6109), 90, -90) * const(size.xscale))

[State 6108, Vel]
type = velset
trigger1 = 1
x = ifelse(ishelper(6109), -9, 9) * const(size.xscale)

[State 6108, Fade]
type = trans
trigger1 = 1
trans = addalpha
alpha = (25 * time), (256 - 25 * time)


;--- Warp FX Out ---
[Statedef 6109]
type = A
physics = N
movetype = I
anim = 9999
sprpriority = -3

[State 6109, End]
type = destroyself
trigger1 = time >= 10 || !numhelper(6100)

[State 6109, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 6109, Spr]
type = sprpriority
trigger1 = !time
value = ifelse(ishelper(6109), -3, -1)

[State 6109, Anim]
type = varset
trigger1 = !time
trigger1 = numhelper(6100)
var(1) = helper(6100), anim
[State 6109, Anim]
type = varset
trigger1 = !time
trigger1 = numhelper(6100)
var(2) = helper(6100), animelemno(0)
[State 6109, Anim]
type = changeanim
trigger1 = 1
value = var(1)
elem = var(2)

[State 6109, Vel]
type = velset
trigger1 = 1
x = ifelse(ishelper(6109), 9, -9) * const(size.xscale)

[State 6109, Fade]
type = trans
trigger1 = 1
trans = addalpha
alpha = (256 - 25 * time), (25 * time)


;========================<PSYCHO STREAK>=============================
;--- Warp in ---
[Statedef 6100]
type = S
physics = N
movetype = A
ctrl = 0
anim = 6100
velset = 0, 0
sprpriority = -2

[State 6100, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 6100, NumHit]
type = varset
trigger1 = !time
var(1) = 0

[State 6100, Trans]
type = trans
trigger1 = time <= 10
trigger1 = animelemtime(2) < 0
trans = addalpha
alpha = (25 * time), (256 - 25 * time)

[State 6100, Sound]
type = playsnd
trigger1 = !time
value = 8, 4
channel = 0
[State 6100, Sound]
type = playsnd
trigger1 = animelem = 5
value = 8, 2
channel = 0

[State 6100, Sound]
type = playsnd
trigger1 = !time
value = 8, 0
[State 6100, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6108
ID = 6108
name = "Warp FX"
postype = p1
pausemovetime = 255
supermovetime = 255
[State 6100, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6108
ID = 6109
name = "Warp FX"
postype = p1
pausemovetime = 255
supermovetime = 255

[State 6100, Sound]
type = playsnd
trigger1 = animelem = 5
value = 8, 1
[State 6100, FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 6105
ID = 6105
name = "Psycho Crusher FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 6100, End]
type = changestate
trigger1 = root, movetype = H
trigger1 = animelemtime(3) > 0
trigger1 = animelemtime(5) < 0
value = 6122

[State 6100, End]
type = changestate
trigger1 = !animtime
value = 6101


;--- Psycho Crusher ---
[Statedef 6101]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = -2
hitcountpersist = 1

[State 6101, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 6102
ignorehitpause = 1
[State 6101, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
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

[State 6101, Anim]
type = changeanim
trigger1 = anim != 6101
value = 6101

[State 6101, Vel]
type = velset
trigger1 = 1
x = 9
y = 0

[State 6101, Hit]
type = hitdef
trigger1 = (root, var(15) < (1 + hitcount))
attr = A, HA
hitflag = MAFP
guardflag = M
priority = 4, Hit
damage = 60, 15
dizzypoints = 0
guardpoints = -ceil(root, fvar(10) * 20)
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 60
ground.velocity = -13.3, -3.66
ground.cornerpush.veloff = 0
guard.velocity = -5.41
guard.cornerpush.veloff = 0
air.velocity = -13.3, -3.66
air.cornerpush.veloff = 0
guard.dist = const(size.proj.attack.dist)
yaccel = 0.46
fall = 1
fall.recover = 0
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1
hitsound = -1
guardsound = -1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -60
palfx.time = 33
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180
p1sprpriority = -2
p2sprpriority = -3
ID = 6101

[State 6101, Burned]
type = targetstate
trigger1 = movehit
trigger1 = numtarget(6101)
trigger1 = target, selfanimexist(7697)
trigger1 = (target(6101), stateno = 5000) || (target(6101), stateno = 5010) || (target(6101), stateno = 5020)
value = 7697
ID = 6101
ignorehitpause = 1

[State 6101, End]
type = changestate
trigger1 = movecontact
value = 6102
ignorehitpause = 1
[State 6101, End]
type = destroyself
trigger1 = frontedgedist < -100 || backedgedist < -100


;--- Hitpause ---
[Statedef 6102]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = -2
movehitpersist = 1
hitcountpersist = 1

[State 6102, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 6102, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = ifelse((movehit && numtarget), 2, 3), ifelse((movehit && numtarget), 2, 0)
channel = 2
ignorehitpause = 1

[State 6102, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 3, 0
channel = 2
volumescale = 50

[State 6102, Flame Particles]
type = helper
trigger1 = !numhelper(8151)
trigger1 = movehit = 1 && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8151
ID = 8151
name = "Flame Particles"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 6102, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
postype = p1
pos = ifelse(p2dist x < 0, 0, ifelse(p2dist x < 100, ceil(p2dist x), 100)), -60
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 6102, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
anim = Fifelse(moveguarded, 40, 3)
ID = 8000
postype = p1
pos = ifelse(p2dist x < 0, 0, ifelse(p2dist x < 100, ceil(p2dist x), 100)), -60
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 6102, Counter FX]
type = helper
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = map(counterhit)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p1
pos = ifelse(p2dist x < 0, 0, ifelse(p2dist x < 100, ceil(p2dist x), 100)), -60
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 6102, NumHit]
type = varadd
trigger1 = !time
var(1) = 1

[State 6102, Juggle]
type = rootvaradd
trigger1 = !time
trigger1 = movecontact && numtarget
var(15) = 1

[State Damage Scaling - Update Root]
type = null
trigger1 = !var(43)
trigger1 = movecontact && numtarget
trigger1 = var(43) := 1
trigger1 = root, var(43) = 0
trigger1 = root, var(43) := 1
ignorehitpause = 1

[State 6102, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1
ignorehitpause = 1

[State 6102, ProjContact]
type = rootvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 3300
var(18) = 1
ignorehitpause = 1

[State 6102, End]
type = changestate
trigger1 = time >= ifelse(numtarget, 4, 0)
value = ifelse(var(1) < 3, 6101, 6103)


;--- Finished ---
[Statedef 6103]
type = A
physics = N
movetype = I
ctrl = 0
sprpriority = -2

[State 6103, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 6103, Anim]
type = changeanim
trigger1 = anim != 6101
value = 6101

[State 6103, Vel]
type = velset
trigger1 = 1
x = 12
y = 0

[State 6103, End]
type = destroyself
trigger1 = frontedgedist < -100 || backedgedist < -100


;========================<MAX PSYCHO STREAK>=============================
;--- Warp in ---
[Statedef 6110]
type = S
physics = N
movetype = A
ctrl = 0
anim = 6100
velset = 0, 0
sprpriority = -2

[State 6110, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 6110, NumHit]
type = varset
trigger1 = !time
var(1) = 0

[State 6110, Trans]
type = trans
trigger1 = time <= 10
trigger1 = animelemtime(2) < 0
trans = addalpha
alpha = (25 * time), (256 - 25 * time)

[State 6110, Sound]
type = playsnd
trigger1 = !time
value = 8, 4
channel = 0
[State 6110, Sound]
type = playsnd
trigger1 = animelem = 5
value = 8, 2
channel = 0

[State 6110, Sound]
type = playsnd
trigger1 = !time
value = 8, 0
[State 6110, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6108
ID = 6108
name = "Warp FX"
postype = p1
pausemovetime = 255
supermovetime = 255
[State 6110, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6108
ID = 6109
name = "Warp FX"
postype = p1
pausemovetime = 255
supermovetime = 255

[State 6110, Sound]
type = playsnd
trigger1 = animelem = 5
value = 8, 1
[State 6110, FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 6105
ID = 6105
name = "Psycho Crusher FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 6110, End]
type = changestate
trigger1 = root, movetype = H
trigger1 = animelemtime(3) > 0
trigger1 = animelemtime(5) < 0
value = 6122

[State 6110, End]
type = changestate
trigger1 = !animtime
value = 6111


;--- Psycho Crusher ---
[Statedef 6111]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = -2
hitcountpersist = 1

[State 6111, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 6112
ignorehitpause = 1
[State 6111, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
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

[State 6111, Anim]
type = changeanim
trigger1 = anim != 6101
value = 6101

[State 6111, Vel]
type = velset
trigger1 = 1
x = 9
y = 0

[State 6111, Hit]
type = hitdef
trigger1 = (root, var(15) < (2 + hitcount))
attr = A, HA
hitflag = MAFP
guardflag = M
priority = 4, Hit
damage = 55, 14
dizzypoints = 0
guardpoints = -ceil(root, fvar(10) * 18)
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 60
ground.velocity = -13.3, -3.66
ground.cornerpush.veloff = 0
guard.velocity = -5.41
guard.cornerpush.veloff = 0
air.velocity = -13.3, -3.66
air.cornerpush.veloff = 0
guard.dist = const(size.proj.attack.dist)
yaccel = 0.46
fall = 1
fall.recover = 0
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1
hitsound = -1
guardsound = -1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -60
palfx.time = 56
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180
p1sprpriority = -2
p2sprpriority = -3
ID = 6110

[State 6111, End]
type = changestate
trigger1 = movecontact
value = 6112
ignorehitpause = 1

[State 6111, End]
type = destroyself
trigger1 = frontedgedist < -100 || backedgedist < -100


;--- Hitpause ---
[Statedef 6112]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = -2
movehitpersist = 1
hitcountpersist = 1

[State 6112, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 6112, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = ifelse((movehit && numtarget), 2, 3), ifelse((movehit && numtarget), 2, 0)
channel = 2
ignorehitpause = 1

[State 6112, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 3, 0
channel = 2
volumescale = 50

[State 6112, Flame Particles]
type = helper
trigger1 = !numhelper(8151)
trigger1 = movehit = 1 && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8151
ID = 8151
name = "Flame Particles"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 6112, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
postype = p1
pos = ifelse(p2dist x < 0, 0, ifelse(p2dist x < 100, ceil(p2dist x), 100)), -60
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 6112, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
anim = Fifelse(moveguarded, 40, 3)
ID = 8000
postype = p1
pos = ifelse(p2dist x < 0, 0, ifelse(p2dist x < 100, ceil(p2dist x), 100)), -60
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 6112, Counter FX]
type = helper
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = map(counterhit)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p1
pos = ifelse(p2dist x < 0, 0, ifelse(p2dist x < 100, ceil(p2dist x), 100)), -60
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 6112, NumHit]
type = varadd
trigger1 = !time
var(1) = 1

[State 6112, Juggle]
type = rootvaradd
trigger1 = !time
trigger1 = movecontact && numtarget
var(15) = 1

[State Damage Scaling - Update Root]
type = null
trigger1 = !var(43)
trigger1 = movecontact && numtarget
trigger1 = var(43) := 1
trigger1 = root, var(43) = 0
trigger1 = root, var(43) := 1
ignorehitpause = 1

[State 6112, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1
ignorehitpause = 1

[State 6112, ProjContact]
type = rootvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 3350
var(18) = 1
ignorehitpause = 1

[State 6112, Throw only one]
type = targetdrop
trigger1 = var(1) >= 5 || (root, var(15) >= 5)
trigger1 = movehit && numtarget(6110)
trigger1 = !(target(6110), hitshakeover)
excludeID = 6110
keepone = 1
ignorehitpause = 1
[State 6112, P1 State]
type = changestate
trigger1 = var(1) >= 5 || (root, var(15) >= 5)
trigger1 = movehit && numtarget(6110)
trigger1 = !(target(6110), hitshakeover)
value = 6120
ignorehitpause = 1

[State 6112, End]
type = changestate
trigger1 = time >= ifelse(numtarget, 4, 0)
value = ifelse(var(1) < 5, 6111, 6113)


;--- Finished ---
[Statedef 6113]
type = A
physics = N
movetype = I
ctrl = 0
sprpriority = -2

[State 6113, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 6113, Anim]
type = changeanim
trigger1 = anim != 6101
value = 6101

[State 6113, Vel]
type = velset
trigger1 = 1
x = 12
y = 0

[State 6113, End]
type = destroyself
trigger1 = frontedgedist < -100 || backedgedist < -100


;--- Deadly Throw ---
[Statedef 6120]
type = S
physics = N
movetype = A
anim = 6120
ctrl = 0
velset = 0, 0
sprpriority = -2

[State 6120, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 6121

[State 6120, Turn]
type = turn
trigger1 = !time

[State 6120, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 6125
[State 6120, Throw]
type = targetfacing
trigger1 = time <= 3
value = 1

[State 6120, Width]
type = screenbound
trigger1 = animelemtime(4) < 0
value = 1
movecamera = 1, 0

[State 6120, Width]
type = width
trigger1 = animelemtime(3) < 0
edge = ceil(8 * const(size.xscale)), 0
[State 6120, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
edge = ceil(40 * const(size.xscale)), 0
[State 6120, Width]
type = width
trigger1 = animelemtime(4) >= 0
edge = ceil(125 * const(size.xscale)), 0

[State 6120, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
pos = ceil(-64 * root, const(size.xscale)), -60
[State 6120, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = ceil(-36 * root, const(size.xscale)), -108
[State 6120, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = ceil(32 * root, const(size.xscale)), -100
[State 6120, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 4
;pos = 125, -35
pos = ceil(80 * root, const(size.xscale)), -64

[State 6120, Juggle]
type = rootvarset
trigger1 = numtarget && animelem = 4
var(15) = 0

[State 6120, Throw]
type = targetstate
trigger1 = numtarget && animelem = 4
value = 6126

[State 6120, Sound]
type = playsnd
trigger1 = animelem = 4
value = 8, 3
channel = 0
[State 6120, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 6120, End]
type = changestate
trigger1 = !animtime
value = 6121


;--- Idle ---
[Statedef 6121]
type = S
physics = N
movetype = I
anim = 6121
velset = 0, 0
sprpriority = -2

[State 6121, Pos]
type = posadd
trigger1 = !time
trigger1 = prevstateno = 6120
x = ceil(18 * const(size.xscale))

[State 6121, End]
type = changestate
triggerall = roundstate < 3
trigger1 = time >= 60
trigger2 = !numtarget
trigger3 = numtarget
trigger3 = target, statetype != A || (target, stateno = [5100, 5210])
value = 6122

[State 6121, End]
type = changestate
trigger1 = roundstate = 4
value = 6123


;--- Warp out ---
[Statedef 6122]
type = A
physics = N
movetype = A
ctrl = 0
anim = 6122
velset = 0, 0
sprpriority = -2

[State 6122, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 6122, Trans]
type = trans
trigger1 = time <= 10
trans = addalpha
alpha = (256 - 25 * time), (25 * time)

[State 6122, Sound]
type = playsnd
trigger1 = !time
value = 8, 0
[State 6122, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6109
ID = 6108
name = "Warp FX"
postype = p1
pausemovetime = 255
supermovetime = 255
[State 6122, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6109
ID = 6109
name = "Warp FX"
postype = p1
pausemovetime = 255
supermovetime = 255

[State 6122, End]
type = destroyself
trigger1 = time >= 10


;--- Pose ---
[Statedef 6123]
type = S
physics = N
movetype = I
anim = 6123
velset = 0, 0
sprpriority = -2

[State 6123, End]
type = changestate
trigger1 = roundstate < 4
value = 6122

[State 6123, Snd]
type = playsnd
trigger1 = animelem = 5
value = 8, 6
channel = 0
[State 6123, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 0
channel = 1


;--- Target ---
[Statedef 6125]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = -3
[State 6125, Anim]
type = changeanim2
trigger1 = !time
value = 6125
[State 6125, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0


[Statedef 6126]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = -3

[State 6126, Anim]
type = changeanim2
trigger1 = !time
value = 6126

[State 6126, Push]
type = playerpush
trigger1 = 1
value = 0
[State 6126, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 6126, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel
[State 6126, Vel]
type = velset
trigger1 = !time
x = 1.33;5.32
y = -10;-7.55

[State 6126, Anim]
type = changeanim
trigger1 = vel y > 0
trigger1 = vel y > 0 && (pos y > -vel y)
trigger1 = selfanimexist(5051)
value = 5051
[State 6126, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;========================<VEGA WIN POSE>=============================
[Statedef 6130]
type = S
physics = N
movetype = A
ctrl = 0
anim = 6130
velset = 0, 0
sprpriority = -2

[State 6130, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 6130, Pos]
type = posset
trigger1 = !time
trigger1 = numenemy
x = ceil(enemynear, pos x) - (64 * facing)
y = -40

[State 6130, Trans]
type = trans
trigger1 = time <= 10
trans = addalpha
alpha = (25 * time), (256 - 25 * time)

[State 6130, Sound]
type = playsnd
trigger1 = time = 10
value = 8, 5
channel = 0

[State 6130, Sound]
type = playsnd
trigger1 = !time
value = 8, 0
[State 6130, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6108
ID = 6108
name = "Warp FX"
postype = p1
pausemovetime = 255
supermovetime = 255
[State 6130, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6108
ID = 6109
name = "Warp FX"
postype = p1
pausemovetime = 255
supermovetime = 255

[State 6130, Float]
type = velset
trigger1 = time >= 10
y = cos((time -10) / 32.0 * pi) * 1

[State 6130, End]
type = changestate
trigger1 = roundstate != 4
value = 6122


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


;--- Reversal ---
[Statedef 8020]
type = A
physics = N
movetype = I
anim = 8020
velset = 0, 0
sprpriority = 99

[State 8020, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8020, Scale]
type = angledraw
trigger1 = 1
scale = 0.25 + (0.09375 * time), 0.25 + (0.09375 * time)
[State 8020, Trans]
type = trans
trigger1 = time < 4
trans = addalpha
alpha = 256, 256
[State 8020, Trans]
type = trans
trigger1 = time >= 4
trans = addalpha
alpha = 256 - 64 * (time -4), 256

[State 8020, End]
type = destroyself
trigger1 = time >= 8


;========================<DUSTS>=============================
;--- Jump ---
[Statedef 8100]
type = S
anim = 9999
velset = 0, 0

[State 8100, Bind]
type = bindtoroot
trigger1 = time

[State 8100, Dust]
type = explod
trigger1 = !time
anim = 8100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8100, Dust]
type = explod
trigger1 = !time || time = 2 || time = 6
anim = 8101
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8100, End]
type = destroyself
trigger1 = !numexplod
trigger2 = time >= 60


;--- Dash ---
[Statedef 8103]
type = A
anim = 9999
velset = 0, 0
sprpriority = 5

[State 8103, Pos]
type = posset
trigger1 = !time = 0
y = 0

[State 8103, Dust]
type = explod
trigger1 = time = 0 || time = 3 || time = 6
anim = 8103
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

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.1 + (0.025 * time), 0.1 + (0.025 * time)
trans = addalpha
alpha = 256 -(16 * time), 256
[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.1 + (0.025 * (time -3)), 0.1 + (0.025 * (time -3))
trans = addalpha
alpha = 256 -(16 * (time -3)), 256
[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.1 + (0.025 * (time -6)), 0.1 + (0.025 * (time -6))
trans = addalpha
alpha = 256 -(16 * (time -6)), 256

[State 8103, End]
type = removeexplod
trigger1 = time >= 22
[State 8103, End]
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


;========================<FLAMES>=============================
;--- Cammy ---
[Statedef 8150]
type = A
velset = 0, 0
anim = 9999

[State 8150, Player]
type = varset
trigger1 = !time
var(0) = parent, var(40)

[State 8150, Time]
type = varadd
trigger1 = 1
var(1) = -1

[State 8150, Time]
type = varset
trigger1 = !time
trigger2 = root, stateno = 1020
trigger2 = root, movehit = 1 && root, Hitpausetime = 10
trigger3 = root, stateno = 1060
trigger3 = root, movehit = 1 && root, Hitpausetime = 10
trigger4 = root, stateno = 1120
trigger4 = root, movehit = 1 && root, Hitpausetime = 10
trigger5 = root, stateno = 1221
trigger5 = root, movehit = 1 && root, Hitpausetime = 6
trigger6 = root, stateno = 1420
trigger6 = root, movehit = 1 && root, Hitpausetime = 10
trigger7 = root, stateno = 1620
trigger7 = root, movehit = 1 && root, Hitpausetime = 10
trigger8 = root, stateno = 3050
trigger8 = root, movehit = 1
trigger9 = root, stateno = 3051
trigger9 = root, movehit = 1 && root, Hitpausetime = 4
trigger10 = root, stateno = 3151
trigger10 = root, movehit = 1 && root, Hitpausetime = 2
var(1) = 60

[State 8150, End]
type = destroyself
trigger1 = !playerIDexist(var(0))
trigger2 = var(1) <= 0

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
value = 7, 5
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


;--- Vega ---
[Statedef 8151]
type = A
velset = 0, 0
anim = 9999

[State 8151, Player]
type = varset
trigger1 = !time
var(0) = parent, var(40)

[State 8150, Time]
type = varadd
trigger1 = 1
var(1) = -1

[State 8150, Time]
type = varset
trigger1 = !time
trigger2 = numhelper(610)
trigger2 = helper(6100), stateno = 6102 && helper(6100), time <= 1
trigger3 = numhelper(6100)
trigger3 = helper(6100), stateno = 6112 && helper(6100), time <= 1
var(1) = 60

[State 8151, End]
type = destroyself
trigger1 = !playerIDexist(var(0))
trigger2 = var(1) <= 0

[State 8151, Pos]
type = posset
trigger1 = playerIDexist(var(0))
x = ceil(playerID(var(0)), pos x)
y = ceil(playerID(var(0)), pos y) + (playerID(var(0)), const(size.mid.pos.y))

[State 8151, Pos]
type = posset
trigger1 = playerIDexist(var(0))
trigger1 = playerID(var(0)), statetype = L
x = ceil(playerID(var(0)), pos x)
y = ceil(playerID(var(0)), pos y) - 20

[State 8151, Turn]
type = turn
trigger1 = playerIDexist(var(0))
trigger1 = facing != (playerID(var(0)), facing)

[State 8151, Snd]
type = playsnd
trigger1 = playerIDexist(var(0))
trigger1 = playerID(var(0)), hitshakeover
value = 7, 5
persistent = 0

[State 8151, Flames]
type = explod
trigger1 = playerIDexist(var(0))
anim = 8151
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

[State 8151, Flames]
type = explod
trigger1 = playerIDexist(var(0))
anim = 8151
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


;====================<POWER CHARGE>====================
;--- MAIN FX ---
[Statedef 8330]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
velset = 0, 0

[State 8330, Bind]
type = bindtoroot
trigger1 = (root, stateno = 730)
pos = (4 * root,const(size.xscale)), 0

[State 8330, Snd]
type = playsnd
trigger1 = !time
value = 0, 730
channel = 0

[State 8330, Snd]
type = playsnd
trigger1 = 1
value = 0, 731
channel = 1
lowpriority = 1
volumescale = ifelse(time < 180, (time * 0.277), 50)

[State 8330, Aura]
type = explod
trigger1 = !numexplod(8330)
ID = 8330
anim = 8330
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 8330, Dust]
type = explod
trigger1 = !(time % 6)
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330)
trigger1 = root, time <= 60
ID = 8330
scale = 0.5, 0.125

[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330)
trigger1 = root, time = [61, 119]
ID = 8330
scale = 0.5, 0.1 + ((root, time - 60) * 0.00625)

[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330)
trigger1 = root, time >= 120
ID = 8330
scale = 0.5, 0.5

[State 8330, End]
type = stopsnd
trigger1 = root, stateno != 730
trigger2 = root, movetype = H
channel = 0

[State 8330, End]
type = stopsnd
trigger1 = root, stateno != 730
trigger2 = root, movetype = H
channel = 1

[State 8330, End]
type = removeexplod
trigger1 = root, stateno != 730
trigger2 = root, movetype = H

[State 8330, End]
type = destroyself
trigger1 = root, stateno != 730
trigger2 = root, movetype = H


;--- Particles ---
[Statedef 8331]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
velset = 0, 0

[State 8331, Bind]
type = bindtoroot
trigger1 = !(time % 8)
pos = ceil(-153 + (random / 3.125)), ceil(82 -(random / 3.125))

[State 8331, Particle]
type = explod
trigger1 = (time % 8) = 1
anim = 8331
sprpriority = ifelse(random < 750, 5, -1)
postype = p1
vel = ((rootdist x -7) / 32.0), ((rootdist y -78) / 32.0)
scale = ifelse(random < 500, 0.5, -0.5), ifelse(random < 500, 0.5, -0.5)
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8331, End]
type = removeexplod
trigger1 = root, stateno != 730
[State 8331, End]
type = destroyself
trigger1 = root, stateno != 730


;====================<ZERO COUNTER PAUSE>====================
[Statedef 8350]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
velset = 0, 0

[State 8350, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 1
color = 16 * time
mul = 16 * time, 16 * time, 16 * time

[State 8350, Circle]
type = explod
trigger1 = !time
anim = 8350
ID = 1
sprpriority = 3
postype = p1
removetime = 16
supermovetime = -1
ownpal = 1

[State 8350, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = (0.0625 * time), (0.0625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8350, Lightning]
type = explod
trigger1 = !time
anim = 8351
ID = 2
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
supermovetime = -1
ownpal = 1

[State 8350, End]
type = destroyself
trigger1 = time >= 16


;========================<CUSTOM COMBO>=============================
[Statedef 8400]
type = A
physics = N
movetype = I
anim = 8400
ctrl = 0
velset = 0, 0
sprpriority = 5

[State 8400, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8400, BG PalFX]
type = bgpalfx
trigger1 = time < 25
time = 1
mul = 128, 128, 128

[State 8400, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 8400, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8400, Scale]
type = angledraw
trigger1 = time < 8
scale = (0.0625 * time), (0.0625 * time)
[State 8400, Scale]
type = angledraw
trigger1 = time >= 8
scale = 0.5, 0.5
[State 8400, Trans]
type = trans
trigger1 = time < 16
trans = addalpha
alpha = 256, 256
[State 8400, Trans]
type = trans
trigger1 = time >= 16
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256

[State 8400, Lines]
type = explod
trigger1 = !time
anim = 8401
ID = 1
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
removetime = 16
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 2 -(0.125 * time), 2 -(0.125 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8400, Circle]
type = explod
trigger1 = time = 16
anim = 8402
ID = 2
sprpriority = 5
postype = p1
removetime = 32
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = (0.1 * (time -16)), (0.1 * (time -16))
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256

[State 8400, Safety]
type = removeexplod
trigger1 = time >= 26
[State 8400, End]
type = destroyself
trigger1 = time >= 26


;========================<SUPERPAUSE FX>=============================
;----- Level 1 -----
[Statedef 8500]
type = A
velset = 0, 0
anim = 8500
sprpriority = 5

[State 8500, Bind]
type = varset
trigger1 = !time
fvar(24) = -rootdist x

[State 8500, Bind]
type = varset
trigger1 = !time
fvar(25) = -rootdist y

[State 8500, Bind]
type = bindtoroot
trigger1 = 1
pos = fvar(24), fvar(25)

[State 8500, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8500, BG PalFX]
type = bgpalfx
trigger1 = time < 39
time = 1
color = 0
mul = 0, 0, 256

[State 8500, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 8500, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8500, Scale]
type = angledraw
trigger1 = 1
scale = (0.0177 * time) * (0.0177 * time), (0.0177 * time) * (0.0177 * time)

[State 8500, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8500, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8501
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
bindtime = -1
removetime = 16
supermovetime = -1

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256
[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256
[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256
[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8500, Circle]
type = explod
trigger1 = time = 24
anim = 8502
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
bindtime = -1
removetime = 32
supermovetime = -1

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8500, Safety]
type = removeexplod
trigger1 = time >= 40
[State 8500, End]
type = destroyself
trigger1 = time >= 40


;----- Level 2 -----
[Statedef 8510]
type = A
velset = 0, 0
anim = 8510
sprpriority = 5

[State 8510, Bind]
type = varset
trigger1 = !time
fvar(24) = -rootdist x

[State 8510, Bind]
type = varset
trigger1 = !time
fvar(25) = -rootdist y

[State 8510, Bind]
type = bindtoroot
trigger1 = 1
pos = fvar(24), fvar(25)

[State 8510, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time < 39
time = 1
color = 0
mul = 192, 0, 256

[State 8510, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 8510, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8510, Scale]
type = angledraw
trigger1 = 1
scale = (0.0177 * time) * (0.0177 * time), (0.0177 * time) * (0.0177 * time)

[State 8510, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8510, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8511
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
bindtime = -1
removetime = 16
supermovetime = -1

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256
[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256
[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256
[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8510, Circle]
type = explod
trigger1 = time = 24
anim = 8512
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
bindtime = -1
removetime = 32
supermovetime = -1

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8510, Safety]
type = removeexplod
trigger1 = time >= 40
[State 8510, End]
type = destroyself
trigger1 = time >= 40


;----- Level 3 -----
[Statedef 8520]
type = A
velset = 0, 0
anim = 8520
sprpriority = 5

[State 8520, Bind]
type = varset
trigger1 = !time
fvar(24) = -rootdist x

[State 8520, Bind]
type = varset
trigger1 = !time
fvar(25) = -rootdist y

[State 8520, Bind]
type = bindtoroot
trigger1 = 1
pos = fvar(24), fvar(25)

[State 8520, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8520, Assert]
type = assertspecial
trigger1 = time < 40
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 8520, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 8520, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8520, Scale]
type = angledraw
trigger1 = 1
scale = (0.0177 * time) * (0.0177 * time), (0.0177 * time) * (0.0177 * time)

[State 8520, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8525
ID = 20
sprpriority = -16
postype = back
bindtime = -1
removetime = 40
supermovetime = -1
[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8525
ID = 21
sprpriority = -16
postype = back
bindtime = -1
removetime = 40
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && time < 16
ID = 20
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 1 - (0.03125 * time), 1 - (0.03125 * time)
trans = addalpha
alpha = (8 * time), 256
[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && time < 16
ID = 21
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 2 - (0.09375 * time), 2 - (0.09375 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && (time = [16, 32])
ID = 20
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 256
[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && (time = [16, 32])
ID = 21
scale = 0, 0

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && time >= 32
ID = 20
postype = back
pos = 160 + (8 * (time -32)), ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 0.5, 0.5
trans = addalpha
alpha = 128 - 16 * (time -32), 256
[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && time >= 32
ID = 21
postype = back
pos = 160 - (8 * (time -32)), ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 0.5, 0.5
trans = addalpha
alpha = 128 - 16 * (time -32), 256

[State 8520, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8521
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
bindtime = -1
removetime = 16
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256
[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256
[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256
[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8520, Circle]
type = explod
trigger1 = time = 24
anim = 8522
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
bindtime = -1
removetime = 32
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8520, Safety]
type = removeexplod
trigger1 = time >= 40
[State 8520, End]
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
value = 0, 8600
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
time = 1
mul = 0, 0, 0
[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time = [16, 24)
time = 1
mul = 32 * (time -16), 32 * (time -16), 32 * (time -16)

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, var(23) = 900
var(0) = 1
[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = (root, var(23) = [3000, 3099])
var(0) = 2
[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = (root, var(23) = [3100, 3199])
var(0) = 3
[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = (root, var(23) = [3200, 3299])
var(0) = 4
[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = (root, var(23) = [3300, 3399])
var(0) = 5
[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = (root, var(23) = [3400, 3499])
var(0) = 6

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
anim = 8610 + var(0)
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
anim = 8610 + var(0)
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

[State 8600, Circle]
type = explod
trigger1 = !time
anim = 8601
ID = 8601
sprpriority = -5
postype = left
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
bindtime = -1
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(8601)
ID = 8601
scale = (0.25 * time) * (1.3333333 * gameheight / gamewidth), (0.25 * time) * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = 256 - (16 * time), 256

[State 8600, Stop Shake]
type = envshake
trigger1 = numexplod
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


;========================<DIZZY STARS>=============================
[Statedef 8970]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0
sprpriority = 0

[State 8970, Bullet time]
type = bgpalfx
trigger1 = !time
time = 5
sinadd = 128, 128, 128, 10
ignorehitpause = 1
persistent = 0

[State 8970, Bullet time]
type = varadd
trigger1= numenemy
trigger1 = enemynear, hitshakeover
trigger2 = var(0)
var(0) = 1

[State 8970, Bullet time]
type = pause
triggerall = numenemy
triggerall = enemynear, hitshakeover
trigger1 = var(0) = [1, 16]
trigger2 = var(0) = [17, 32]
trigger2 = !(var(0) % 2)
time = 1

[State 8970, Pos]
type = posset
trigger1 = numenemy
x = enemynear, pos x
y = (enemynear, pos y) + (enemynear, const(size.head.pos.y)) - 16

[State 8970, Pos]
type = posset
trigger1 = numenemy = 1
trigger1 = (enemynear, pos y) > 0
y = (enemynear, const(size.head.pos.y)) - 16

[State 8970, Star]
type = explod
trigger1 = !numexplod(1)
anim = 8970
ID = 1
postype = p1
pos = 0, 0
sprpriority = 5
bindtime = -1
removetime = -1
scale = 0.5, 0.5

[State 8970, Star]
type = explod
trigger1 = !numexplod(2)
anim = 8970
ID = 2
postype = p1
pos = 0, 0
sprpriority = 5
bindtime = -1
removetime = -1
scale = 0.5, 0.5

[State 8970, Star]
type = explod
trigger1 = !numexplod(3)
anim = 8970
ID = 3
postype = p1
pos = 0, 0
sprpriority = 5
bindtime = -1
removetime = -1
scale = 0.5, 0.5

[State 8970, Star]
type = explod
trigger1 = !numexplod(4)
anim = 8970
ID = 4
postype = p1
pos = 0, 0
sprpriority = 5
bindtime = -1
removetime = -1
scale = 0.5, 0.5

[State 8970, Circle around]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
postype = p1
pos = ceil(32 * cos((gametime + 0) / 32.0 * pi)), ceil(6 * sin((gametime + 0) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((gametime + 0) / 32.0 * pi), 0.375 + 0.125 * sin((gametime + 0) / 32.0 * pi)
sprpriority = ifelse(sin((gametime + 0) / 32.0 * pi) >= 0, 5, -5)

[State 8970, Circle around]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
postype = p1
pos = ceil(32 * cos((gametime + 32) / 32.0 * pi)), ceil(8 * sin((gametime + 32) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((gametime + 32) / 32.0 * pi), 0.375 + 0.125 * sin((gametime + 32) / 32.0 * pi)
sprpriority = ifelse(sin((gametime + 32) / 32.0 * pi) >= 0, 5, -5)

[State 8970, Circle around]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
postype = p1
pos = ceil(32 * cos((gametime + 16) / 32.0 * pi)), ceil(8 * sin((gametime + 16) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((gametime + 16) / 32.0 * pi), 0.375 + 0.125 * sin((gametime + 16) / 32.0 * pi)
sprpriority = ifelse(sin((gametime + 16) / 32.0 * pi) >= 0, 5, -5)

[State 8970, Circle around]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
postype = p1
pos = ceil(32 * cos((gametime + 48) / 32.0 * pi)), ceil(8 * sin((gametime + 48) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((gametime + 48) / 32.0 * pi), 0.375 + 0.125 * sin((gametime + 48) / 32.0 * pi)
sprpriority = ifelse(sin((gametime + 48) / 32.0 * pi) >= 0, 5, -5)

[State 8970, Snd]
type = playsnd
trigger1 = 1
value = 0, 5300
lowpriority = 1
volumescale = 50
channel = 0

[State 8970, End]
type = stopsnd
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = enemynear, stateno != [1115300, 1115319]
channel = 0

[State 8970, End]
type = removeexplod
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = enemynear, stateno != [1115300, 1115319]

[State 8970, End]
type = destroyself
trigger1 = !numexplod


;========================<CAMERA CONTROL>=============================
[Statedef 8999]
type = S
velset = 0, 0
anim = 9999

[State 8999, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[State 8999, End]
type = destroyself
trigger1 = roundstate = 2
trigger1 = (root, stateno != [3205, 3206])

