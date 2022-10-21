; __________________________________
;| Lei-Lei by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================<SPECIAL STATES>=======================================
;============================================================================================

;======================<ANKIHOU>=============================
[Statedef 1000]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 25
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
var(10) = ifelse(map(str_z), 3, ifelse(map(str_y), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1000, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(p2dist x < 100, 3, ifelse(p2dist x < 200, 1, 2))
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
value = ifelse(var(10) = 1, 1000, 1001)

[State 1000, Charge]
type = changeanim
triggerall = time < 90
triggerall = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger1 = var(10) = 1 && command = "/x"
trigger2 = var(10) = 2 && command = "/y"
trigger3 = var(10) = 3 && command = "/z"
value = anim
elem = 3

[State 1000, Ankihou Var]
type = mapset
trigger1 = !time
map = "ankihotype"
value = ifelse(map(ankihotype) >= 5, 1, map(ankihotype) + 1)
persistent = 0

[State 1000, No dizzy]
type = mapset
trigger1 = !time
trigger1 = var(10) = 1
trigger1 = map(ankihotype) = 5
map = "ankihotype"
value = 0

[State 1000, Charge]
type = mapset
trigger1 = time = 40
trigger1 = map(ankihotype) < 3
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
map = "ankihotype"
value = 3

[State 1000, Charge]
type = mapset
trigger1 = time = 60
trigger1 = map(ankihotype) < 4
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
map = "ankihotype"
value = 4

[State 1000, Charge]
type = mapset
trigger1 = time = 80
trigger1 = map(ankihotype) < 5
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
map = "ankihotype"
value = 5

[State 1000, Width]
type = width
trigger1 = anim = 1000 && animelem = 6
value = ceil(40 * const(size.xscale)), 0
[State 1000, Width]
type = width
trigger1 = anim = 1001 && animelem = 5
value = ceil(30 * const(size.xscale)), 0

[State 1000, Correct Projectile Trade]
type = hitby
trigger1 = anim = 1000 && animelem = 7
trigger2 = anim = 1001 && animelem = 6
value2 = SCA, AA, AT
time = 1

[State 1000, Weapon]
type = helper
trigger1 = anim = 1000 && animelem = 7 && var(10) = 1
helpertype = normal
stateno = 1005
ID = 1005
name = "Weapon"
postype = p1
pos = ceil(103 * const(size.xscale)), -24
ownpal = 1

[State 1000, Weapon]
type = helper
trigger1 = anim = 1001 && animelem = 6 && var(10) = 2
helpertype = normal
stateno = 1005
ID = 1005
name = "Object"
postype = p1
pos = ceil(88 * const(size.xscale)), -90
ownpal = 1

[State 1000, Weapon]
type = helper
trigger1 = anim = 1001 && animelem = 6 && var(10) = 3
helpertype = normal
stateno = 1005
ID = 1005
name = "Object"
postype = p1
pos = ceil(56 * const(size.xscale)), -101
ownpal = 1

[State 1000, Snd]
type = playsnd
trigger1 = anim = 1000 && animelem = 4
trigger2 = anim = 1001 && animelem = 5
value = 3, 6
channel = 0

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<STUNNED>========================
[Statedef 1115310]
type = A
physics = N
movetype = H
velset = 0, 0

[State 1115310, NHB]
type = nothitby
trigger1 = 1
value = SCA

[State 1115310, Dizzy]
type = dizzyset
trigger1 = 1
value = 1

[State 1115310, Dizzy]
type = dizzypointsset
trigger1 = 1
value = 0

[State 1115310, Fall]
type = hitfallset
trigger1 = 1
value = 1
ignorehitpause = 1

[State 1115310, Anim]
type = changeanim
trigger1 = 1
value = 5012

[State 1115310, Shake]
type = offset
trigger1 = 1
x = ifelse((gametime % 2), -1, 1)

[State 1115310, End]
type = selfstate
trigger1 = hitshakeover
value = const(statedizzyfalldown_air)


;========================<EX ANKIHOU>=============================
[Statedef 1050]
type = S
physics = S
movetype = A
anim = 1000
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

[State 1050, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(-12 * const(size.xscale)), ceil(-77 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, Width]
type = width
trigger1 = animelem = 6
value = ceil(30 * const(size.xscale)), 0

[State 1050, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 7
value2 = SCA, AA, AT
time = 1

[State 1050, weapon]
type = helper
trigger1 = animelem = 7
helpertype = normal
stateno = 1055
ID = 1055
name = "Spiked Ball"
postype = p1
pos = ceil(92 * const(size.xscale)), 0
ownpal = 1

[State 1055, spinsnd]
type = playsnd
trigger1 = animelem = 6
value = 3, 2
channel = 0

[State 1055, spinsnd]
type = playsnd
trigger1 = animelem = 7
value = 5, 6

[State 1050, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<ANKIHOU TAUNT>=============================
[Statedef 1095]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 2
anim = 1001

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1095, Width]
type = width
trigger1 = animelem = 6
value = ceil(50 * const(size.xscale)), 0

[State 1095, panda]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 1005
ID = 1005
name = "Panda!"
postype = p1
pos = ceil(88 * const(size.xscale)), -90
ownpal = 1

[State 1095, Snd]
type = playsnd
trigger1 = anim = 1001 && animelem = 4
value = 4, 9
channel = 0

[State 1095, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<SENPUUBU>=============================
;--- START ---
[Statedef 1100]
type = U
movetype = A
anim = 1100
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 75
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1100, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype != A
statetype = S
physics = S
[State 1100, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = A
statetype = A
physics = N

[State 1100, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_z), 3, ifelse(map(str_y), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1100, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(random < 500, 3, ifelse(random < 500, 2, 1))
ignorehitpause = 1

[State 1100, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1100, Dust]
type = explod
trigger1 = (statetype = A) && animelem = 3
anim = 7107
ID = 7107
sprpriority = 2
postype = p1
pos = ceil(16 * const(size.xscale)), 8
removetime = -2
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1100, Dust]
type = explod
trigger1 = (statetype = A) && animelem = 3
anim = 7107
ID = 7107
sprpriority = -2
postype = p1
pos = ceil(59 * const(size.xscale)), 2
removetime = -2
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 17
value = 3, 0
channel = 0
[State 1100, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 0

[State 1100, Width]
type = width
trigger1 = anim = 1100
edge = ceil(60 * const(size.xscale)), 0

[State 1100, Push]
type = playerpush
trigger1 = animelemtime(7) >= 0 || statetype = A
value = 0

[State 1100, Type]
type = statetypeset
trigger1 = animelemtime(12) >= 0
statetype = A
physics = N

[State 1100, pos12 - 15]
type = posadd
trigger1 = animelem = 12 || animelem = 13 || animelem = 14 || animelem = 15
x = ifelse((animelem = 12), 25, ifelse((animelem = 13), 5, 4)) * const(size.xscale)
y = ifelse((animelem = 12), -3, ifelse((animelem = 13), -1, ifelse((animelem = 14), -4, -3))) * const(size.yscale)

[State 1100, pos16 - 19]
type = posadd
trigger1 = animelem = 16 || animelem = 17 || animelem = 18 || animelem = 19
x = ifelse((animelem = 16), 7, ifelse((animelem = 17), 4, ifelse((animelem = 18), -21, 3))) * const(size.xscale)
y = ifelse((animelem = 16), -4, ifelse((animelem = 17), -2, ifelse((animelem = 18), -29, -5))) * const(size.yscale)

[State 1100, End]
type = changestate
trigger1 = !animtime
value = 1101


;--- SWING ---
[Statedef 1101]
type = A
physics = N
movetype = A
anim = 1101
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1101, swingvar]
type = varadd
trigger1 = !time
var(52) = 1

[State 1101, Push]
type = playerpush
trigger1 = anim = 1101
value = 0
[State 1101, screenbound]
type = screenbound
trigger1 = anim = 1101
value = 0
movecamera = 1, 1

[State 1101, claw]
type = helper
trigger1 = !time
helpertype = normal
stateno = 1105
ID = 1105
name = "Senpuubu Claw"
postype = p1

[State 1101, pos1 -4]
type = posadd
trigger1 = anim = 1101 && (animelem = 1 || animelem = 2 || animelem = 3 || animelem = 4)
x = ifelse((animelem = 1), -7, ifelse((animelem = 2), 0, ifelse((animelem = 3), 3, 4))) * const(size.xscale)
y = ifelse((animelem = 1), -3, ifelse((animelem = 2), 4, ifelse((animelem = 3), 4, 5))) * const(size.yscale)

[State 1101, pos5 -8]
type = posadd
trigger1 = anim = 1101 && (animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8)
x = ifelse((animelem = 5), 3, ifelse((animelem = 6), 5, ifelse((animelem = 7), 7, 22))) * const(size.xscale)
y = ifelse((animelem = 5), 4, ifelse((animelem = 6), 5, ifelse((animelem = 7), 8, 11))) * const(size.yscale)

[State 1101, pos9 -12]
type = posadd
trigger1 = anim = 1101 && (animelem = 9 || animelem = 10 || animelem = 11 || animelem = 12)
x = ifelse((animelem = 9), 4, ifelse((animelem = 10), 9, ifelse((animelem = 11), 5, 18))) * const(size.xscale)
y = ifelse((animelem = 9), 3, ifelse((animelem = 10), 5, ifelse((animelem = 11), 2, 8))) * const(size.yscale)

[State 1101, pos13 -16]
type = posadd
trigger1 = anim = 1101 && (animelem = 13 || animelem = 14 || animelem = 15 || animelem = 16)
x = ifelse((animelem = 13), 11, ifelse((animelem = 14), 8, ifelse((animelem = 15), 15, 37))) * const(size.xscale)
y = ifelse((animelem = 13), 5, ifelse((animelem = 14), 2, ifelse((animelem = 15), 3, 0))) * const(size.yscale)

[State 1101, pos17 -20]
type = posadd
trigger1 = anim = 1101 && (animelem = 17 || animelem = 18 || animelem = 19 || animelem = 20)
x = ifelse((animelem = 17), 11, ifelse((animelem = 18), 12, ifelse((animelem = 19), 11, 14))) * const(size.xscale)
y = ifelse((animelem = 17), 0, ifelse((animelem = 18), -1, ifelse((animelem = 19), -1, -3))) * const(size.yscale)

[State 1101, pos21 -24]
type = posadd
trigger1 = anim = 1101 && (animelem = 21 || animelem = 22 || animelem = 23 || animelem = 24)
x = ifelse((animelem = 21), 21, ifelse((animelem = 22), 7, ifelse((animelem = 23), 25, 5))) * const(size.xscale)
y = ifelse((animelem = 21), -4, ifelse((animelem = 22), -4, ifelse((animelem = 23), -3, -2))) * const(size.yscale)

[State 1101, pos25 -28]
type = posadd
trigger1 = anim = 1101 && (animelem = 25 || animelem = 26 || animelem = 27 || animelem = 28)
x = ifelse((animelem = 25), 2, ifelse((animelem = 26), 12, ifelse((animelem = 27), 5, 3))) * const(size.xscale)
y = ifelse((animelem = 25), -1, ifelse((animelem = 26), -9, ifelse((animelem = 27), -2, -4))) * const(size.yscale)

[State 1101, pos29 -32]
type = posadd
trigger1 = anim = 1101 && (animelem = 29 || animelem = 30 || animelem = 31 || animelem = 32)
x = ifelse((animelem = 29), 2, ifelse((animelem = 30), 5, ifelse((animelem = 31), 4, 3))) * const(size.xscale)
y = ifelse((animelem = 29), -2, ifelse((animelem = 30), -5, ifelse((animelem = 31), -5, -6))) * const(size.yscale)

[State 1101, pos33 -36]
type = posadd
trigger1 = anim = 1101 && (animelem = 33 || animelem = 34 || animelem = 35 || animelem = 36)
x = ifelse((animelem = 33), 3, ifelse((animelem = 34), -3, ifelse((animelem = 35), -3, -4))) * const(size.xscale)
y = ifelse((animelem = 33), -4, ifelse((animelem = 34), 4, ifelse((animelem = 35), 6, 5))) * const(size.yscale)

[State 1101, pos37 -40]
type = posadd
trigger1 = anim = 1101 && (animelem = 37 || animelem = 38 || animelem = 39 || animelem = 40)
x = ifelse((animelem = 37), -5, ifelse((animelem = 38), -2, ifelse((animelem = 39), -3, -5))) * const(size.xscale)
y = ifelse((animelem = 37), 5, ifelse((animelem = 38), 2, ifelse((animelem = 39), 4, 2))) * const(size.yscale)

[State 1101, pos41 -44]
type = posadd
trigger1 = anim = 1101 && (animelem = 41 || animelem = 42 || animelem = 43 || animelem = 44)
x = ifelse((animelem = 41), -12, ifelse((animelem = 42), -2, ifelse((animelem = 43), -5, -25))) * const(size.xscale)
y = ifelse((animelem = 41), 9, ifelse((animelem = 42), 1, ifelse((animelem = 43), 2, 3))) * const(size.yscale)

[State 1101, pos45 -48]
type = posadd
trigger1 = anim = 1101 && (animelem = 45 || animelem = 46 || animelem = 47 || animelem = 48)
x = ifelse((animelem = 45), -7, ifelse((animelem = 46), -21, ifelse((animelem = 47), -14, -11))) * const(size.xscale)
y = ifelse((animelem = 45), 4, ifelse((animelem = 46), 4, ifelse((animelem = 47), 3, 1))) * const(size.yscale)

[State 1101, pos49 -52]
type = posadd
trigger1 = anim = 1101 && (animelem = 49 || animelem = 50 || animelem = 51 || animelem = 52)
x = ifelse((animelem = 49), -12, ifelse((animelem = 50), -11, ifelse((animelem = 51), -37, -15))) * const(size.xscale)
y = ifelse((animelem = 49), 1, ifelse((animelem = 50), 0, ifelse((animelem = 51), 0, -3))) * const(size.yscale)

[State 1101, pos53 -56]
type = posadd
trigger1 = anim = 1101 && (animelem = 53 || animelem = 54 || animelem = 55 || animelem = 56)
x = ifelse((animelem = 53), -8, ifelse((animelem = 54), -11, ifelse((animelem = 55), -18, -5))) * const(size.xscale)
y = ifelse((animelem = 53), -2, ifelse((animelem = 54), -5, ifelse((animelem = 55), -8, -2))) * const(size.yscale)

[State 1101, pos57 -60]
type = posadd
trigger1 = anim = 1101 && (animelem = 57 || animelem = 58 || animelem = 59 || animelem = 60)
x = ifelse((animelem = 57), -9, ifelse((animelem = 58), -4, ifelse((animelem = 59), -22, -7))) * const(size.xscale)
y = ifelse((animelem = 57), -5, ifelse((animelem = 58), -3, ifelse((animelem = 59), -11, -8))) * const(size.yscale)

[State 1101, pos61 -64]
type = posadd
trigger1 = anim = 1101 && (animelem = 61 || animelem = 62 || animelem = 63 || animelem = 64)
x = ifelse((animelem = 61), -5, ifelse((animelem = 62), -3, ifelse((animelem = 63), -4, -3))) * const(size.xscale)
y = ifelse((animelem = 61), -5, ifelse((animelem = 62), -4, ifelse((animelem = 63), -5, -4))) * const(size.yscale)

[State 1101, pos65]
type = posadd
trigger1 = anim = 1101 && animelem = 65
y = -4 * const(size.yscale)

[State 1101, Snd]
type = playsnd
trigger1 = animelem = 9 || animelem = 42
value = 5, 14

[State 1101, Anim]
type = changeanim
triggerall = anim = 1101
trigger1 = !animtime
trigger2 = !AIlevel
trigger2 = map(cmd_a) || map(cmd_b) || map(cmd_c)
trigger3 = AIlevel && numhelper(1105)
trigger3 = helper(1105), movehit = 2 && random < 350
trigger4 = animelemtime(34) < 0
trigger4 = (pos x * facing) > (gamewidth / 2)
trigger5 = animelemtime(34) >= 0
trigger5 = (pos x * facing) < (gamewidth / -2)
trigger6 = AIlevel
trigger6 = inguarddist && (p2stateno = [3000, 4999])
value = 1102

[State 1101, Anim]
type = changeanim
triggerall = anim = 1101
trigger1 = var(10) = 1 && animelem = 34
trigger2 = var(10) = 2 && animelem = 47
value = 1102

[State 1101, Ctrl]
type = ctrlset
trigger1 = anim = 1102
value = 1

[State 1101, Type]
type = veladd
trigger1 = anim = 1102
y = 0.45

[State 1101, Vel]
type = velset
trigger1 = anim = 1102 && animelem = 1
trigger1 = numhelper(1105)
x = helper(1105), fvar(5)
y = helper(1105), fvar(15)

[State 1101, Vel]
type = velmul
trigger1 = anim = 1102
x = ifelse(abs(vel x) > 6, 0.9, 1)
y = ifelse(vel y< -6, 0.9, 1)

[State 1101, Type]
type = statetypeset
trigger1 = anim = 1102
statetype = A
movetype = I
physics = N

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1103


;---Land---
[Statedef 1103]
type = S
physics = S
movetype = I
anim = 48
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1103, Pos]
type = posset
trigger1 = 1
y = 0

[State 1103, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1103, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7100
sprpriority = -5
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1103, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<EX SENPUUBU>=============================
;--- START ---
[Statedef 1120]
type = U
movetype = A
anim = 1100
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

[State 1120, ExFX]
type = explod
trigger1 = !time
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(71 * const(size.xscale)), ceil(-69 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1120, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype != A
statetype = S
physics = S
[State 1120, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = A
statetype = A
physics = N

[State 1120, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1120, Dust]
type = explod
trigger1 = (statetype = A) && animelem = 3
anim = 7107
ID = 7107
sprpriority = 2
postype = p1
pos = ceil(16 * const(size.xscale)), 8
removetime = -2
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1120, Dust]
type = explod
trigger1 = (statetype = A) && animelem = 3
anim = 7107
ID = 7107
sprpriority = -2
postype = p1
pos = ceil(59 * const(size.xscale)), 2
removetime = -2
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1120, Snd]
type = playsnd
trigger1 = animelem = 17
value = 3, 0
channel = 0
[State 1120, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 0

[State 1120, Width]
type = width
trigger1 = anim = 1100
edge = ceil(60 * const(size.xscale)), 0

[State 1120, Push]
type = playerpush
trigger1 = animelemtime(7) >= 0 || statetype = A
value = 0

[State 1120, pos12 -15]
type = posadd
trigger1 = animelem = 12 || animelem = 13 || animelem = 14 || animelem = 15
x = ifelse((animelem = 12), 25, ifelse((animelem = 13), 5, 4)) * const(size.xscale)
y = ifelse((animelem = 12), -3, ifelse((animelem = 13), -1, ifelse((animelem = 14), -4, -3))) * const(size.yscale)

[State 1120, pos16 -19]
type = posadd
trigger1 = animelem = 16 || animelem = 17 || animelem = 18 || animelem = 19
x = ifelse((animelem = 16), 7, ifelse((animelem = 17), 4, ifelse((animelem = 18), -21, 3))) * const(size.xscale)
y = ifelse((animelem = 16), -4, ifelse((animelem = 17), -2, ifelse((animelem = 18), -29, -5))) * const(size.yscale)

[State 1120, Type]
type = statetypeset
trigger1 = animelemtime(12) >= 0
statetype = A
physics = N

[State 1120, End]
type = changestate
trigger1 = !animtime
value = 1121


;--- SWING ---
[Statedef 1121]
type = A
physics = N
movetype = A
anim = 1101
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1121, swingvar]
type = varadd
trigger1 = !time
var(52) = 1

[State 1121, Push]
type = playerpush
trigger1 = anim = 1101
value = 0
[State 1121, screenbound]
type = screenbound
trigger1 = anim = 1101
value = 0
movecamera = 1, 1

[State 1121, claw]
type = helper
trigger1 = !time
helpertype = normal
stateno = 1105
ID = 1105
name = "Senpuubu Claw"
postype = p1

[State 1121, pos1 -4]
type = posadd
trigger1 = anim = 1101 && (animelem = 1 || animelem = 2 || animelem = 3 || animelem = 4)
x = ifelse((animelem = 1), -7, ifelse((animelem = 2), 0, ifelse((animelem = 3), 3, 4))) * const(size.xscale)
y = ifelse((animelem = 1), -3, ifelse((animelem = 2), 4, ifelse((animelem = 3), 4, 5))) * const(size.yscale)

[State 1121, pos5 -8]
type = posadd
trigger1 = anim = 1101 && (animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8)
x = ifelse((animelem = 5), 3, ifelse((animelem = 6), 5, ifelse((animelem = 7), 7, 22))) * const(size.xscale)
y = ifelse((animelem = 5), 4, ifelse((animelem = 6), 5, ifelse((animelem = 7), 8, 11))) * const(size.yscale)

[State 1121, pos9 -12]
type = posadd
trigger1 = anim = 1101 && (animelem = 9 || animelem = 10 || animelem = 11 || animelem = 12)
x = ifelse((animelem = 9), 4, ifelse((animelem = 10), 9, ifelse((animelem = 11), 5, 18))) * const(size.xscale)
y = ifelse((animelem = 9), 3, ifelse((animelem = 10), 5, ifelse((animelem = 11), 2, 8))) * const(size.yscale)

[State 1121, pos13 -16]
type = posadd
trigger1 = anim = 1101 && (animelem = 13 || animelem = 14 || animelem = 15 || animelem = 16)
x = ifelse((animelem = 13), 11, ifelse((animelem = 14), 8, ifelse((animelem = 15), 15, 37))) * const(size.xscale)
y = ifelse((animelem = 13), 5, ifelse((animelem = 14), 2, ifelse((animelem = 15), 3, 0))) * const(size.yscale)

[State 1121, pos17 -20]
type = posadd
trigger1 = anim = 1101 && (animelem = 17 || animelem = 18 || animelem = 19 || animelem = 20)
x = ifelse((animelem = 17), 11, ifelse((animelem = 18), 12, ifelse((animelem = 19), 11, 14))) * const(size.xscale)
y = ifelse((animelem = 17), 0, ifelse((animelem = 18), -1, ifelse((animelem = 19), -1, -3))) * const(size.yscale)

[State 1121, pos21 -24]
type = posadd
trigger1 = anim = 1101 && (animelem = 21 || animelem = 22 || animelem = 23 || animelem = 24)
x = ifelse((animelem = 21), 21, ifelse((animelem = 22), 7, ifelse((animelem = 23), 25, 5))) * const(size.xscale)
y = ifelse((animelem = 21), -4, ifelse((animelem = 22), -4, ifelse((animelem = 23), -3, -2))) * const(size.yscale)

[State 1121, pos25 -28]
type = posadd
trigger1 = anim = 1101 && (animelem = 25 || animelem = 26 || animelem = 27 || animelem = 28)
x = ifelse((animelem = 25), 2, ifelse((animelem = 26), 12, ifelse((animelem = 27), 5, 3))) * const(size.xscale)
y = ifelse((animelem = 25), -1, ifelse((animelem = 26), -9, ifelse((animelem = 27), -2, -4))) * const(size.yscale)

[State 1121, pos29 -32]
type = posadd
trigger1 = anim = 1101 && (animelem = 29 || animelem = 30 || animelem = 31 || animelem = 32)
x = ifelse((animelem = 29), 2, ifelse((animelem = 30), 5, ifelse((animelem = 31), 4, 3))) * const(size.xscale)
y = ifelse((animelem = 29), -2, ifelse((animelem = 30), -5, ifelse((animelem = 31), -5, -6))) * const(size.yscale)

[State 1121, pos33 -36]
type = posadd
trigger1 = anim = 1101 && (animelem = 33 || animelem = 34 || animelem = 35 || animelem = 36)
x = ifelse((animelem = 33), 3, ifelse((animelem = 34), -3, ifelse((animelem = 35), -3, -4))) * const(size.xscale)
y = ifelse((animelem = 33), -4, ifelse((animelem = 34), 4, ifelse((animelem = 35), 6, 5))) * const(size.yscale)

[State 1121, pos37 -40]
type = posadd
trigger1 = anim = 1101 && (animelem = 37 || animelem = 38 || animelem = 39 || animelem = 40)
x = ifelse((animelem = 37), -5, ifelse((animelem = 38), -2, ifelse((animelem = 39), -3, -5))) * const(size.xscale)
y = ifelse((animelem = 37), 5, ifelse((animelem = 38), 2, ifelse((animelem = 39), 4, 2))) * const(size.yscale)

[State 1121, pos41 -44]
type = posadd
trigger1 = anim = 1101 && (animelem = 41 || animelem = 42 || animelem = 43 || animelem = 44)
x = ifelse((animelem = 41), -12, ifelse((animelem = 42), -2, ifelse((animelem = 43), -5, -25))) * const(size.xscale)
y = ifelse((animelem = 41), 9, ifelse((animelem = 42), 1, ifelse((animelem = 43), 2, 3))) * const(size.yscale)

[State 1121, pos45 -48]
type = posadd
trigger1 = anim = 1101 && (animelem = 45 || animelem = 46 || animelem = 47 || animelem = 48)
x = ifelse((animelem = 45), -7, ifelse((animelem = 46), -21, ifelse((animelem = 47), -14, -11))) * const(size.xscale)
y = ifelse((animelem = 45), 4, ifelse((animelem = 46), 4, ifelse((animelem = 47), 3, 1))) * const(size.yscale)

[State 1121, pos49 -52]
type = posadd
trigger1 = anim = 1101 && (animelem = 49 || animelem = 50 || animelem = 51 || animelem = 52)
x = ifelse((animelem = 49), -12, ifelse((animelem = 50), -11, ifelse((animelem = 51), -37, -15))) * const(size.xscale)
y = ifelse((animelem = 49), 1, ifelse((animelem = 50), 0, ifelse((animelem = 51), 0, -3))) * const(size.yscale)

[State 1121, pos53 -56]
type = posadd
trigger1 = anim = 1101 && (animelem = 53 || animelem = 54 || animelem = 55 || animelem = 56)
x = ifelse((animelem = 53), -8, ifelse((animelem = 54), -11, ifelse((animelem = 55), -18, -5))) * const(size.xscale)
y = ifelse((animelem = 53), -2, ifelse((animelem = 54), -5, ifelse((animelem = 55), -8, -2))) * const(size.yscale)

[State 1121, pos57 -60]
type = posadd
trigger1 = anim = 1101 && (animelem = 57 || animelem = 58 || animelem = 59 || animelem = 60)
x = ifelse((animelem = 57), -9, ifelse((animelem = 58), -4, ifelse((animelem = 59), -22, -7))) * const(size.xscale)
y = ifelse((animelem = 57), -5, ifelse((animelem = 58), -3, ifelse((animelem = 59), -11, -8))) * const(size.yscale)

[State 1121, pos61 -64]
type = posadd
trigger1 = anim = 1101 && (animelem = 61 || animelem = 62 || animelem = 63 || animelem = 64)
x = ifelse((animelem = 61), -5, ifelse((animelem = 62), -3, ifelse((animelem = 63), -4, -3))) * const(size.xscale)
y = ifelse((animelem = 61), -5, ifelse((animelem = 62), -4, ifelse((animelem = 63), -5, -4))) * const(size.yscale)

[State 1121, pos65]
type = posadd
trigger1 = anim = 1101 && animelem = 65
y = -4 * const(size.yscale)

[State 1121, Snd]
type = playsnd
trigger1 = animelem = 9 || animelem = 42
value = 5, 14

[State 1121, Anim]
type = changeanim
triggerall = anim = 1101
trigger1 = !animtime && time > 120
trigger2 = !AIlevel
trigger2 = map(cmd_a) || map(cmd_b) || map(cmd_c)
trigger3 = AIlevel && numhelper(1125)
trigger3 = helper(1125), movehit = 2 && random < 350
trigger4 = animelemtime(34) < 0
trigger4 = (pos x * facing) > (gamewidth / 2)
trigger5 = animelemtime(34) >= 0
trigger5 = (pos x * facing) < (gamewidth / -2)
value = 1102

[State 1121, Ctrl]
type = ctrlset
trigger1 = anim = 1102
value = 1

[State 1121, Accel]
type = veladd
trigger1 = anim = 1102
y = 0.45

[State 1121, Vel]
type = velset
trigger1 = anim = 1102 && animelem = 1
trigger1 = numhelper(1105)
x = helper(1105), fvar(5)
y = helper(1105), fvar(15)

[State 1121, Vel]
type = velmul
trigger1 = anim = 1102
x = ifelse(abs(vel x) > 6, 0.9, 1)
y = ifelse(vel y< -6, 0.9, 1)

[State 1121, Type]
type = statetypeset
trigger1 = anim = 1102
statetype = A
physics = N
movetype = I

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1103


;======================<REITOU>=============================
[Statedef 1200]
type = S
physics = S
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 50
facep2 = 1

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
var(10) = ifelse(map(str_c), 3, ifelse(map(str_b), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1200, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(p2bodydistx) < 100, 2, 3)
ignorehitpause = 1

[State 1200, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 5
value = 3, 2
channel = 0

[State 1205, Snd]
type = playsnd
trigger1 = animelem = 6
value = 5, 5
channel = 1

[State 1200, Blade]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 1205
ID = 1205
name = "Blade"
postype = p1
pos = ifelse(var(10) = 3, 160, ifelse(var(10) = 2, 90, 20)), 0
ownpal = 1
size.xscale = const(size.xscale)
size.shadowoffset = -5

[State 1200, Loop]
type = changeanim
trigger1 = animelem = 9
trigger1 = time < 35
value = 1200
elem = 7

[State 1200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1



;========================<EX REITOU>=============================
[Statedef 1220]
type = S
physics = S
movetype = A
anim = 1200
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

[State 1220, ExFX]
type = explod
trigger1 = !time
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(-2 * const(size.xscale)), ceil(-46 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1220, NHB]
type = nothitby
trigger1 = time < 15
time = 1
value = SCA

[State 1220, Snd]
type = playsnd
trigger1 = animelem = 5
value = 3, 2
channel = 0

[State 1220, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 3
channel = 1

[State 1220, Snd]
type = playsnd
trigger1= time = 10 || time = 16
value = 5, 5
channel = 2

[State 1220, Blade]
type = helper
trigger1 = time = 10
helpertype = normal
stateno = 1205
ID = 1225
name = "Blade"
postype = p1
pos = 0, 0
ownpal = 1
size.xscale = const(size.xscale)
size.shadowoffset = -5

[State 1220, Blade]
type = helper
trigger1 = time = 16
helpertype = normal
stateno = 1205
ID = 1225
name = "Blade"
postype = p1
pos = ceil(70 * const(size.xscale)), 0
ownpal = 1
size.xscale = const(size.xscale)
size.shadowoffset = -5

[State 1220, Blade]
type = helper
trigger1 = time = 16
helpertype = normal
stateno = 1205
ID = 1225
name = "Blade"
postype = p1
pos = ceil(-70 * const(size.xscale)), 0
facing = -1
ownpal = 1
size.xscale = const(size.xscale)
size.shadowoffset = -5

[State 1220, Loop]
type = changeanim
trigger1 = animelem = 9
trigger1 = time < 35
value = 1200
elem = 7

[State 1220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<HENKYOUKI>=============================
[Statedef 1300]
type = U
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 75
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1300, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype != A
statetype = S
physics = S
[State 1300, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = A
statetype = A
physics = N
[State 1300, Anim]
type = changeanim
trigger1 = !time
value = ifelse((statetype != A), 1300, 1301)

[State 1300, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_z), 3, ifelse(map(str_y), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1300, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = 3
ignorehitpause = 1

[State 1300, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1300, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
value = ceil(30 * const(size.xscale)), 0

[State 1300, Dust]
type = explod
trigger1 = (anim = 1301) && animelem = 2
anim = 7107
ID = 7107
sprpriority = 2
postype = p1
pos = ceil(-15 * const(size.xscale)), -13
removetime = -2
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1300, Dust]
type = explod
trigger1 = (anim = 1301) && animelem = 2
anim = 7107
ID = 7107
sprpriority = 2
postype = p1
pos = ceil(68 * const(size.xscale)), -13
removetime = -2
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1300, Snd]
type = playsnd
trigger1 = animelem = 5
value = 3, 11
channel = 0
[State 1300, Snd]
type = playsnd
trigger1 = animelem = 5
value = 5, 2

[State 1300, Shake]
type = envshake
trigger1 = animelem = 5
time = 10
freq = 180
ampl = 2

[State 1300, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 5
value2 = SCA, AA, AT
time = 1

[State 1300, Soundwave]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 1305
ID = 1305
name = "Soundwave"
postype = p1
pos = ceil(67 * const(size.xscale)), ifelse((anim = 1300), -41, -56)
ownpal = 1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)

[State 1300, Dust]
type = explod
trigger1 = anim = 1300 && animelemtime(5) = 1
trigger2 = anim = 1301 && animelemtime(5) = 1 && pos y >= -25
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
pos = ceil(63 * const(size.xscale)), 0
removetime = -2
ownpal = 1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 1300, Type]
type = veladd
trigger1 = anim = 1301 && animelemtime(10) >= 0
y = 0.45

[State 1300, Startup Fix]
type = changeanim
triggerall = anim = [1300, 1301]
triggerall = animelemtime(3) > 0 && animelemtime(4) < 0
trigger1 = var(10) = 1 && animelemtime(3) = 2
trigger2 = var(10) = 1 && animelemtime(3) = 2
value = anim
elem = 4

[State 1300, Recovery]
type = changeanim
triggerall = animelem = 8
triggerall = anim = [1300, 1301]
trigger1 = var(10) = 1 && time < 31
trigger2 = var(10) = 2 && time < 36
trigger3 = var(10) = 3 && time < 40
value = anim
elem = 6

[State 1300, End]
type = changestate
trigger1 = anim = 1300 && !animtime
value = 0
ctrl = 1

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52



;========================<EX HENKYOUKI>=============================
[Statedef 1320]
type = U
movetype = A
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

[State 1320, ExFX]
type = explod
trigger1 = !time
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(-10 * const(size.xscale)), ceil(-65 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1320, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype != A
statetype = S
physics = S
[State 1320, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = A
statetype = A
physics = N
[State 1320, Anim]
type = changeanim
trigger1 = !time
value = ifelse((statetype != A), 1300, 1301)

[State 1320, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1320, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
value = ceil(30 * const(size.xscale)), 0

[State 1320, Dust]
type = explod
trigger1 = (anim = 1301) && animelem = 2
anim = 7107
ID = 7107
sprpriority = 2
postype = p1
pos = ceil(-15 * const(size.xscale)), -13
removetime = -2
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1320, Dust]
type = explod
trigger1 = (anim = 1301) && animelem = 2
anim = 7107
ID = 7107
sprpriority = 2
postype = p1
pos = ceil(68 * const(size.xscale)), -13
removetime = -2
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1320, Snd]
type = playsnd
trigger1 = animelem = 5
value = 3, 2
channel = 0
[State 1320, Snd]
type = playsnd
trigger1 = animelem = 5
value = 5, 12

[State 1320, Shake]
type = envshake
trigger1 = animelem = 5
time = 10
freq = 180
ampl = 2

[State 1320, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 5
value2 = SCA, AA, AT
time = 1

[State 1320, soundwave]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 1325
ID = 1325
name = "Soundwave"
postype = p1
pos = ceil(67 * const(size.xscale)), ifelse((anim = 1300), -41, -56)
ownpal = 1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)

[State 1320, Dust]
type = explod
trigger1 = anim = 1300 && animelemtime(5) = 1
trigger2 = anim = 1301 && animelemtime(5) = 1 && pos y >= -25
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
pos = ceil(63 * const(size.xscale)), 0
removetime = -2
ownpal = 1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 1320, Type]
type = veladd
trigger1 = anim = 1301 && animelemtime(10) >= 0
y = 0.45

[State 1320, Recovery]
type = changeanim
trigger1 = animelem = 8
trigger1 = anim = [1300, 1301]
trigger1 = time < 41
value = anim
elem = 6

[State 1320, End]
type = changestate
trigger1 = anim = 1300 && !animtime
value = 0
ctrl = 1

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;======================<HOUTENGEKI>=============================
[Statedef 1400]
type = S
physics = S
movetype = A
velset = 0, 0
ctrl = 0
anim = 1400
sprpriority = 2
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1400, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1400, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 1400, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= ceil(25 * const(size.xscale))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = S, ST
hitflag = M
priority = 7, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p2facing = 1
p1stateno = 1405
p2stateno = 1406
guard.dist = 0
fall = 1
numhits = 0
hitsound = -1 + 0 * (var(31) := 800)

[State 1400, misssnd]
type = playsnd
trigger1 = animelem = 4
value = 5000, 1
channel = 0

[State 1400, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 1
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 1400, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER ---
[Statedef 1405]
type = S
movetype = A
physics = S
anim = 1405
poweradd = 100
ctrl = 0

[State Throw]
type = targetstate
trigger1 = !time
value = 1406

[State 1405, Throw]
type = targetstate
trigger1 = !time
value = 1406

[State 1405, throwsnd]
type = playsnd
trigger1 = animelem = 3
value = 3, 6
channel = 0

[State 1405, throwsnd]
type = playsnd
trigger1 = animelem = 2
value = 1, 6
channel = 1

[State 1405, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 65 * const(size.xscale), 0

[State 1405, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 48 * const(size.xscale), -103

[State 1405, Bind 3]
type = targetbind
trigger1 = animelem = 3
pos = -8 * const(size.xscale), -140

[State 1405, Juggle]
type = varadd
trigger1 = animelem = 1
var(15) = 1

[State 1405, Throw]
type = targetstate
trigger1 = animelem = 3
value = 1407

[State 1405, End]
type = changestate
trigger1 = !animtime
value = 1410


;--- SPINNING ---
[Statedef 1410]
type = C
movetype = A
physics = C
anim = 1410
ctrl = 0

[State 1410, Throw]
type = targetstate
trigger1 = numtarget && target, vel y > 0
trigger1 = target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
value = 1411
[State 1410, Throw]
type = targetstate
trigger1 = numtarget && target, time && target, vel y > 0
trigger1 = target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
value = 1412

[State 1405, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = target, stateno = 1412
pos = 3 * const(size.xscale), -(target, const(size.air.front) + 50)

[State 1410, Snd]
type = playsnd
trigger1 = animelemtime(3) >= 0 && !(time % 9)
value = 1, 9
channel = 1
ignorehitpause = 1
[State 1410, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 16
freqmul = 1.25
volumescale = 75

[State 1410, claws]
type = explod
trigger1 = animelem = 3
anim = 1401
ID = 1400
sprpriority = 2
postype = p1
scale = const(size.xscale), const(size.yscale)
bindtime = -1
removetime = 120
removeongethit = 1

[State 1410, claws]
type = explod
trigger1 = animelem = 3
anim = 1402
ID = 1400
sprpriority = 0
postype = p1
scale = const(size.xscale), const(size.yscale)
bindtime = -1
removetime = -1
removeongethit = 1

[State 1410, Damage]
type = targetlifeadd
triggerall = animelemtime(3) >= 0 && numtarget
trigger1 = target, vel y > 0 && target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
trigger2 = target, vel y > 0 && target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
trigger3 = target, stateno = 1412 && !(time % 6)
value = -ceil(17 * fvar(10))

[State 1410, Damage]
type = targetpoweradd
triggerall = animelemtime(3) >= 0 && numtarget
trigger1 = target, vel y > 0 && target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
trigger2 = target, vel y > 0 && target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
trigger3 = target, stateno = 1412 && !(time % 6)
value = 10

[State 1410, Hit]
type = hitadd
triggerall = animelemtime(3) >= 0 && numtarget
trigger1 = target, vel y > 0 && target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
trigger2 = target, vel y > 0 && target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
trigger3 = target, stateno = 1412 && !(time % 6)
value = 1

[State 1410, Juggle]
type = varadd
triggerall = animelemtime(3) >= 0 && numtarget
trigger1 = target, vel y > 0 && target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
trigger2 = target, vel y > 0 && target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
trigger3 = target, stateno = 1412 && !(time % 6)
var(15) = 1

[State 1410, HitSound]
type = playsnd
triggerall = animelemtime(3) >= 0 && numtarget
trigger1 = target, vel y > 0 && target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
trigger2 = target, vel y > 0 && target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
trigger3 = target, stateno = 1412 && !(time % 6)
value = 2, 9
channel = 2

[State 1410, Spark]
type = helper
triggerall = map(mysparks)
triggerall = animelemtime(3) >= 0 && numtarget
trigger1 = target, vel y > 0 && target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
trigger2 = target, vel y > 0 && target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
trigger3 = target, stateno = 1412 && !(time % 6)
helpertype = normal
stateno = 8022
ID = 8000
name = "Spark"
postype = p1
pos = 0, -50
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1410, Spark Screenpack]
type = explod
triggerall = !map(mysparks)
triggerall = animelemtime(3) >= 0 && numtarget
trigger1 = target, vel y > 0 && target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
trigger2 = target, vel y > 0 && target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
trigger3 = target, stateno = 1412 && !(time % 6)
anim = F2
ID = 8000
postype = p1
pos = 0, -50
random = 10, 10
;random = 20, 20
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 1410, Blood]
type = helper
triggerall = map(blood)
triggerall = map(mysparks)
triggerall = animelemtime(3) >= 0 && numtarget
trigger1 = target, vel y > 0 && target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
trigger2 = target, vel y > 0 && target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
trigger3 = target, stateno = 1412 && !(time % 6)
helpertype = normal
stateno = 7052
ID = 7050
name = "Blood"
postype = p2
ownpal = 1
facing = ifelse((target, facing = facing), -1, 1)
ignorehitpause = 1

[State 1410, Blood Screenpack]
type = explod
triggerall = map(blood)
triggerall = !map(mysparks)
triggerall = animelemtime(3) >= 0 && numtarget
trigger1 = target, vel y > 0 && target, stateno = 1407 && target, pos y >= -(target, const(size.air.front) + 38)
trigger2 = target, vel y > 0 && target, stateno = 1411 && target, pos y >= -(target, const(size.air.front) + 38)
trigger3 = target, stateno = 1412 && !(time % 6)
anim = F12
ID = 8000
postype = p1
pos = 0, -50
random = 10, 10
;random = 20, 20
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 1410, End]
type = changestate
trigger1 = hitcount >= 9 || !numtarget || time >= 180
value = 1415


;--- END ---
[Statedef 1415]
type = S
movetype = I
physics = S
anim = 1415
ctrl = 0

;[State 1415, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = !time
;trigger1 = numtarget
;value = -ceil(150 * fvar(10))

[State 1415, Remove Houtengeki FX]
type = removeexplod
trigger1 = !time
ID = 1400

[State 1410, End]
type = targetstate
trigger1 = !time
value = 1416

[State 1415, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 1406]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 1406, Anim]
type = changeanim2
trigger1 = !time
value = 1406

[State 1406, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 1406, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1407]
type = A
movetype = H
physics = N
velset = 0, -10
sprpriority = 2

[State 1407, Accel]
type = veladd
trigger1 = 1
y = 0.45

[State 1407, fix]
type = posadd
trigger1 = animelem = 3
y = -const(size.mid.pos.y)

[State 1407, Turn]
type = turn
trigger1 = animelem = 3
persistent = 0

[State 1407, Anim]
type = changeanim2
trigger1 = animelemtime(3) > 0 && vel y >= 2
value = 1406
elem = 7
persistent = 0

[State 1407, Hitground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100


[Statedef 1411]
type = A
movetype = H
physics = N
velset = 0, -6
sprpriority = 0

[State 1411, fix]
type = posadd
trigger1 = !time
y = const(size.mid.pos.y) / 2

[State 1411, Accel]
type = veladd
trigger1 = 1
y = 0.45

[State 1411, Anim]
type = changeanim2
trigger1 = !time
value = 1411

[State 1411, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 1411, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1412]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 1412, Anim]
type = changeanim2
trigger1 = !time
value = 1412

[State 1412, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 1412, Shake]
type = offset
trigger1 = 1
x = ifelse(random < 500, -1, 1)
y = ifelse(random < 500, -1, 1)

[State 1412, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1416]
type = A
movetype = H
physics = N
velset = -4.5, -4.5

[State 1416, Accel]
type = veladd
trigger1 = 1
y = 0.45

[State 1416, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5052), 5052, 5030)

[State 1416, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 1416, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1416, Hitground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100


;====================================<PURSUIT>=====================================
[Statedef 1450]
type = A
movetype = A
physics = N
anim = 1450
velset = 0, 0
poweradd = 50
sprpriority = 2
ctrl = 0
facep2 = 1
juggle = 7

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1450, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1450, Push]
type = playerpush
trigger1 = anim != 1451 || vel y < 0
value = 0
ignorehitpause = 1

[State 1450, Vel]
type = velset
trigger1 = numenemy
trigger1 = anim = 1450 && animelem = 2
x = (p2dist x / 30.0)
y = -14

[State 1450, Vel]
type = turn
trigger1 = anim = 1450 && vel x < 0
persistent = 0
[State 1450, Vel]
type = velset
trigger1 = anim = 1450 && vel x > 10
x = 10

[State 1450, Accel]
type = veladd
trigger1 = anim = 1450 && animelemtime(2) >= 0
y = 1

[State 1450, Snd]
type = playsnd
trigger1 = anim = 1450 && animelem = 4
value = 3, 8
channel = 0

[State 1450, claws]
type = explod
trigger1 = anim = 1450 && animelem = 10
anim = 1455
ID = 1455
sprpriority = 2
postype = p1
scale = const(size.xscale), const(size.yscale)
bindtime = -1
removetime = 300
removeongethit = 1

[State 1450, claws]
type = explod
trigger1 = anim = 1450 && animelem = 10
anim = 1456
ID = 1455
sprpriority = 0
postype = p1
scale = const(size.xscale), const(size.yscale)
bindtime = -1
removetime = 120
removeongethit = 1

[State 1450, Snd]
type = playsnd
trigger1 = anim = 1450 && animelemtime(10) >= 0 && !(gametime % 9)
value = 1, 9
channel = 1
ignorehitpause = 1

[State 1450, Hit]
type = hitdef
trigger1 = anim = 1450 && !(time % 8)
attr = A, SA
damage = 24, 6
dizzypoints = 0
animtype = Hard
guardflag = HA
hitflag = FD
priority = 4, Hit
pausetime = 0, 0
sparkno = -1 + 0 * (var(33) := 8023)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := -32) * (var(36) := 44), var(37) := -25
hitsound = -1 + 0 * (var(31) := 9)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = -4, -4
down.velocity = 0, 0
down.hittime = 30
getpower = ifelse(movehit, 25, 100), ifelse(moveguarded, 25, 50)
givepower = 40, 40
fall = (p2statetype = L)
fall.recover = 1
fall.recovertime = 120
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
forcestand = 1
ID = 1450

[State 1450, OTG - Stay Down]
redirectID = target(1450), ID
type = selfstate
trigger1 = movehit = 1
trigger1 = numtarget(1450)
trigger1 = target(1450), stateno = 5020 || target(1450), stateno = 5070
trigger1 = target(1450), prevstateno = [5100, 5101]
trigger1 = target(1450), alive && target, hitfall
value = 5080
ignorehitpause = 1

[State 1450, OTG - Stay Down]
redirectID = target(1450), ID
type = posset
trigger1 = numtarget(1450)
trigger1 = target(1450), pos y
trigger1 = target(1450), stateno = 5080
y = 0
ignorehitpause = 1

[State 1450, Bind]
type = targetbind
trigger1 = movehit = 1 && numtarget(1450)
trigger1 = target(1450), statetype = L
ID = 1450
pos = 0, -pos y
persistent = 0
ignorehitpause = 1

[State 1450, Vel]
type = velset
trigger1 = anim = 1450 && vel y > 0 && (pos y > -vel y) && movehit && numtarget(1450)
trigger1 = target(1450), statetype = L
x = 0
y = 0
ignorehitpause = 1

[State 1450, Anim]
type = changeanim
trigger1 = anim = 1450 && movehit && hitcount >= 4
trigger2 = anim != 1451 && time >= 60
value = 1451

[State 1460, Pos]
type = posset
trigger1 = anim = 1450
trigger1 = movehit = 1 && numtarget(1460)
trigger1 = target(1460), statetype = L
x = ceil(target(1460), pos x)
y = 0
ignorehitpause = 1

[State 1450, Vel]
type = velset
trigger1 = anim = 1451
x = -3
y = -6
persistent = 0

[State 1450, Type]
type = statetypeset
trigger1 = anim = 1451
statetype = A
physics = N
movetype = I

[State 1450, Type]
type = veladd
trigger1 = anim = 1451
y = 0.45

[State 1450, Remove Pursuit FX]
type = removeexplod
trigger1 = vel y > 0 && pos y >= 10
trigger2 = anim = 1451
ID = 1455

[State 1450, End]
type = changestate
triggerall = vel y > 0
trigger1 = anim = 1450 && pos y >= 10
trigger2 = anim = 1451 && pos y > (-vel y)
value = 52


;=============================<EX PURSUIT>============================
[Statedef 1460]
type = A
movetype = A
physics = N
anim = 1450
velset = 0, 0
poweradd = -500
sprpriority = 2
ctrl = 0
facep2 = 1
juggle = 7

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1460, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1460, ExFX]
type = explod
trigger1 = !time
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(10 * const(size.xscale)), ceil(-80 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1460, Push]
type = playerpush
trigger1 = anim != 1451 || vel y < 0
value = 0
ignorehitpause = 1

[State 1460, Vel]
type = velset
trigger1 = numenemy
trigger1 = anim = 1450 && animelem = 2
x = (p2dist x / 30.0)
y = -14

[State 1460, Vel]
type = turn
trigger1 = anim = 1450 && vel x < 0
persistent = 0
[State 1460, Vel]
type = velset
trigger1 = anim = 1450 && vel x > 10
x = 10

[State 1460, Accel]
type = veladd
trigger1 = anim = 1450 && animelemtime(2) >= 0
y = 1

[State 1460, Snd]
type = playsnd
trigger1 = anim = 1450 && animelem = 4
value = 3, 8
channel = 0

[State 1460, claws]
type = explod
trigger1 = anim = 1450 && animelem = 10
anim = 1455
ID = 1455
sprpriority = 2
postype = p1
scale = const(size.xscale), const(size.yscale)
bindtime = -1
removetime = 300
removeongethit = 1

[State 1460, claws]
type = explod
trigger1 = anim = 1450 && animelem = 10
anim = 1456
ID = 1455
sprpriority = 0
postype = p1
scale = const(size.xscale), const(size.yscale)
bindtime = -1
removetime = 120
removeongethit = 1

[State 1460, Snd]
type = playsnd
trigger1 = anim = 1450 && animelemtime(10) >= 0 && !(gametime % 9)
value = 1, 9
channel = 1
ignorehitpause = 1

[State 1460, Hit]
type = hitdef
trigger1 = anim = 1450 && !(time % 6)
attr = A, SA
damage = 17, 4
dizzypoints = 0
animtype = Hard
guardflag = HA
hitflag = FD
priority = 4, Hit
pausetime = 0, 0
sparkno = -1 + 0 * (var(33) := 8023)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := -32) * (var(36) := 44), var(37) := -25
hitsound = -1 + 0 * (var(31) := 9)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = -4, -4
down.velocity = 0, 0
down.hittime = 30
getpower = 0
givepower = 40, 40
fall = (p2statetype = L)
fall.recover = 0
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
forcestand = 1
ID = 1460

[State 1460, Vel]
type = velset
trigger1 = anim = 1450 && vel y > 0 && (pos y > -vel y) && movehit && numtarget(1460)
trigger1 = target(1460), statetype = L
x = 0
y = 0
ignorehitpause = 1

[State 1460, Bind
type = targetbind
trigger1 = movehit = 1 && numtarget(1460)
trigger1 = anim = 1450 && vel y > 0 && (pos y > -vel y)
trigger1 = target(1460), statetype = L
ID = 1460
pos = 0, -pos y
persistent = 0
ignorehitpause = 1

[State 1460, OTG - Stay Down]
redirectID = target(1460), ID
type = selfstate
trigger1 = movehit = 1
trigger1 = numtarget(1460)
trigger1 = target(1460), stateno = 5020 || target(1460), stateno = 5070
trigger1 = target(1460), prevstateno = [5100, 5101]
trigger1 = target(1460), alive && target, hitfall
value = 5080
ignorehitpause = 1

[State 1460, OTG - Stay Down]
redirectID = target(1460), ID
type = posset
trigger1 = numtarget(1460)
trigger1 = target(1460), pos y
trigger1 = target(1460), stateno = 5080
y = 0
ignorehitpause = 1

[State 1460, Bind]
type = targetbind
trigger1 = movehit = 1 && numtarget(1460)
trigger1 = target(1460), statetype = L
ID = 1460
pos = 0, -pos y
persistent = 0
ignorehitpause = 1

[State 1460, Anim]
type = changeanim
trigger1 = anim = 1450 && movehit && hitcount >= 8
trigger2 = anim != 1451 && time >= 80
value = 1451

[State 1460, Vel]
type = velset
trigger1 = anim = 1451
x = -3
y = -6
persistent = 0

[State 1460, Type]
type = statetypeset
trigger1 = anim = 1451
statetype = A
movetype = I

[State 1460, Type]
type = veladd
trigger1 = anim = 1451
y = 0.45

[State 1460, Remove Pursuit FX]
type = removeexplod
trigger1 = anim = 1450 && vel y > 0 && (pos y > -vel y)
trigger2 = anim = 1451
ID = 1455

[State 1460, End]
type = changestate
triggerall = vel y > 0
trigger1 = anim = 1450 && pos y >= 10
trigger2 = anim = 1451 && pos y > (-vel y)
value = 52
