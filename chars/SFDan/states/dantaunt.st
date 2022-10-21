; ______________________________
;| Dan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<TAUNT STATES>=========================================
;==============================================================================================

;===========<Standing>==========
[Statedef 500]
type = S
movetype = I
physics = S
anim = 500
velset = 0, 0
poweradd = 50 * !var(20)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 500, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 13
channel = 0

[State 500, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1

[State 500, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;===========<Crouching>==========
[Statedef 501]
type = C
movetype = I
physics = C
anim = 501
velset = 0, 0
poweradd = 50 * !var(20)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 501, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 1
channel = 0

[State 501, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1

[State 501, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;===========<Air>==========
[Statedef 502]
type = A
movetype = I
physics = N
anim = 502
poweradd = 50 * !var(20)
sprpriority = 1
ctrl = 0


[State 502, accel]
type = veladd
trigger1 = 1
y = const(movement.yaccel) * 0.75

[State 502, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 17
channel = 0

[State 502, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1

[State Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;===========<Rolling Forward>==========
[Statedef 503]
type = A
movetype = I
physics = C
anim = 503
velset = 0, 0
sprpriority = 1
ctrl = 0
facep2 = 1

[State 503, Push]
type = playerpush
trigger1 = animelemtime(15) < 0
value = 0

[State 503, turn]
type = turn
trigger1 = animelem = 16 && p2dist x < 0

[State 503, Vel]
type = velset
trigger1 = animelemtime(3) >= 0 && animelemtime(14) < 0
x = 5

[State 503, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 102

[State 503, Dust]
type = explod
trigger1 = animelemtime(3) >= 0 && animelemtime(15) < 0 && !(time % 5)
anim = 7103
sprpriority = 3
postype = p1
vel = -1, 0
scale = 0.5, 0.5
ownpal = 1

[State 503, Power]
type = poweradd
trigger1 = animelem = 19
trigger1 = !var(20)
value = 100;getpower

[State 503, Snd]
type = playsnd
trigger1 = animelem = 19
value = 4, 14
channel = 0

[State 503, Snd]
type = playsnd
trigger1 = animelem = 19
value = 1, 1
channel = 1

[State 503, Type]
type = statetypeset
trigger1 = animelem = 14
statetype = S
physics = S

[State 503, Vel]
type = velset
trigger1 = animelem = 16
x = 0

[State 503, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;===========<Rolling Backward>==========
[Statedef 504]
type = A
movetype = I
physics = N
anim = 504
velset = 0, 0
sprpriority = 1
ctrl = 0
facep2 = 1

[State 504, Push]
type = playerpush
trigger1 = animelemtime(15) < 0
value = 0

[State 504, turn]
type = turn
trigger1 = animelem = 16 && p2dist x < 0

[State 504, Vel]
type = velset
trigger1 = animelemtime(3) >= 0 && animelemtime(14) < 0
x = -5

[State 504, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 105

[State 504, Dust]
type = explod
trigger1 = animelemtime(3) >= 0 && animelemtime(15) < 0 && !(time % 5)
anim = 7103
sprpriority = 3
postype = p1
vel = 1, 0
scale = 0.5, 0.5
ownpal = 1

[State 504, Power]
type = poweradd
trigger1 = animelem = 19
trigger1 = !var(20)
value = 100;getpower

[State 504, Snd]
type = playsnd
trigger1 = animelem = 19
value = 4, 2
channel = 0
[State 504, Snd]
type = playsnd
trigger1 = animelem = 19
value = 1, 1
channel = 1

[State 504, Type]
type = statetypeset
trigger1 = animelem = 14
statetype = S
physics = S

[State 504, Vel]
type = velset
trigger1 = animelem = 16
x = 0

[State 504, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;===========<Chouhatsu Shinwa Standing>==========
[Statedef 510]
type = S
movetype = I
physics = S
anim = 500
velset = 0, 0
poweradd = 200 * (prevstateno != 510)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 510, Button]
type = varset
trigger1 = !time
var(11) = ifelse(command = "x", 1, ifelse(command = "y", 2, ifelse(command = "z", 3, ifelse(command = "a", 4, ifelse(command = "b", 5, ifelse(command = "c", 6, ceil(random / 167)))))))

[State 510, Snd]
type = playsnd
trigger1 = animelem = 3 && (var(11) = [1, 3])
value = 3, ifelse(var(11) = 1, 0, ifelse(var(11) = 2, 1, 2))
channel = 0
[State 510, Snd]
type = playsnd
trigger1 = animelem = 3 && (var(11) = [4, 6])
value = 4, ifelse(var(11) = 4, 2, ifelse(var(11) = 5, 1, 11))
channel = 0
[State 510, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1

[State 510, Taunt Hit]
type = helper
trigger1 = animelem = 3
trigger1 = var(53) && !numhelper(4190)
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1
persistent = 0

[State 510, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;===========<Chouhatsu Shinwa Crouching>==========
[Statedef 511]
type = C
movetype = I
physics = C
anim = 501
velset = 0, 0
poweradd = 200 * (prevstateno != 511)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 511, Button]
type = varset
trigger1 = !time
var(11) = ifelse(command = "x", 1, ifelse(command = "y", 2, ifelse(command = "z", 3, ifelse(command = "a", 4, ifelse(command = "b", 5, ifelse(command = "c", 6, ceil(random / 167)))))))

[State 511, Snd]
type = playsnd
trigger1 = animelem = 3 && (var(11) = [1, 3])
value = 3, ifelse(var(11) = 1, 0, ifelse(var(11) = 2, 1, 2))
channel = 0
[State 511, Snd]
type = playsnd
trigger1 = animelem = 3 && (var(11) = [4, 6])
value = 4, ifelse(var(11) = 4, 2, ifelse(var(11) = 5, 1, 11))
channel = 0
[State 511, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1

[State 511, Taunt Hit]
type = helper
trigger1 = animelem = 3
trigger1 = var(53) && !numhelper(4190)
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1
persistent = 0

[State 511, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;===========<Chouhatsu Shinwa Air>==========
[Statedef 512]
type = A
movetype = I
physics = A
anim = 502
poweradd = 200
sprpriority = 1
ctrl = 0

[State 512, Button]
type = varset
trigger1 = !time
var(11) = ifelse(command = "x", 1, ifelse(command = "y", 2, ifelse(command = "z", 3, ifelse(command = "a", 4, ifelse(command = "b", 5, ifelse(command = "c", 6, ceil(random / 167)))))))

[State 512, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, ifelse(var(11) <= 3, 17, 36)
channel = 0
[State 512, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1

[State 512, Taunt Hit]
type = helper
trigger1 = animelem = 2
trigger1 = var(53) && !numhelper(4190)
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1
persistent = 0


;===========<Chouhatsu Shinwa Rolling Forward>==========
[Statedef 513]
type = A
movetype = I
physics = C
anim = 513
velset = 0, 0
poweradd = 200
sprpriority = 1
ctrl = 0
facep2 = 1

[State 513, Button]
type = varset
trigger1 = !time
var(11) = ifelse(command = "x", 1, ifelse(command = "y", 2, ifelse(command = "z", 3, ifelse(command = "a", 4, ifelse(command = "b", 5, ifelse(command = "c", 6, ceil(random / 167)))))))

[State 513, Push]
type = playerpush
trigger1 = animelemtime(14) < 0
value = 0
[State 513, turn]
type = turn
trigger1 = animelem = 14 && p2dist x < 0
[State 513, Vel]
type = velset
trigger1 = animelemtime(2) >= 0 && animelemtime(13) < 0
x = 7.5

[State 513, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 102

[State 513, Dust]
type = explod
trigger1 = animelemtime(2) >= 0 && animelemtime(14) < 0 && !(time % 4)
anim = 7103
sprpriority = 3
postype = p1
vel = -1, 0
scale = 0.5, 0.5
ownpal = 1

[State 513, Snd]
type = playsnd
trigger1 = animelem = 16 && (var(11) = [1, 3])
value = 4, ifelse(var(11) = 1, 11, ifelse(var(11) = 2, 13, 17))
channel = 0
[State 513, Snd]
type = playsnd
trigger1 = animelem = 16 && (var(11) = [4, 6])
value = 4, ifelse(var(11) = 4, 14, ifelse(var(11) = 5, 28, 4))
channel = 0
[State 513, Snd]
type = playsnd
trigger1 = animelem = 16
value = 1, 1
channel = 1

[State 513, Taunt Hit]
type = helper
trigger1 = animelem = 16
trigger1 = var(53) && !numhelper(4190)
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1
persistent = 0

[State 513 Type]
type = statetypeset
trigger1 = animelem = 13
statetype = S
physics = S

[State 513, Vel]
type = velset
trigger1 = animelem = 14
x = 0

[State 513, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;===========<Chouhatsu Shinwa Rolling Backward>==========
[Statedef 514]
type = C
movetype = I
physics = C
anim = 514
velset = 0, 0
poweradd = 200
sprpriority = 1
ctrl = 0
facep2 = 1

[State 514, Button]
type = varset
trigger1 = !time
var(11) = ifelse(command = "x", 1, ifelse(command = "y", 2, ifelse(command = "z", 3, ifelse(command = "a", 4, ifelse(command = "b", 5, ifelse(command = "c", 6, ceil(random / 167)))))))

[State 514, Push]
type = playerpush
trigger1 = animelemtime(14) < 0
value = 0
[State 514, turn]
type = turn
trigger1 = animelem = 14 && p2dist x < 0
[State 514, Vel]
type = velset
trigger1 = animelemtime(2) >= 0 && animelemtime(13) < 0
x = -7.5

[State 514, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 105

[State 514, Dust]
type = explod
trigger1 = animelemtime(2) >= 0 && animelemtime(14) < 0 && !(time % 4)
anim = 7103
sprpriority = 3
postype = p1
vel = 1, 0
scale = 0.5, 0.5
ownpal = 1

[State 514, Snd]
type = playsnd
trigger1 = animelem = 16 && (var(11) = [1, 3])
value = 4, ifelse(var(11) = 1, 11, ifelse(var(11) = 2, 13, 17))
channel = 0
[State 514, Snd]
type = playsnd
trigger1 = animelem = 16 && (var(11) = [4, 6])
value = 4, ifelse(var(11) = 4, 14, ifelse(var(11) = 5, 28, 4))
channel = 0
[State 514, Snd]
type = playsnd
trigger1 = animelem = 16
value = 1, 1
channel = 1

[State 514, Taunt Hit]
type = helper
trigger1 = animelem = 16
trigger1 = var(53) && !numhelper(4190)
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1
persistent = 0

[State 514, Type]
type = statetypeset
trigger1 = animelem = 13
statetype = S
physics = S

[State 514, Vel]
type = velset
trigger1 = animelem = 14
x = 0

[State 514, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;===========<Chouhatsu Shinwa Special>==========
[Statedef 515]
type = S
movetype = I
physics = S
anim = 515
velset = 0, 0
poweradd = 200
sprpriority = 1
ctrl = 0
facep2 = 1

[State 515, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 5
channel = 0

[State 515, Taunt Hit]
type = helper
trigger1 = animelem = 2
trigger1 = var(53) && !numhelper(4190)
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1
persistent = 0

[State 515, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
