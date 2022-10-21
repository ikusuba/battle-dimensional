; ________________________________
;| Karin by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;======================================<SPECIAL MOVES>=======================================
;============================================================================================

;======================<GUREN KEN>=============================
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
var(10) = ifelse(map(p2bodydistx) < 90, 0, ifelse(map(p2bodydistx) < 100, 1, 2))
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

[State 1000, Accel]
type = veladd
trigger1 = vel x > 0
x = ifelse(var(10) = 2, -0.1628, ifelse(var(10) = 1, -0.1221, -0.0814))
[State 1000, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1000, Vel]
type = velset
trigger1 = !time
x = ifelse(var(10) = 2, 5.19, ifelse(var(10) = 1, 4.15, 3.08))

[State 1000, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 7
channel = 0

[State 1000, Snd]
type = playsnd
trigger1 = !time
value = 0, 100
[State 1000, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 1000, Dust]
type = explod
trigger1 = !(time % 6) && time && vel x >= 1
anim = 8104
sprpriority = 3
postype = p1
pos = ceil(-28 * const(size.xscale)), 0
vel = -1.5, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1000, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(var(10) = 2, 40, ifelse(var(10) = 1, 35, 30)), ifelse(var(10) = 2, 10, ifelse(var(10) = 1, 9, 8))
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 4, 4
guard.pausetime = 4, 4
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
ground.velocity = -10.52, 0
guard.velocity = -10.52
air.velocity = -5.39, -7
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 80), var(37) := ceil(-64 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1000, Anim]
type = changeanim
trigger1 = anim = [1000, 1002]
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 3
value = anim
elem = 4
ignorehitpause = 1

[State 1000, Guren Chouchuu]
type = mapset
triggerall = animelemtime(9) < 0
triggerall = !map(gurenken) || AIlevel
trigger1 = !AIlevel
trigger1 = command = "holddown" && command = "holdfwd"
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
map = "gurenken"
value = 1300
ignorehitpause = 1

[State 1000, Guren Hou Shou]
type = mapset
triggerall = animelemtime(9) < 0
triggerall = !map(gurenken) || AIlevel
trigger1 = !AIlevel
trigger1 = command = "holdfwd"
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
map = "gurenken"
value = 1010
ignorehitpause = 1

[State 1000, Guren Yasha Joudan]
type = mapset
triggerall = animelemtime(9) < 0
triggerall = !map(gurenken) || AIlevel
trigger1 = !AIlevel
trigger1 = command = "holdback"
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
trigger2 = AIlevel
trigger2 = inguarddist && p2statetype != C
map = "gurenken"
value = 1020
ignorehitpause = 1

[State 1000, Guren Ressen Ha]
type = mapset
triggerall = animelemtime(9) < 0
triggerall = !map(gurenken) || AIlevel
trigger1 = !AIlevel
trigger1 = command = "holdup"
trigger1 = map(cmd_a) || map(cmd_b) || map(cmd_c)
trigger2 = AIlevel
trigger2 = (enemynear, stateno = 131 || enemynear, stateno = 152 || enemynear, stateno = 153)
map = "gurenken"
value = 1400
ignorehitpause = 1

[State 1000, Guren Kusabi]
type = mapset
triggerall = animelemtime(9) < 0
triggerall = !map(gurenken) || AIlevel
trigger1 = !AIlevel
trigger1 = command = "holddown"
trigger1 = map(cmd_a) || map(cmd_b) || map(cmd_c)
trigger2 = AIlevel
trigger2 = (enemynear, stateno = 130 || enemynear, stateno = 150 || enemynear, stateno = 151)
map = "gurenken"
value = 1015
ignorehitpause = 1

[State 1000, Guren Yasha Gedan]
type = mapset
triggerall = animelemtime(9) < 0
triggerall = !map(gurenken) || AIlevel
trigger1 = !AIlevel
trigger1 = command = "holdback"
trigger1 = map(cmd_a) || map(cmd_b) || map(cmd_c)
trigger2 = AIlevel
trigger2 = inguarddist && p2statetype = C
map = "gurenken"
value = 1025
ignorehitpause = 1

[State 1000, Guren Ken]
type = mapset
triggerall = animelemtime(9) < 0
triggerall = !map(gurenken) || AIlevel
trigger1 = !AIlevel
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
trigger2 = AIlevel && !map(gurenken)
trigger2 = random < 200
map = "gurenken"
value = 1005
ignorehitpause = 1

[State 1000, Guren Mujin Kyaku]
type = mapset
triggerall = animelemtime(9) < 0
triggerall = !map(gurenken) || AIlevel
trigger1 = !AIlevel
trigger1 = map(cmd_a) || map(cmd_b) || map(cmd_c)
map = "gurenken"
value = 1200
ignorehitpause = 1

[State 1000, Follow-up Strength]
type = varset
trigger1 = !AIlevel
trigger1 = !var(11) && animelemtime(9) < 0
trigger1 = map(gurenken) = 1005 || map(gurenken) = 1010 || map(gurenken) = 1020 || map(gurenken) = 1300
var(11) = ifelse(map(cmd_z), 2, ifelse(map(cmd_y), 1, 0))

[State 1000, Follow-up Strength]
type = varset
trigger1 = !AIlevel
trigger1 = !var(11) && animelemtime(9) < 0
trigger1 = map(gurenken) = 1015 || map(gurenken) = 1025 || map(gurenken) = 1200 || map(gurenken) = 1400
var(11) = ifelse(map(cmd_c), 2, ifelse(map(cmd_b), 1, 0))

[State 1000, Follow-up Strength]
type = varset
trigger1 = AIlevel
trigger1 = animelemtime(9) < 0
var(11) = 2

[State 1000, Follow-up type]
type = mapset
trigger1 = time <= 1
map = "gurenken"
value = 0
[State 1000, Follow-up Strength]
type = varset
trigger1 = time <= 1
var(11) = 0

[State 1000, Follow-up]
type = changestate
trigger1 = map(gurenken) = [1000, 2999]
trigger1 = animelemtime(6) >= 0 && animelemtime(9) < 0
value = map(gurenken)

[State 1000, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Second ---
[Statedef 1005]
type = S
physics = N
movetype = A
anim = 1005
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = var(11)

[State 1005, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1005, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1007, ifelse(var(10) = 1, 1006, 1005))

[State 1005, Accel]
type = veladd
trigger1 = vel x > 0
x = ifelse(var(10) = 2, -0.1628, ifelse(var(10) = 1, -0.1221, -0.0814))
[State 1005, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1005, Vel]
type = velset
trigger1 = !time
x = ifelse(var(10) = 2, 5.19, ifelse(var(10) = 1, 4.15, 3.08))

[State 1005, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 5
channel = 0
[State 1005, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 1005, Dust]
type = explod
trigger1 = !(time % 6) && time && vel x >= 1
anim = 8104
sprpriority = 3
postype = p1
pos = ceil(-28 * const(size.xscale)), 0
vel = -1.5, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1005, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(var(10) = 2, 40, ifelse(var(10) = 1, 35, 30)), ifelse(var(10) = 2, 10, ifelse(var(10) = 1, 9, 8))
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 4, 4
guard.pausetime = 4, 4
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
ground.velocity = -10.52, 0
guard.velocity = -10.52
air.velocity = -5.39, -7
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 80), var(37) := ceil(-64 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1005, Anim]
type = changeanim
trigger1 = anim = [1005, 1007]
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 3
value = anim
elem = 4
ignorehitpause = 1

[State 1005, Guren Chouchuu]
type = mapset
triggerall = animelemtime(9) < 0
triggerall = !map(gurenken) || AIlevel
trigger1 = !AIlevel
trigger1 = command = "holddown" && command = "holdfwd"
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
trigger2 = AIlevel && !map(gurenken)
trigger2 = random < 50
map = "gurenken"
value = 1300
ignorehitpause = 1

[State 1005, Guren Yasha Joudan]
type = mapset
triggerall = animelemtime(9) < 0
triggerall = !map(gurenken) || AIlevel
trigger1 = !AIlevel
trigger1 = command = "holdback"
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
trigger2 = AIlevel
trigger2 = inguarddist && p2statetype != C
map = "gurenken"
value = 1020
ignorehitpause = 1

[State 1005, Guren Ressen Ha]
type = mapset
triggerall = animelemtime(9) < 0
triggerall = !map(gurenken) || AIlevel
trigger1 = !AIlevel
trigger1 = command = "holdup"
trigger1 = map(cmd_a) || map(cmd_b) || map(cmd_c)
trigger2 = AIlevel
trigger2 = (enemynear, stateno = 131 || enemynear, stateno = 152 || enemynear, stateno = 153)
map = "gurenken"
value = 1400
ignorehitpause = 1

[State 1005, Guren Kusabi]
type = mapset
triggerall = animelemtime(9) < 0
triggerall = !map(gurenken) || AIlevel
trigger1 = !AIlevel
trigger1 = command = "holddown"
trigger1 = map(cmd_a) || map(cmd_b) || map(cmd_c)
trigger2 = AIlevel
trigger2 = (enemynear, stateno = 130 || enemynear, stateno = 150 || enemynear, stateno = 151)
map = "gurenken"
value = 1015
ignorehitpause = 1

[State 1005, Guren Yasha Gedan]
type = mapset
triggerall = animelemtime(9) < 0
triggerall = !map(gurenken) || AIlevel
trigger1 = !AIlevel
trigger1 = command = "holdback"
trigger1 = map(cmd_a) || map(cmd_b) || map(cmd_c)
trigger2 = AIlevel
trigger2 = inguarddist && p2statetype = C
map = "gurenken"
value = 1025
ignorehitpause = 1

[State 1005, Guren Hou Shou]
type = mapset
triggerall = animelemtime(9) < 0
triggerall = !map(gurenken) || AIlevel
trigger1 = !AIlevel
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
trigger2 = AIlevel
trigger2 = random < 100 && !map(gurenken)
map = "gurenken"
value = 1010
ignorehitpause = 1

[State 1005, Guren Mujin Kyaku]
type = mapset
triggerall = animelemtime(9) < 0
triggerall = !map(gurenken) || AIlevel
trigger1 = !AIlevel
trigger1 = map(cmd_a) || map(cmd_b) || map(cmd_c)
trigger2 = AIlevel
trigger2 = random < 200 && !map(gurenken)
map = "gurenken"
value = 1200
ignorehitpause = 1

[State 1005, Follow-up Strength]
type = varset
trigger1 = !AIlevel
trigger1 = !var(11) && animelemtime(9) < 0
trigger1 = map(gurenken) = 1010 || map(gurenken) = 1020 || map(gurenken) = 1300
var(11) = ifelse(map(cmd_z), 2, ifelse(map(cmd_y), 1, 0))

[State 1005, Follow-up Strength]
type = varset
trigger1 = !AIlevel
trigger1 = !var(11) && animelemtime(9) < 0
trigger1 = map(gurenken) = 1015 || map(gurenken) = 1025 || map(gurenken) = 1200 || map(gurenken) = 1400
var(11) = ifelse(map(cmd_c), 2, ifelse(map(cmd_b), 1, 0))

[State 1005, Follow-up Strength]
type = varset
trigger1 = AIlevel
trigger1 = animelemtime(9) < 0
var(11) = 2

[State 1005, Follow-up type]
type = mapset
trigger1 = time <= 1
map = "gurenken"
value = 0
[State 1005, Follow-up Strength]
type = varset
trigger1 = time <= 1
var(11) = 0

[State 1005, Follow-up]
type = changestate
trigger1 = map(gurenken) = [1000, 2999]
trigger1 = animelemtime(6) >= 0 && animelemtime(9) < 0
value = map(gurenken)

[State 1005, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 1005, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Guren Hou Shou ---
[Statedef 1010]
type = S
physics = N
movetype = A
anim = 1100
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1010, Strength]
type = varset
trigger1 = !time
var(10) = var(11)

[State 1010, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1010, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1102, ifelse(var(10) = 1, 1101, 1100))

[State 1010, Accel]
type = veladd
trigger1 = vel x > 0
x = ifelse(var(10) = 2, -0.1628, ifelse(var(10) = 1, -0.1221, -0.0814))
[State 1010, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1010, Vel]
type = velset
trigger1 = !time
x = ifelse(var(10) = 2, 5.19, ifelse(var(10) = 1, 4.15, 3.08))

[State 1010, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 8
channel = 0
[State 1010, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 2
channel = 1

[State 1010, Dust]
type = explod
trigger1 = !(time % 6) && time && vel x >= 1
anim = 8104
sprpriority = 3
postype = p1
pos = ceil(-28 * const(size.xscale)), 0
vel = -1.5, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1010, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 6
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 70, 18
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -5.23, -6.5
guard.velocity = -10.52
air.velocity = -5.23, -6.5
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-24.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 50) * (var(36) := 95), var(37) := ceil(-58 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1010, Type]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
[State 1010, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Guren Kusabi ---
[Statedef 1015]
type = C
physics = N
movetype = A
anim = 1015
ctrl = 0
velset = 0, 0
sprpriority = 2
juggle = 7 * !var(20)

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1015, Strength]
type = varset
trigger1 = !time
var(10) = var(11)

[State 1015, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1015, Accel]
type = veladd
trigger1 = vel x > 0
x = ifelse(var(10) = 2, -0.1628, ifelse(var(10) = 1, -0.1221, -0.0814))
[State 1015, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1015, Vel]
type = velset
trigger1 = !time
x = ifelse(var(10) = 2, 5.19, ifelse(var(10) = 1, 4.15, 3.08))

[State 1015, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 6
channel = 0
[State 1015, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 101

[State 1015, Dust]
type = explod
trigger1 = !(time % 6) && time && vel x >= 1
anim = 8104
sprpriority = 3
postype = p1
pos = ceil(32 * const(size.xscale)), 0
vel = -1.5, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1015, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4
attr = C, SA
hitflag = MAFD
guardflag = L
priority = 4, Hit
damage = 80, 20
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Trip
air.type = Trip
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -1.33, -8.07
guard.velocity = -10.52
air.velocity = -1.33, -8.07
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-24.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.48505
forcestand = 1
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 90), var(37) := ceil(-5 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
down.hittime = 18
down.velocity = 0, 0
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
ID = 1015

[State 1015, OTG - Stay Down]
redirectID = target(1015), ID
type = selfstate
trigger1 = movehit = 1
trigger1 = numtarget(1015)
trigger1 = target(1015), pos y >= -24
trigger1 = target(1015), stateno = 5020 || target(1015), stateno = 5070
trigger1 = target(1015), prevstateno = [5100, 5101]
trigger1 = target(1015), alive && target, hitfall
value = 5080
ignorehitpause = 1

[State 1015, OTG - Stay Down]
redirectID = target(1015), ID
type = posset
trigger1 = numtarget(1015)
trigger1 = target(1015), pos y
trigger1 = target(1015), stateno = 5080
y = 0
ignorehitpause = 1

[State 1015, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 1015, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;--- Guren Yasha Joudan ---
[Statedef 1020]
type = S
physics = N
movetype = I
anim = 1500
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1020, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.083125
[State 1020, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1020, Vel]
type = velset
trigger1 = !time
x = 2

[State 1020, Dust]
type = explod
trigger1 = !(time % 6) && time && vel x >= 1
anim = 8104
sprpriority = 3
postype = p1
pos = ceil(-38 * const(size.xscale)), 0
vel = -1.5, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1020, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1

[State 1020, Reversal]
type = reversaldef
trigger1 = animelem = 2
reversal.attr = SA, NA, SA, HA
pausetime = 0, 20
sparkno = ifelse(map(mysparks), -1, 40) + 0 * (var(33) := -1)
sparkxy = 20, 0
hitsound = s3, 0
p1stateno = 1510

[State 1020, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Guren Yasha Gedan ---
[Statedef 1025]
type = S
physics = N
movetype = I
anim = 1505
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1025, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.083125
[State 1025, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1025, Vel]
type = velset
trigger1 = !time
x = 2

[State 1025, Dust]
type = explod
trigger1 = !(time % 6) && time && vel x >= 1
anim = 8104
sprpriority = 3
postype = p1
pos = ceil(-38 * const(size.xscale)), 0
vel = -1.5, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1025, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1

[State 1025, Reversal]
type = reversaldef
trigger1 = animelem = 2
reversal.attr = C, NA, SA, HA
pausetime = 0, 20
sparkno = ifelse(map(mysparks), -1, 40) + 0 * (var(33) := -1)
sparkxy = 20, 0
hitsound = s3, 0
p1stateno = 1510

[State 1025, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<HOU SHOU>=============================
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
var(10) = ifelse((p2movetype = H || random < 333), 0, ifelse(random < 500, 1, 2))
ignorehitpause = 1

[State 1100, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1100, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1102, ifelse(var(10) = 1, 1101, 1100))

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 8
channel = 0
[State 1100, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 2
channel = 1

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 6
value = 0, 5100
volumescale = 75

[State 1100, Shake]
type = envshake
trigger1 = animelem = 6
time = 12
ampl = 1
freq = 180

[State 1100, Dust]
type = explod
trigger1 = animelem = 6
anim = 8105
sprpriority = -3
postype = p1
pos = ceil(57 * const(size.xscale)), 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1100, Autoguard]
type = reversaldef
trigger1 = animelem = 4
persistent = 0
reversal.attr = SCA, NA, SA
pausetime = 12, 12
sparkno = ifelse(map(mysparks), -1, 40) + 0 * (var(33) := -1)
sparkxy = 20, 0
hitsound = s3, 0
numhits = 0

[State 1100, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = movehit = 1
trigger1 = animelemtime(6) < 0 && numenemy
helpertype = normal
stateno = ifelse((enemynear, hitdefattr = SCA, NA), 8000, 8001)
ID = 8000
name = "Spark"
postype = p1
pos = ceil(p2dist x / 2.0), ceil(-74 * const(size.yscale))
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
persistent = 0

[State 1100, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 6
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = (100 + var(10) * 10), (25 + var(10) * 3)
dizzypoints = -ceil(ifelse(var(10) = 2, 200, ifelse(var(10) = 1, 150, 100)) * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -5.23, -6.5
guard.velocity = -10.52
air.velocity = -5.23, -6.5
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-24.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 50) * (var(36) := 95), var(37) := ceil(-58 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1100, Type]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
[State 1100, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<EX HOU SHOU>=============================
[Statedef 1120]
type = S
physics = N
movetype = A
anim = 1120
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

[State 1120, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1120, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1120, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1120, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1120, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(-15 * const(size.xscale)), ceil(-59 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1120, Vel]
type = velset
trigger1 = animelem = 5
x = 8
[State 1120, Vel]
type = velset
trigger1 = animelem = 7
x = 0

[State 1120, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 8
channel = 0
[State 1120, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 2
channel = 1

[State 1120, Snd]
type = playsnd
trigger1 = animelem = 6
value = 0, 5100
volumescale = 100

[State 1120, Shake]
type = envshake
trigger1 = animelem = 6
time = 12
ampl = 1
freq = 180

[State 1120, Dust]
type = explod
trigger1 = animelem = 6
anim = 8105
sprpriority = -3
postype = p1
pos = ceil(57 * const(size.xscale)), 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1120, Autoguard]
type = reversaldef
trigger1 = animelem = 3
persistent = 0
reversal.attr = SCA, NA, SA
pausetime = 12, 12
sparkno = ifelse(map(mysparks), -1, 40) + 0 * (var(33) := -1)
sparkxy = 20, 0
hitsound = s3, 0
numhits = 0

[State 1120, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = movehit = 1
trigger1 = animelemtime(6) < 0 && numenemy
helpertype = normal
stateno = ifelse((enemynear, hitdefattr = SCA, NA), 8000, 8001)
ID = 8000
name = "Spark"
postype = p1
pos = ceil(p2dist x / 2.0), ceil(-74 * const(size.yscale))
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
persistent = 0

[State 1120, Hit]
type = hitdef
trigger1 = (var(15) < 2 || var(20))
trigger1 = animelem = 6
ID = 1120
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 90, 23
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -12, -4.25
guard.velocity = -10.52
air.velocity = -12, -4.25
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-24.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 50) * (var(36) := 95), var(37) := ceil(-58 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1120, Wall Bounce]
type = targetstate
trigger1 = !map(wallbounce)
trigger1 = movehit && numtarget(1120)
trigger1 = target(1120), dizzypoints > 0
trigger1 = (target(1120), stateno = 5000) || (target(1120), stateno = 5010) || (target(1120), stateno = 5020)
value = 1125
ID = 1120
ignorehitpause = 1

[State 1120, Wall Bounce Limit]
type = mapset
map = "wallbounce"
trigger1 = numtarget(1120)
trigger1 = target(1120), stateno = 1125
value = 1
ignorehitpause = 1

[State 1120, Juggle Reset]
type = varset
trigger1 = movehit = 1
trigger1 = numtarget(1120)
trigger1 = target(1120), stateno = 1125
var(15) = 0
ignorehitpause = 1

[State 1120, Type]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
[State 1120, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<HIT by EX HOU SHOU>=============================
;--- Hit Pause ---
[Statedef 1125]
type = A
movetype = H
physics = N
velset = 0, 0

[State 1125, Anim]
type = changeanim
trigger1 = 1
value = 5012

[State 1125, End]
type = changestate
trigger1 = hitshakeover
value = 1126


;--- Falling ---
[Statedef 1126]
type = A
movetype = H
physics = N

[State 1126, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel) * 0.67

[State 1126, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1

[State 1126, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = (vel y < 0), 0

[State 1126, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1126, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 1126, Bounce]
type = changestate
trigger1 = time >= 4
trigger1 = backedgebodydist <= 0 || frontedgebodydist <= 0
value = 1127

[State 1126, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;--- Hitting Wall ---
[Statedef 1127]
type = A
movetype = H
physics = N

[State 1127, turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 1127, Pos]
type = posadd
trigger1 = 1
x = -backedgebodydist

[State 1127, Pos]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 1127, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0
[State 1127, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1127, Anim]
type = changeanim
trigger1 = 1
value = 5000

[State 1127, Snd]
type = playsnd
trigger1 = !time
value = F7, 2

[State 1127, FX]
type = explod
trigger1 = !time
anim = F72
postype = back
pos = 0, ceil((240.0 / gameheight) * (screenpos y + const(size.mid.pos.y)))
scale = (320.0 / gamewidth), (320.0 / gamewidth)
sprpriority = -5
ownpal = 1

[State 1127, End]
type = changestate
trigger1 = time >= 4
value = 1128


;--- Falling ---
[Statedef 1128]
type = A
movetype = H
physics = N

[State 1128, turn]
type = turn
trigger1 = !time

[State 1128, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 1128, Vel]
type = velset
trigger1 = !time
x = ((enemynear, pos x - pos x) * facing + 60) / 36.0
y = (pos y + 0.5 * 0.4850 * 36 ** 2) / -36.0

[State 1128, Vel]
type = velset
trigger1 = !time
trigger1 = vel x != [-9, 0]
x = ifelse(vel x < -9, -9, 0)


[State 1128, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)
[State 1128, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050
[State 1128, Anim]
type = changeanim
trigger1 = vel y > -3 && anim = 5051
value = 5061

[State 1128, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 1128, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1128, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;======================<MUJIN KYAKU>=============================
[Statedef 1200]
type = A
physics = N
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20) * (prevstateno != [1000, 1005])
facep2 = (prevstateno != [1000, 1005])

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
var(10) = ifelse((p2movetype = H || random < 500), 2, ifelse(random < 500, 1, 0))
ignorehitpause = 1

[State 1200, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1200, Follow-up Strength]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [1000, 1005])
var(10) = var(11)

[State 1200, Accel]
type = veladd
trigger1 = vel x > 0
x = ifelse(var(10) = 2, -0.1628, ifelse(var(10) = 1, -0.1221, -0.0814))
[State 1200, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1200, Vel]
type = velset
trigger1 = !time
x = ifelse(var(10) = 2, 5.19, ifelse(var(10) = 1, 4.15, 3.08))

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 5
channel = 0
[State 1200, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 7
value = 1, 5
channel = 1

[State 1200, Dust]
type = explod
trigger1 = !(time % 6) && vel x >= 1
trigger1 = animelemtime(8) >= 0
anim = 8104
sprpriority = 3
postype = p1
pos = ceil(0 * const(size.xscale)), 0
vel = -1.5, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1200, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ifelse(var(10) = 2, 40, ifelse(var(10) = 1, 45, 50)), ifelse(var(10) = 2, 13, ifelse(var(10) = 1, 14, 15))
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -5.62, 0
guard.velocity = -5.62
air.velocity = -5.23, -6.5
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 65), var(37) := ceil(-34 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1200, Hit]
type = hitdef
trigger1 = (var(15) < (1 + hitcount) || var(20))
trigger1 = animelem = 8
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 60, 15
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = High
air.type = Low
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -1.35, -9.0
guard.velocity = -7.51
air.velocity = -1.35, -9.0
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 55), var(37) := ceil(-80 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1200, Anim]
type = changeanim
trigger1 = anim = 1200
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(8) >= 0 && animelemtime(9) <= 0
trigger1 = hitpausetime <= 3
value = 1200
elem = 9
ignorehitpause = 1

[State 1200, Type]
type = statetypeset
trigger1 = animelemtime(10) >= 0
movetype = I
[State 1200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<EX MUJIN KYAKU>=============================
[Statedef 1220]
type = A
physics = N
movetype = A
anim = 1220
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

[State 1220, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1220, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1220, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1220, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1220, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(-1 * const(size.xscale)), ceil(-33 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1220, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.1628
[State 1220, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1220, Vel]
type = velset
trigger1 = !time
x = 5.19

[State 1220, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 5
channel = 0
[State 1220, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 7
value = 1, 5
channel = 1

[State 1220, Dust]
type = explod
trigger1 = !(time % 6) && vel x >= 1
trigger1 = animelemtime(8) >= 0
anim = 8104
sprpriority = 3
postype = p1
pos = ceil(0 * const(size.xscale)), 0
vel = -1.5, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1220, Hit]
type = hitdef
trigger1 = var(15) < 2 || var(20)
trigger1 = animelem = 4
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 50, 13
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -5.62, 0
guard.velocity = -5.62
air.velocity = -5.23, -6.5
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 65), var(37) := ceil(-34 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1220, Hit]
type = hitdef
trigger1 = var(15) < 3 || var(20)
trigger1 = animelem = 8
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 50, 13
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = High
air.type = Low
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -1.35, -9.0
guard.velocity = -7.51
air.velocity = -1.35, -9.0
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 55), var(37) := ceil(-80 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1220, Anim]
type = changeanim
trigger1 = anim = 1220
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(8) >= 0 && animelemtime(9) <= 0
trigger1 = hitpausetime <= 3
value = 1220
elem = 9
ignorehitpause = 1

[State 1220, Type]
type = statetypeset
trigger1 = animelemtime(10) >= 0
movetype = I
[State 1220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<RESSEN CHOU>=============================
[Statedef 1300]
type = S
physics = N
movetype = A
anim = 1300
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20) * (prevstateno != [1000, 1005])
facep2 = (prevstateno != [1000, 1005])

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
var(10) = ifelse((p2movetype = H || random < 500), 2, ifelse(random < 500, 1, 0))
ignorehitpause = 1

[State 1300, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1300, Follow-up Strength]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [1000, 1005])
var(10) = var(11)

[State 1300, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1302, ifelse(var(10) = 1, 1301, 1300))

[State 1300, Accel]
type = veladd
trigger1 = vel x > 0
x = ifelse(var(10) = 2, -0.1628, ifelse(var(10) = 1, -0.1221, -0.0814))
[State 1300, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1300, Vel]
type = velset
trigger1 = !time
x = ifelse(var(10) = 2, 5.19, ifelse(var(10) = 1, 4.15, 3.08))

[State 1300, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 6
channel = 0

[State 1300, Snd]
type = playsnd
trigger1 = !time
value = 0, 130
[State 1300, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 2
channel = 1

[State 1300, Dust]
type = explod
trigger1 = !(time % 6) && time && vel x >= 1
anim = 8104
sprpriority = 3
postype = p1
pos = ceil(-28 * const(size.xscale)), 0
vel = -1.5, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1300, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 6
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = (70 -var(10) * 7), (18 -var(10) * 2)
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 4, 4
guard.pausetime = 4, 4
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
ground.velocity = -10.52, 0
guard.velocity = -10.52
air.velocity = -5.39, -7
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 45) * (var(36) := 70), var(37) := ceil(-64 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1300, Follow-up type]
type = mapset
triggerall = (!map(gurenken) || AIlevel) && animelemtime(11) < 0
trigger1 = !AIlevel
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
trigger2 = AIlevel
map = "gurenken"
value = 1305
ignorehitpause = 1

[State 1300, Follow-up Strength]
type = varset
trigger1 = !AIlevel
trigger1 = !var(11) && animelemtime(11) < 0
var(11) = ifelse(map(cmd_z), 2, ifelse(map(cmd_y), 1, 0))

[State 1300, Follow-up Strength]
type = varset
trigger1 = AIlevel
trigger1 = animelemtime(11) < 0
var(11) = 2

[State 1300, Follow-up type]
type = mapset
trigger1 = time <= 1
map = "gurenken"
value = 0
[State 1300, Follow-up Strength]
type = varset
trigger1 = time <= 1
var(11) = 0

[State 1300, Follow-up]
type = changestate
trigger1 = map(gurenken) = 1305
trigger1 = animelemtime(8) >= 0 && animelemtime(11) < 0
value = 1305

[State 1300, Type]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
[State 1300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Ressen Chuu ---
[Statedef 1305]
type = S
physics = N
movetype = A
anim = 1305
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1305, Strength]
type = varset
trigger1 = !time
var(10) = var(11)
ignorehitpause = 1

[State 1305, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1305, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1307, ifelse(var(10) = 1, 1306, 1305))

[State 1305, Accel]
type = veladd
trigger1 = vel x > 0
x = ifelse(var(10) = 2, -0.1628, ifelse(var(10) = 1, -0.1221, -0.0814))
[State 1305, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1305, Vel]
type = velset
trigger1 = !time
x = ifelse(var(10) = 2, 5.19, ifelse(var(10) = 1, 4.15, 3.08))

[State 1305, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 4
channel = 0
[State 1305, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 1305, Dust]
type = explod
trigger1 = !(time % 6) && time && vel x >= 1
anim = 8104
sprpriority = 3
postype = p1
pos = ceil(-28 * const(size.xscale)), 0
vel = -1.5, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1305, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = (76 -var(10) * 7), (19 - var(10) * 2)
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 4, 4
guard.pausetime = 4, 4
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
ground.velocity = -5.32, -7.62
guard.velocity = -10.52
air.velocity = -5.32, -7.62
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 70), var(37) := ceil(-64 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1305, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 1305, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<RESSEN HA>=============================
[Statedef 1400]
type = S
physics = N
movetype = A
anim = 1400
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20) * (prevstateno != [1000, 1005])
facep2 = (prevstateno != [1000, 1005])

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1400, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_c), 2, ifelse(map(str_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1400, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(p2dist x >= 160, 2, ifelse(p2dist x >= 80, 1, 0))
ignorehitpause = 1

[State 1400, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1400, Follow-up Strength]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [1000, 1005])
var(10) = var(11)

[State 1400, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1402, ifelse(var(10) = 1, 1401, 1400))

[State 1400, NHB]
type = nothitby
trigger1 = 1
value = , AP
time = 1
ignorehitpause = 1

[State 1400, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = N

[State 1400, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = ifelse(anim = 1402, 0.76, ifelse(anim = 1401, 0.71, 0.635))
[State 1400, Vel]
type = velset
trigger1 = animelem = 2
x = ifelse(anim = 1402, 7.92, ifelse(anim = 1401, 6.22, 5.6))
y = ifelse(anim = 1402, -8.77, ifelse(anim = 1401, -7.82, -6.67))

[State 1400, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 4
channel = 0
[State 1400, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 2
channel = 1

[State 1400, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 1400, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1400, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 5
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 40, 10
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -7.51, 0
guard.velocity = -7.51
air.velocity = -5.33, -6.46
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 80), var(37) := ceil(-80 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1400, End]
type = changestate
trigger1 = vel y > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1405


;--- Land ---
[Statedef 1405]
type = S
physics = N
movetype = A
anim = 1405
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1405, Pos]
type = posset
trigger1 = 1
y = 0

[State 1405, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, 3
channel = 0
[State 1405, Snd]
type = playsnd
trigger1 = animelem = 1
value = 1, 2
channel = 1

[State 1405, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1405, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
pos = 14, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1405, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 1
attr = S, SA
hitflag = MAF
guardflag = H
priority = 4, Hit
damage = 60, 15
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -5.33, -6.45
guard.velocity = -7.51
air.velocity = -5.33, -6.45
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 50) * (var(36) := 85), var(37) := ceil(-30 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1405, Anim]
type = changeanim
trigger1 = anim = 1405
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(1) >= 0 && animelemtime(2) <= 0
trigger1 = hitpausetime <= 9
value = 1405
elem = 2
ignorehitpause = 1

[State 1405, Anim]
type = changeanim
trigger1 = anim = 1405
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
trigger1 = hitpausetime <= 6
value = 1405
elem = 3
ignorehitpause = 1

[State 1405, Anim]
type = changeanim
trigger1 = anim = 1405
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 3
value = 1405
elem = 4
ignorehitpause = 1

[State 1405, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
movetype = I
[State 1405, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<EX RESSEN HA>=============================
[Statedef 1420]
type = S
physics = N
movetype = A
anim = 1420
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

[State 1420, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1420, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1420, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1420, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1420, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(9 * const(size.xscale)), ceil(-52 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1420, NHB]
type = nothitby
trigger1 = 1
value = , AP
time = 1
ignorehitpause = 1

[State 1420, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = N
[State 1420, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.76

[State 1420, Vel]
type = velset
trigger1 = animelem = 2
x = ifelse(map(p2bodydistx) >= 240, 9.6, ifelse(map(p2bodydistx) <= 0, 0, map(p2bodydistx) / 25.0))
y = -8.77

[State 1420, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 4
channel = 0
[State 1420, Snd]
type = playsnd
trigger1 = animelem = 5 || animelem = 9 || animelem = 13
value = 1, 2
channel = 1

[State 1420, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 40
[State 1420, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1420, Hit]
type = hitdef
trigger1 = var(15) < (1 + hitcount)
trigger1 = animelem = 5 || animelem = 9 || animelem = 13
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 20, 5
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 6, 6
guard.pausetime = 8, 8
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = 0, 0
guard.velocity = 0
air.velocity = -5.33, -6.46
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 80), var(37) := ceil(-80 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1420, End]
type = changestate
trigger1 = vel y > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1425


;--- Land ---
[Statedef 1425]
type = S
physics = N
movetype = A
anim = 1425
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1425, Pos]
type = posset
trigger1 = 1
y = 0

[State 1425, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, 3
channel = 0
[State 1425, Snd]
type = playsnd
trigger1 = animelem = 1
value = 1, 2
channel = 1

[State 1425, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1425, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
pos = 14, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1425, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 1
attr = S, SA
hitflag = MAF
guardflag = H
priority = 4, Hit
damage = 80, 20
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -5.33, -6.45
guard.velocity = -7.51
air.velocity = -5.33, -6.45
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 50) * (var(36) := 85), var(37) := ceil(-30 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1425, Anim]
type = changeanim
trigger1 = anim = 1425
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(1) >= 0 && animelemtime(2) <= 0
trigger1 = hitpausetime <= 9
value = 1425
elem = 2
ignorehitpause = 1

[State 1425, Anim]
type = changeanim
trigger1 = anim = 1425
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
trigger1 = hitpausetime <= 6
value = 1425
elem = 3
ignorehitpause = 1

[State 1425, Anim]
type = changeanim
trigger1 = anim = 1425
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 3
value = 1425
elem = 4
ignorehitpause = 1

[State 1425, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
movetype = I

[State 1425, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<YASHA GAESHI>=============================
;--- Joudan ---
[Statedef 1500]
type = S
physics = S
movetype = I
anim = 1500
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1

[State 1500, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1

[State 1500, Reversal]
type = reversaldef
trigger1 = animelem = 2
reversal.attr = SA, NA, SA, HA
pausetime = 0, 20
sparkno = ifelse(map(mysparks), -1, 40) + 0 * (var(33) := -1)
sparkxy = 20, 0
hitsound = s3, 0
p1stateno = 1510

[State 1500, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Gedan ---
[Statedef 1505]
type = S
physics = S
movetype = I
anim = 1505
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1

[State 1505, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1

[State 1505, Reversal]
type = reversaldef
trigger1 = animelem = 2
reversal.attr = C, NA, SA, HA
pausetime = 0, 20
sparkno = ifelse(map(mysparks), -1, 40) + 0 * (var(33) := -1)
sparkxy = 20, 0
hitsound = s3, 0
p1stateno = 1510

[State 1505, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Counter ---
[Statedef 1510]
type = S
physics = N
movetype = A
anim = 1510
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1510, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = !time
trigger1 = numenemy
helpertype = normal
stateno = ifelse((enemynear, hitdefattr = SCA, NA), 8000, 8001)
ID = 8000
name = "Spark"
postype = p1
pos = ceil(ifelse(prevstateno = 1505, 14, 32) * const(size.xscale)), ceil(ifelse(prevstateno = 1505, -20, -56) * const(size.yscale))
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
persistent = 0

[State 1510, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 6 + (random % 3)
channel = 0
[State 1510, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
channel = 1

[State 1510, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
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
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 15
ground.slidetime = 15
guard.hittime = 15
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -5.23, -6.5
guard.velocity = -10.52
air.velocity = -5.23, -6.5
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-24.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 35) * (var(36) := 70), var(37) := ceil(-55 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = 2

[State 1510, Anim]
type = changeanim
trigger1 = anim = 1510
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
trigger1 = hitpausetime <= 10
value = 1510
elem = 4
ignorehitpause = 1

[State 1510, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 1510, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<EX YASHA GAESHI>=============================
[Statedef 1520]
type = S
physics = S
movetype = I
anim = 1520
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500
facep2 = 1

[State 1520, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1520, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1520, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1520, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1520, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(15 * const(size.xscale)), ceil(-42 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1520, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1

[State 1520, Reversal]
type = reversaldef
trigger1 = animelem = 2
reversal.attr = SCA, NA, SA, HA
pausetime = 0, 20
sparkno = ifelse(map(mysparks), -1, 40) + 0 * (var(33) := -1)
sparkxy = 20, 0
hitsound = s3, 0
p1stateno = 1530

[State 1520, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Counter ---
[Statedef 1530]
type = S
physics = N
movetype = A
anim = 1530
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1530, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = !time
trigger1 = numenemy
helpertype = normal
stateno = ifelse((enemynear, hitdefattr = SCA, NA), 8000, 8001)
ID = 8000
name = "Spark"
postype = p1
pos = ceil(35 * const(size.xscale)), ceil(-57 * const(size.yscale))
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
persistent = 0

[State 1530, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 6 + (random % 3)
channel = 0
[State 1530, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 1530, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 13
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.hittime = 15
ground.slidetime = 15
guard.hittime = 15
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -1.25, -11
guard.velocity = -10.52
air.velocity = -1.25, -11
airguard.velocity = -6.00, -1.00
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-24.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4850
forcestand = 1
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 35) * (var(36) := 55), var(37) := ceil(-60 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
p1sprpriority = 2

[State 1530, juggle]
type = varset
trigger1 = movehit = 1
var(15) = 0

[State 1530, Jump Cancel]
type = changestate
value = 40
triggerall = !AIlevel && roundstate = 2
triggerall = command = "holdup"
trigger1 = movecontact

[State 1530, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 1530, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<ARAKUMA INASHI>=============================
[Statedef 1600]
type = S
physics = S
movetype = A
anim = 1600
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

[State 1600, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_c), 2, ifelse(map(str_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1600, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(p2bodydistx) <= 31, 2, ifelse(map(p2bodydistx) <= 33, 1, 0))
ignorehitpause = 1

[State 1600, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1600, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 1600, Hit]
type = hitdef
triggerall = animelem = 3
triggerall = !map(unthrowable) && numenemy
triggerall = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
trigger1 = var(10) = 0 && map(p2bodydistx) <= ceil(35 * const(size.xscale))
trigger2 = var(10) = 1 && map(p2bodydistx) <= ceil(33 * const(size.xscale))
trigger3 = var(10) = 2 && map(p2bodydistx) <= ceil(31 * const(size.xscale))
attr = S, ST
hitflag = M
priority = 7, Miss
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 0)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 80), var(37) := ceil(-50 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1
yaccel = 0.4850
fall = 1
fall.recover = 1
numhits = 0
p1stateno = 1610
p2stateno = 1616

[State 1600, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 9
channel = 0
[State 1600, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 0
channel = 1

[State 1600, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 1600, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Player ---
[Statedef 1610]
type = S
physics = S
movetype = A
anim = 1610
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1610, Throw]
type = targetfacing
trigger1 = numtarget
value = -1

[State 1610, Throw]
type = targetstate
triggerall = numtarget
trigger1 = animelemtime(2) < 0
trigger2 = animelemtime(6) >= 0 && animelemtime(7) < 0
value = 825
[State 1610, Throw]
type = targetstate
triggerall = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
trigger2 = animelemtime(5) >= 0 && animelemtime(6) < 0
trigger3 = animelemtime(7) >= 0 && animelemtime(8) < 0
trigger4 = animelemtime(10) >= 0
value = 826
[State 1610, Throw]
type = targetstate
triggerall = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
trigger2 = animelemtime(8) >= 0 && animelemtime(10) < 0
value = 827

[State 1610, Bind]
type = targetbind
trigger1 = numtarget
pos = 45 * const(size.xscale), 0

[State 1610, Bind]
type = targetbind
triggerall = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
trigger2 = animelemtime(8) >= 0 && animelemtime(10) < 0
pos = 50 * const(size.xscale), -66 * const(size.yscale)

[State 1610, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 3 || animelem = 8
value = floor(-35 * fvar(10))
kill = 0

[State 1610, Hit]
type = hitadd
trigger1 = numtarget && (animelem = 3 || animelem = 8)
value = 1

[State 1610, Snd]
type = playsnd
trigger1 = animelem = 2 || animelem = 7
value = 4, 6
channel = 0
[State 1610, Snd]
type = playsnd
trigger1 = animelem = 2 || animelem = 7
value = 1, 5
channel = 1

[State 1610, Snd]
type = playsnd
trigger1 = numtarget && (animelem = 3 || animelem = 8)
value = 2, 5
channel = 2

[State 1610, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget && (animelem = 3 || animelem = 8)
helpertype = normal
stateno = 8012
ID = 8000
name = "Spark"
postype = p1
pos = ceil(60 * const(size.xscale)), ceil(-55 * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1610, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = numtarget && (animelem = 3 || animelem = 8)
anim = F2
ID = 8000
postype = p1
pos = ceil(60 * const(size.xscale)), ceil(-55 * const(size.yscale))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 1610, Shake]
type = envshake
trigger1 = numtarget && (animelem = 3 || animelem = 8)
time = 12
ampl = 1
freq = 180

[State 1610, End]
type = changestate
trigger1 = !animtime
value = 1611


;----- Flip -----
[Statedef 1611]
type = S
physics = S
movetype = A
anim = 1611
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1611, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 1616

[State 1611, juggle]
type = varset
trigger1 = !time
trigger1 = numtarget
var(15) = 1
ignorehitpause = 1

[State 1611, Pos]
type = posadd
trigger1 = animelem = 3 || animelem = 4 || animelem = 6
x = 16 * const(size.xscale)

[State 1611, Pos]
type = posadd
trigger1 = animelem = 5
x = 6 * const(size.xscale)

[State 1611, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) < 0
pos = 45 * const(size.xscale), 0

[State 1611, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 19 * const(size.xscale), 0

[State 1611, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 13 * const(size.xscale), 0

[State 1611, Bind 5]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 12 * const(size.xscale), -60 * const(size.yscale)

[State 1611, Bind 6]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 12 * const(size.xscale), -60 * const(size.yscale)

[State 1611, Bind 7]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
pos = 0, -70 * const(size.yscale)

[State 1611, Bind 8]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 8
pos = -12 * const(size.xscale), -60 * const(size.yscale)

[State 1611, Damage]
type = targetlifeadd
trigger1 = numtarget && animelem = 8
value = floor(fvar(10) * ifelse(var(10) = 2, -111, ifelse(var(10) = 1, -104, -97)))

;[State 1611, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 8
;value = -ceil(150 * fvar(10)) * !var(20)

[State 1611, givepower]
type = targetpoweradd
trigger1 = numtarget && animelem = 8
value = 40;givepower

[State 1611, getpower]
type = poweradd
trigger1 = animelem = 8 && !var(20)
value = 100;getpower

[State 1611, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 8
value = 1617

[State 1611, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 9
channel = 0
[State 1611, Snd]
type = playsnd
trigger1 = animelem = 6
value = 1, 5
channel = 1

[State 1611, Turn]
type = turn
trigger1 = !animtime
[State 1611, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 1616]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1616, Anim]
type = changeanim2
trigger1 = !time
value = 1616

[State 1616, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 1616, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1617]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1617, Anim]
type = changeanim2
trigger1 = !time
value = 1617

[State 1617, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1617, Accel]
type = veladd
trigger1 = 1
y = 0.75
[State 1617, Vel]
type = velset
trigger1 = !time
x = 3.33
y = -5

[State 1617, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State Safe Fall]
type = selfstate
trigger1 = command = "recovery"
trigger1 = vel y > 0 && alive
trigger1 = pos y >= (-20 - const(size.ground.back))
value = 5200
ignorehitpause = 1

[State 1617, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= -const(size.ground.back)
value = 5100


;======================<PUNCH ZERO COUNTER>=============================
[Statedef 2900]
type = S
physics = S
movetype = A
anim = 2900
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State 2900, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2900, Pos]
type = posadd
trigger1 = animelem = 2
trigger2 = animelem = 3
x = 16 * const(size.xscale)

[State 2900, Pos]
type = posadd
trigger1 = animelem = 9
trigger2 = animelem = 10
x = -16 * const(size.xscale)

[State 2900, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 5
channel = 0
[State 2900, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 2900, Hit]
type = hitdef
trigger1 = animelem = 4
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
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -6.5, -5.85
guard.velocity = -10.52
air.velocity = -6.5, -5.85
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-24.4
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := -45) * (var(36) := 65), var(37) := ceil(-77 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1

[State 2900, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
[State 2900, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<KICK ZERO COUNTER>=============================
[Statedef 2950]
type = C
physics = C
movetype = A
anim = 2950
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State 2950, NHB]
type = nothitby
trigger1 = animelemtime(5) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2950, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 5
channel = 0
[State 2950, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 2950, Hit]
type = hitdef
trigger1 = animelem = 5
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
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -6.5, -5.85
guard.velocity = -10.52
air.velocity = -6.5, -5.85
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-24.4
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 120), var(37) := ceil(-8 * const(size.yscale))
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1

[State 2950, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
[State 2950, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1
