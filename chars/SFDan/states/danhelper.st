; ______________________________
;| Dan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<HELPER STATES>========================================
;==============================================================================================

;========================<GADOU KEN>=============================
[Statedef 1005]
type = S
physics = N
movetype = A
anim = 1005
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1007
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

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

[State 1005, Time Var]
type = varadd
trigger1 = time >= 1
var(1) = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 3, 4.0, ifelse(var(10) = 2, 2.0, 1.0))
y = 0

[State 1005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = 2, ifelse((movehit && numtarget), 7, 0)
channel = 2
ignorehitpause = 1

[State 1005, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag =
sparkxy = -10, 0

[State 1005, Hit]
type = hitdef
trigger1 = (root, var(15) < 1 || root, var(20))
priority = 4, Hit
attr = S, SP
damage = 70, 18
dizzypoints = -ceil(root, fvar(10) * 100) * !(root, var(20))
guard.dist = const(size.proj.attack.dist)
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime = 18
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
air.velocity = -5.20, -5.90
air.fall = 1
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = 4
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1
fall.recover = 1
fall.recovertime = 120

[State 1005, Getpower]
type = poweradd
trigger1 = !(root, var(20))
trigger1 = movecontact = 1
trigger1 = numtarget
value = ifelse(moveguarded, 25, 50)
ignorehitpause = 1

[State 1005, Spark]
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

[State 1005, End]
type = changestate
trigger1 = var(1) >= ifelse(var(10) = 3, 12, ifelse(var(10) = 2, 18, 24))
value = 1006
ignorehitpause = 1

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 1007
ignorehitpause = 1

[State 1005, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


;--- Fade ---
[Statedef 1006]
type = A
physics = N
movetype = I
anim = 1006
ctrl = 0
velset = 0, 0
sprpriority = 4
movehitpersist = 1

[State 1006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1006, End]
type = destroyself
trigger1 = !animtime


;--- Contact ---
[Statedef 1007]
type = A
physics = N
movetype = I
anim = 1007
velset = 0, 0
ctrl = 0
sprpriority = 4
movehitpersist = 1

[State 1007, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 2, 0
channel = 2
lowpriority = 1
volumescale = 50

[State 1007, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1007, End]
type = destroyself
trigger1 = !animtime


;========================<EX GADOU KEN>=============================
[Statedef 1015]
type = S
physics = N
movetype = A
anim = 1015
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1015, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1017
ignorehitpause = 1
[State 1015, HB]
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

[State 1015, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1
ignorehitpause = 1
[State 1015, ProjContact]
type = rootvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 1010
var(18) = 1
ignorehitpause = 1

[State 1015, Time Var]
type = varadd
trigger1 = time
var(1) = 1

[State 1015, Vel]
type = velset
trigger1 = 1
x = 4
y = 0

[State 1015, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1015, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = 2, ifelse((movehit && numtarget), 7, 0)
channel = 2
ignorehitpause = 1

[State 1015, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag =
sparkxy = -10, 0

[State 1015, Hit]
type = hitdef
trigger1 = (root, var(15) < 2 || root, var(20))
priority = 4, Hit
attr = S, SP
damage = 80, 20
dizzypoints = -ceil(root, fvar(10) * 100) * !(root, var(20))
guard.dist = const(size.proj.attack.dist)
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime = 18
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
air.velocity = -5.20, -5.90
guard.velocity = -10.52
getpower = 0, 0
givepower = 40, 40
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = 4
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1
;palfx.color = 32
;palfx.sinadd = 80, 25, 0, 8
;palfx.mul = 512, 256, 128
;palfx.time = 32

[State 1015, Spark]
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

[State 1015, Spark]
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

[State 1015, Counter FX]
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

[State 1015, End]
type = changestate
trigger1 = movecontact
value = 1017
ignorehitpause = 1

[State 1015, End]
type = changestate
trigger1 = var(1) >= 18
value = 1016

[State 1015, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


;--- Fade ---
[Statedef 1016]
type = A
physics = N
movetype = I
anim = 1016
ctrl = 0
velset = 0, 0
sprpriority = 4
movehitpersist = 1

[State 1016, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1016, End]
type = destroyself
trigger1 = !animtime


;--- Contact ---
[Statedef 1017]
type = A
physics = N
movetype = I
anim = 1017
velset = 0, 0
ctrl = 0
sprpriority = 4
movehitpersist = 1

[State 1017, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 2, 0
channel = 2
lowpriority = 1
volumescale = 50

[State 1017, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1017, End]
type = destroyself
trigger1 = !animtime


;========================<PREMIUM SIGN>=============================
[Statedef 1305]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1305, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1306
ignorehitpause = 1
[State 1305, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1305, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)

[State 1305, Anim]
type = changeanim
trigger1 = (anim != [1305, 1307])
value = 1304 + var(10)

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

[State 1305, Vel]
type = velset
trigger1 = !time
x = ifelse(var(10) = 3, 5, ifelse(var(10) = 2, 4.5, 4))
y = ifelse(var(10) = 3, 3, ifelse(var(10) = 2, -2, -1))
[State 1305, Accel]
type = veladd
trigger1 = vel y = [-10, 10]
y = ifelse(var(10) = 3, -0.25, ifelse(var(10) = 2, 0.13, 0.25))

[State 1305, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = 2, ifelse((movehit && numtarget), 4, 0)
channel = 2
ignorehitpause = 1

[State 1305, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag =
sparkxy = -10, 0

[State 1305, Hit]
type = hitdef
trigger1 = (root, var(15) < 3 || root, var(20))
priority = 4, Hit
attr = S, SP
damage = 40, 10
dizzypoints = -ceil(root, fvar(10) * 200) * !(root, var(20))
guard.dist = const(size.proj.attack.dist)
animtype = Medium
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
air.velocity = -4, -4
getpower = 0, 0
givepower = 40, 40
envshake.time = 8
envshake.freq = 180
envshake.ampl = 1
p1sprpriority = 3
ID = 1305
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 1305, Getpower]
type = poweradd
trigger1 = !(root, var(20))
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
stateno = ifelse(moveguarded, 8001, 8011)
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
anim = Fifelse(moveguarded, 40, 1)
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
trigger1 = movecontact
value = 1306
ignorehitpause = 1

[State 1305, End]
type = changestate
trigger1 = pos y >= 0
value = 1306

[State 1305, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


;--- Contact ---
[Statedef 1306]
type = A
physics = N
movetype = I
velset = -vel x, vel y
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 1306, Custom KO]
type = targetstate
triggerall = movecontact && numtarget
triggerall = !(target, ishelper) && !(target, alive)
trigger1 = (target, prevstateno = [5000, 5011])
trigger2 = (target, prevstateno = [130, 131]) || (target, prevstateno = [140, 141]) || (target, prevstateno = [150, 153])
value = 1111305
ID = 1305
ignorehitpause = 1

[State 1306, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 2, 0
channel = 2
lowpriority = 1
volumescale = 50

[State 1306, Accel]
type = veladd
trigger1 = vel y <= 10
y = 0.25

[State 1306, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1307


;--- On the floor ---
[Statedef 1307]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = -100 + const(size.height)
movehitpersist = 1

[State 1307, Movehit Var]
type = varset
trigger1 = 1
var(18) = 0

[State 1307, Anim]
type = varrandom
trigger1 = !time
v = 0
range = 1, 4

[State 1307, Anim]
type = changeanim
trigger1 = 1
value = 1308
elem = var(0)

[State 1307, Anim]
type = varrandom
trigger1 = !time
v = 1
range = -4, 4

[State 1307, Pos]
type = posset
trigger1 = 1
y = var(1)

[State 1307, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 1307, End]
type = changestate
trigger1 = const(size.height) >= 7
value = 1308

[State 1307, End]
type = destroyself
trigger1 = frontedgedist < -40 || backedgedist < -40


;--- Fadeout ---
[Statedef 1308]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = -100 + const(size.height)
movehitpersist = 1

[State 1308, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 1308, Anim]
type = changeanim
trigger1 = 1
value = 1308
elem = var(0)

[State 1308, fadeout]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -12.8 * time), ceil(12.8 * time)

[State 1308, End]
type = destroyself
trigger1 = time >= 20


;--- Target killed ---
[Statedef 1111305]
type = S
physics = S
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 1111305, self]
type = selfstate
trigger1 = selfanimexist(5130)
value = 5130

[State 1111305, Anim]
type = changeanim
trigger1 = !time
trigger1 = selfanimexist(5950)
value = 5950

[State 1111305, Anim]
type = changeanim2
trigger1 = !time
trigger1 = !selfanimexist(5950)
value = 1111305

[State 1111305, Stop]
type = posset
trigger1 = 1
y = 0

[State 1111305, Stop]
type = velset
trigger1 = 1
y = 0

[State 1111305, Dust]
type = explod
trigger1 = anim = 1111305 && animelem = 7
anim = F60
postype = p1
pos = 0, 0
sprpriority = -10

[State 1111305, Snd]
type = playsnd
trigger1 = anim = 1111305 && animelem = 7
value = F7, 0

[State 1111305, Anim]
type = changeanim
trigger1 = anim = 5950 && time >= 120
trigger1 = selfanimexist(5112)
value = 5112

[State 1111305, End]
type = selfstate
trigger1 = !animtime || time >= 120
value = ifelse(alive, 5120, 5150)


;========================<SHINKUU GADOU KEN>=============================
[Statedef 3005]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 3005, Hit Number]
type = varadd
trigger1 = 1
var(2) = 1
persistent = 0
ignorehitpause = 1

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 3, 3005, 3007)
ignorehitpause = 1
[State 3005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Anim]
type = changeanim
trigger1 = anim != 3005
value = 3005

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

[State 3005, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1
ignorehitpause = 1
[State 3005, ProjContact]
type = rootvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 3000
var(18) = 1
ignorehitpause = 1

[State 3005, Vel]
type = velset
trigger1 = 1
x = 4
y = 0

[State 3005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = 2, ifelse((movehit && numtarget), 7, 0)
channel = 2
ignorehitpause = 1

[State 3005, Freeze]
type = posfreeze
trigger1 = time <= ifelse(numtarget, 4, 0)
value = 1

[State 3005, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag =
sparkxy = -10, 0

[State 3005, Hit]
type = hitdef
trigger1 = root, var(15) < 3
trigger1 = time >= ifelse(numtarget, 4, 0)
priority = 4, Hit
attr = S, HP
damage = 60, 15
dizzypoints = 0
guardpoints = -ceil(root, fvar(10) * 20)
guard.dist = const(size.proj.attack.dist)
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = ifelse(var(2) < 3, -10.52, -4.17), ifelse(var(2) < 3, 0, -6.76)
ground.cornerpush.veloff = 0
air.velocity = -4.17, -6.76
guard.velocity = -10.52
fall = (var(2) >= 3)
air.fall = 1
fall.recover = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180
p1sprpriority = 4
yaccel = 0.4850
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 3005, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8014)
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

[State 3005, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = Fifelse(moveguarded, 40, 3)
ID = 8000
postype = p1
pos = 0, 0
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 3005, Counter FX]
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

[State 3005, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 3, 3005, 3007)
ignorehitpause = 1

[State 3005, Time Var]
type = varadd
trigger1 = time > (prevstateno = 3005) * 4
var(1) = 1

[State 3005, End]
type = changestate
trigger1 = var(1) >= 18
value = 3006
ignorehitpause = 1

[State 3005, End]
type = destroyself
trigger1 = frontedgedist < -120 || backedgedist < -120


;--- Fade ---
[Statedef 3006]
type = A
physics = N
movetype = I
anim = 3006
ctrl = 0
velset = 0, 0
sprpriority = 4
movehitpersist = 1

[State 3006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3006, End]
type = destroyself
trigger1 = !animtime


;--- Contact ---
[Statedef 3007]
type = A
physics = N
movetype = I
anim = 3007
velset = 0, 0
ctrl = 0
sprpriority = 4
movehitpersist = 1

[State 3007, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 2, 0
channel = 2
lowpriority = 1
volumescale = 50

[State 3007, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3007, End]
type = destroyself
trigger1 = !animtime


;========================<GADOU SHOUKOUKEN>=============================
[Statedef 3405]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 3405, Hit Number]
type = varadd
trigger1 = 1
var(2) = 1
persistent = 0
ignorehitpause = 1

[State 3405, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1
[State 3405, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 6, 3405, 3407)
ignorehitpause = 1

[State 3405, Anim]
type = changeanim
trigger1 = anim != 3405
value = 3405

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

[State 3405, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1
ignorehitpause = 1
[State 3405, ProjContact]
type = rootvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 3402
var(18) = 1
ignorehitpause = 1

[State 3405, Time Var]
type = varadd
trigger1 = time >= (prevstateno = 3405) * 8
var(1) = -1

[State 3405, Max Time Var]
type = varset
trigger1 = !time
trigger1 = !prevstateno
var(1) = 20 + root, var(0)

[State 3405, Vel]
type = velset
trigger1 = 1
x = 2
y = 0

[State 3405, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3405, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = 2, ifelse((movehit && numtarget), 7, 0)
channel = 2
ignorehitpause = 1

[State 3405, Freeze]
type = posfreeze
trigger1 = time <= ifelse(numtarget, 6, 0)
value = 1

[State 3405, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag =
sparkxy = -10, 0

[State 3405, Hit]
type = hitdef
trigger1 = root, var(15) < (3 + var(2))
trigger1 = time >= ifelse(numtarget, 6, 0)
priority = 4, Hit
attr = S, HP
damage = 40, 10
dizzypoints = 0
guardpoints = -ceil(root, fvar(10) * 13)
guard.dist = const(size.proj.attack.dist)
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 0, 12
guard.pausetime = 0, 12
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
air.velocity = -0.75, -4
guard.velocity = -10.52
fall = 0
air.fall = 1
fall.recover = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180
p1sprpriority = 4
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 3405, Hit Final]
type = hitdef
trigger1 = root, var(15) < (3 + var(2))
trigger1 = time >= ifelse(numtarget, 6, 0)
trigger1 = var(2) >= 6
priority = 4, Hit
attr = S, HP
damage = 50, 13
dizzypoints = 0
guardpoints = -ceil(root, fvar(10) * 17)
guard.dist = const(size.proj.attack.dist)
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 0, 12
guard.pausetime = 0, 12
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4.17, -6.76
ground.cornerpush.veloff = 0
air.velocity = -4.17, -6.76
yaccel = 0.4850
guard.velocity = -10.52
fall = 1
fall.recover = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180
p1sprpriority = 4
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1

[State 3405, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8014)
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

[State 3405, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = Fifelse(moveguarded, 40, 3)
ID = 8000
postype = p1
pos = 0, 0
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 3405, Counter FX]
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

[State 3405, End]
type = changestate
trigger1 = var(1) <= 0
value = 3406
ignorehitpause = 1

[State 3405, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 6, 3405, 3407)
ignorehitpause = 1

[State 3405, End]
type = destroyself
trigger1 = frontedgedist < -120 || backedgedist < -120


;--- Fade ---
[Statedef 3406]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 4
movehitpersist = 1

[State 3406, Free Juggle]
type = parentvarset
trigger1 = time <= 1
trigger1 = var(2) >= 6
var(15) = 0

[State 3406, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA

[State 3406, Trans]
type = trans
trigger1 = time < 20
trans = addalpha
alpha = 256 - (time * 12), 256

[State 3406, Shrink]
type = angledraw
trigger1 = time < 20
scale = 1 - (0.05 * time), 1 - (0.05 * time)

[State 3406, End]
type = destroyself
trigger1 = time >= 20


;--- Contact ---
[Statedef 3407]
type = A
physics = N
movetype = I
anim = 3407
velset = 0, 0
ctrl = 0
sprpriority = 4
movehitpersist = 1

[State 3407, Free Juggle]
type = parentvarset
trigger1 = time <= 1
trigger1 = var(2) >= 6
var(15) = 0

[State 3407, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 2, 0
channel = 2
lowpriority = 1
volumescale = 50

[State 3407, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3407, End]
type = destroyself
trigger1 = !animtime


;========================<TAUNT HIT>=============================
[Statedef 4190]
type = S
physics = N
movetype = A
anim = 4190
ctrl = 0
velset = 0, 0

[State 4190, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 4190
ignorehitpause = 1

[State 4190, HB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1

[State 4190, Hit]
type = hitdef
trigger1 = !time
priority = 1, Miss
attr = S, HP
damage = 0, 0
dizzypoints = 0
guardpoints = 0
animtype = Light
hitflag = M
guardflag =
pausetime = 0, 0
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
air.velocity = 0, -6
fall = 0
forcenofall = 1
getpower = 0, 0
givepower = 500, 500
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
fall.recover = 1
fall.recovertime = 22
numhits = 0

[State 4190, End]
type = destroyself
trigger1 = !movecontact && !movereversed
trigger1 = time >= 1
trigger2 = movecontact || movereversed
trigger2 = time >= 60
trigger3 = root, stateno = 3300
trigger3 = time >= 1


;========================<SAIKYOU-RYUU BOUGYO>=============================
[Statedef 1505]
physics = N
velset = 0, 0
anim = 1505

[State 1505, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)

[State 1505, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA

[State 1505, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1505
ignorehitpause = 1

[State 1505, bound]
type = screenbound
trigger1 = 1
value = 0

[State 1505, Push]
type = playerpush
trigger1 = 1
value = 1

[State 1505, Pos]
type = posset
trigger1 = 1
y = 0

[State 1505, Vel]
type = velset
trigger1 = !time
trigger1 = !prevstateno
x = ifelse(var(10) = 4, 40, 20)

[State 1505, Vel]
type = velmul
trigger1 = 1
x = 0.9

[State 1505, Snd]
type = playsnd
trigger1 = !time
value = 5, 2

[State 1505, Dust]
type = explod
trigger1 = (p2bodydist x = [-5, 5]) && (enemynear, statetype != A) && !(time % 3)
anim = 7103
ID = 7103
sprpriority = 2
postype = p1
pos = 0, 0
scale = 0.5, 0.5
removetime = -2
ownpal = 1

[State 1505, End]
type = destroyself
trigger1 = time >= 20



;====================<GADOUKEN CHARGE>====================
[Statedef 3404]
type = A
physics = N
anim = 9999
sprpriority = 3
ctrl = 0

[State 3404, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 3404, noshadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 3404, bind]
type = bindtoroot
trigger1 = 1
pos = -1 + (gametime % 3), -(gametime % 2)
facing = 1

[State 3404, Red]
type = palfx
trigger1 = 1
color = 0
mul = 256, 0, 256
time = 1

[State 3404, Red]
type = palfx
trigger1 = 1
color = 0
mul = 256, 0, 256
time = 1

[State 3404, Level]
type = varset
trigger1 = !time
var(0) = root, var(10)

[State 3404, trans]
type = angledraw
trigger1 = 1
scale = 1.05, 1.05

[State 3404, trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 128, 256
ignorehitpause = 1

[State 3404, Anim]
type = changeanim
trigger1 = selfanimexist(root, anim)
value = (root, anim)
elem = (root, animelemno(0))

[State 3404, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = root, stateno != 3401


;========================<OTOKO CHARGE>=============================
[Statedef 4006]
physics = N
velset = 0, 0
anim = 7510
sprpriority = 3

[State 4006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 32 * (time % 3), 256
ignorehitpause = 1

[State 4006, Shrink]
type = angledraw
trigger1 = 1
scale = 0.0125 * time, 0.0125 * time
value = -10 * time

[State 4006, Snd]
type = playsnd
trigger1 = !time
value = 5, 8

[State 4006, BG PalFX]
type = bgpalfx
trigger1 = time <= 120
time = 1
color = 256 -floor(2.13 * time)
mul = (256 -floor(1.06 * time)), (256 -floor(2.13 * time)), (256 -floor(1.06 * time))

[State 4006, Zoom]
type = zoom
trigger1 = numenemy
trigger1 = enemy, teammode != simul
scale = 1.25
lag = 0.99
pos = pos x, 0
ignorehitpause = 1

[State 4006, Zoom Safety]
type = zoom
trigger1 = numenemy = 1
trigger1 = time >= 124
scale = 1.24
pos = pos x, 0
ignorehitpause = 1

[State 4006, End]
type = destroyself
trigger1 = root, animelemtime(6) >= 0
trigger2 = root, stateno != 4001
trigger3 = root, movetype != A


;========================<OTOKO PORTRAIT>=============================
[Statedef 4008]
type = A
anim = 9999

[State 4008, palfx]
type = bgpalfx
trigger1 = 1
time = 2
mul = 8 * time, 8 * time, 8 * time

[State 4008, Portrait]
type = explod
trigger1 = !time
anim = 4008
ID = 1
sprpriority = -10
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 100, 120)
scale = 0.5, 0.5
bindtime = -1
removetime = 40
supermovetime = -1

[State 4008, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
trans = addalpha
alpha = 256 - (8 * time), 256

[State 4008, Safety]
type = removeexplod
trigger1 = time >= 32

[State 4008, End]
type = destroyself
trigger1 = time >= 32


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
var(0) = root, ID

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
value = 5, 3
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
trigger1 = ishelper(8150)
trigger1 = time >= 120
trigger2 = ishelper(8151)
trigger2 = time >= 120
trigger3 = time >= 180


;========================<DUST>=============================
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
pos = -4, 0

[State 7240, Snd]
type = playsnd
trigger1 = !time
value = 7, 4
channel = 0

[State 7240, Snd]
type = playsnd
trigger1 = 1
value = 7, 5
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
vel = ((rootdist x + 2) / 32.0), ((rootdist y - 58) / 32.0)
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


;========================<CUSTOM COMBO PAUSE=============================
[Statedef 7260]
type = A
physics = N
movetype = I
anim = 7260
ctrl = 0
velset = 0, 0
sprpriority = 5

[State 7260, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7260, BG PalFX]
type = bgpalfx
trigger1 = time < 25
time = 1
mul = 128, 128, 128

[State 7260, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 7260, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 7260, Scale]
type = angledraw
trigger1 = time < 8
scale = (0.0625 * time), (0.0625 * time)
[State 7260, Scale]
type = angledraw
trigger1 = time >= 8
scale = 0.5, 0.5
[State 7260, Trans]
type = trans
trigger1 = time < 16
trans = addalpha
alpha = 256, 256
[State 7260, Trans]
type = trans
trigger1 = time >= 16
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256

[State 7260, Lines]
type = explod
trigger1 = !time
anim = 7261
ID = 1
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
removetime = 16
supermovetime = -1

[State 7260, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 2 -(0.125 * time), 2 -(0.125 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 7260, Circle]
type = explod
trigger1 = time = 16
anim = 7262
ID = 2
sprpriority = 5
postype = p1
removetime = 32
supermovetime = -1

[State 7260, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = (0.1 * (time -16)), (0.1 * (time -16))
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256

[State 7260, Safety]
type = removeexplod
trigger1 = time >= 26
[State 7260, End]
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
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 100, 120)
scale = 1 - (0.03125 * time), 1 - (0.03125 * time)
trans = addalpha
alpha = (8 * time), 256
[State 7520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && time < 16
ID = 21
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 100, 120)
scale = 2 - (0.09375 * time), 2 - (0.09375 * time)
trans = addalpha
alpha = (8 * time), 256

[State 7520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && (time = [16, 32])
ID = 20
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 100, 120)
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 256
[State 7520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && (time = [16, 32])
ID = 21
scale = 0, 0

[State 7520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && time >= 32
ID = 20
postype = back
pos = 160 + (8 * (time -32)), ifelse((gamewidth / gameheight) > 1.55, 100, 120)
scale = 0.5, 0.5
trans = addalpha
alpha = 128 - 16 * (time -32), 256
[State 7520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && time >= 32
ID = 21
postype = back
pos = 160 - (8 * (time -32)), ifelse((gamewidth / gameheight) > 1.55, 100, 120)
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
value = 7, 7
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
trigger1 = root, var(23) = 3000
var(0) = 2
[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, var(23) = 3100
var(0) = 3
[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, var(23) = 3500
var(0) = 4
[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, var(23) = 3200
var(0) = 5
[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, var(23) = 3400
var(0) = 6
[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, var(23) = 4000
var(0) = 7
[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, var(23) = 1300
var(0) = 8

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


;========================<SANDALS>=============================
[Statedef 6005]
type = A
physics = N
movetype = I
ctrl = 0
anim = 6005
sprpriority = 2

[State 6005, Vel]
type = velset
trigger1 = !time
trigger1 = numhelper(6005)
trigger1 = ID = helper(6005), ID
x = 2 + (random / 1000.0)
y = -4 -(random / 500.0)

[State 6005, Vel]
type = velset
trigger1 = !time
trigger1 = numhelper(6005)
trigger1 = ID != helper(6005), ID
x = -1 - (random / 2000.0)
y = -6 -(random / 500.0)

[State 6005, Vel]
type = velset
trigger1 = pos y >= -2
trigger1 = abs(vel y) < 2
y = 0

[State 6005, Pos]
type = posset
trigger1 = vel y = 0
trigger1 = pos y > 0
y = 0

[State 6005, Pos]
type = velmul
trigger1 = !vel y && !pos y
x = 0.8

[State 6005, Pos]
type = playsnd
trigger1 = vel y > 0 && (pos y > -vel y)
value = 6, 7
persistent = 0

[State 6005, Accel]
type = veladd
trigger1 = 1
y = 0.35

[State 6005, Vel]
type = velmul
trigger1 = vel y > 0 && vel y > 0 && (pos y > -vel y)
x = -0.5 + (random / 500.0)
y = -0.66

[State 6005, Snd]
type = angleadd
trigger1 = vel y < 0
trigger2 = pos y < -16
value = -15

[State 6005, Snd]
type = angledraw
trigger1 = 1

[State 6005, Fade]
type = trans
trigger1 = time >= 60
trans = addalpha
alpha = ceil(256 -8 * (time -60)), ceil(8 * (time -60))

[State 6005, End]
type = destroyself
trigger1 = time >= 92


;========================<CAMERA CONTROL>=============================
[Statedef 7650]
physics = N
velset = 0, 0
anim = 9999
[State 7650, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1
[State 7650, End]
type = destroyself
trigger1 = roundstate = 2


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
