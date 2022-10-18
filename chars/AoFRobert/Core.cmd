;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
 
;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15
; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1
 
;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1
buffer.time = 1
 
[Command]
name = "b"
command = b
time = 1
buffer.time = 1
 
[Command]
name = "c"
command = c
time = 1
buffer.time = 1
 
[Command]
name = "x"
command = x
time = 1
buffer.time = 1
 
[Command]
name = "y"
command = y
time = 1
buffer.time = 1
 
[Command]
name = "z"
command = z
time = 1
buffer.time = 1
 
[Command]
name = "start"
command = s
time = 1
buffer.time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1
 
;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_a"
command = /a
time = 1
buffer.time = 1
 
[Command]
name = "hold_b"
command = /b
time = 1
buffer.time = 1
 
[Command]
name = "hold_c"
command = /c
time = 1
buffer.time = 1
 
[Command]
name = "hold_x"
command = /x
time = 1
buffer.time = 1
 
[Command]
name = "hold_y"
command = /y
time = 1
buffer.time = 1
 
[Command]
name = "hold_z"
command = /z
time = 1
buffer.time = 1
 
[Command]
name = "hold_start"
command = /s
time = 1
buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "QFQB"
command = ~D, DF, F, D, DB
time = 24;32

[Command]
name = "QBQF"
command = ~D, DB, B, D, DF
time = 24;32

[Command]
name = "FHCF"
command = ~F, B, $D, F
time = 24;32

[Command]
name = "BHCB"
command = ~B, F, $D, B
time = 24;32

;-| Special Motions |--------------------------------------------------------
[command];easier HCB/F
name = "HCB"
command = ~F, DF, $D, B
time = 24

[command]
name = "HCF"
command = ~B, DB, $D, F
time = 24

[Command]
name = "DP"
command = ~F, D, DF
time = 12

[Command]
name = "RDP"
command = ~B, D, DB
time = 12

[Command]
name = "relf"
command = ~$F
time = 1
buffer.time = 8

[Command]
name = "relb"
command = ~$B
time = 1
buffer.time = 8

[Command]
name = "QCB"
command = ~D, DB, B
time = 15;12

[Command]
name = "QCF"
command = ~D, DF, F
time = 15;12

[Command]
name = "FBF"
command = ~F, B, F
time = 12

[Command]
name = "BFB"
command = ~B, F, B
time = 12

[Command]
name = "QCBD"
command = ~B, DB, D
time = 15

[Command]
name = "QCFD"
command = ~F, DF, D
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10
 
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1
 
;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;---------------------------------------------------------------------------
;Release Direction
[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1

;--------------------------------------------------------------------------
;Release Button
[Command]
name = "rlsx"
command = ~x
time = 1
buffer.time = 1;Not sure if this is nessecary?

[Command]
name = "rlsy"
command = ~y
time = 1
buffer.time = 1

[Command]
name = "rlsz"
command = ~z
time = 1
buffer.time = 1

[Command]
name = "rlsa"
command = ~a
time = 1
buffer.time = 1

[Command]
name = "rlsb"
command = ~b
time = 1
buffer.time = 1

[Command]
name = "rlsc"
command = ~c
time = 1
buffer.time = 1

[Command]
name = "rlss"
command = ~s
time = 1
buffer.time = 1

;---------------------------------------------------------------------------
;Other
[Command]
name = "highjump"
command = $D, $U
time = 15

;---------------------------------------------------------------------------
;It is VERY important to note, that the placement of Changestates, 
;here are HEAVILY important with this buffering system! 
;Even more so than default! I'm adding this notation as a constant, 
;reminder. Don't forget DW to adjust as needed!

;Also ALWAYS and I mean ALWAYS add these two triggers:
;triggerall = !IsHelper(10371) 
;triggerall = numhelper(10371)
;To EVERY Changestate that uses the buffer. You know why!
;Also be sure to adjust the "Tick Fix" on a char by char basis.
[Statedef -1]

;---AI stuff-------
[State -1, Tick Fix]
type = assertspecial
trigger1 = AILevel && !ishelper
flag = nowalk
[State 0, CtrlSet]
type = CtrlSet
triggerall = AILevel>0 ; && prevstateno = 5120
trigger1 = roundstate = 2 && !ctrl && stateno=0 && (enemynear,ctrl||enemynear,movetype!=I)
value = 1
[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = AIlevel>0&&!ishelper
Triggerall =   random <= (349* (AIlevel ** 2 / 64.0))
trigger1 = (p2statetype=L) && p2bodydist x >100 ||enemy,hitfall
trigger1 = numhelper(1010) && !ishelper&&!helper(10004),var(30)
trigger1 = RoundState = 2 && StateType != A
trigger1 =  power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])||(stateno=[12,20])
[state -1, AI_gdF]
type = ChangeState

value = 750
triggerall = P2Life > 0&&!ishelper
triggerall = random <= (cond(life<ceil(lifemax*.45),399,199)*(AILevel**2/64.0)) 
triggerall = p2bodydist x <60
triggerall = roundstate = 2
triggerall = !IsHelper && p2bodydist y >-60
triggerall = AIlevel >0
triggerall = statetype != A
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)
;-----------------------------------------------------------------------
[State 0, ChangeState]
type = ChangeState
triggerall = (helper(10004),var(18) =[1100,1130] )|| helper(10004),var(18) =[3100,3150]
trigger1 = AILevel && roundstate=2&&!ishelper && statetype!=A 
trigger1 =(Ctrl || StateNo = 20 || StateNo = [100,101]) 
value =helper(10004),var(18)
ctrl = 0 
[State -1, MAX Mode]
type = ChangeState
value = 770
triggerall = AIlevel>0&&!ishelper
Triggerall =   random <= (149* (AIlevel ** 2 / 64.0))
triggerall = RoundState = 2 && StateType != A
triggerall = var(20) <= 0 && Power >= 1000
trigger1 = (p2statetype=L) ||enemy,hitfall
trigger1 = ctrl || (StateNo = [100,101])||(stateno=[12,20])


[State 0, ChangeState]
type = ChangeState
triggerall =statetype!=A&& AILevel && roundstate=2&&!ishelper && enemynear,movetype!=H && !numhelper(1010)
triggerall = enemynear,movetype!=H &&enemynear,hitdefattr!=SCA,AT &&enemynear,movetype!=I
triggerall =(enemynear, movetype = A||enemynear,NumProj >= 1) && (p2bodydist x=[0,45+(enemynear,numproj>0)*190+(stateno=100)*25])&&random <= (280 * (AIlevel ** 2 / 64.0))
trigger1= (Ctrl || StateNo = 20|| StateNo = [100,101] ) 
value =700
ctrl = 0


[State 0, ChangeState]
type = ChangeState

triggerall =statetype!=A&& AILevel && roundstate=2&&!ishelper&& enemynear,movetype!=H
triggerall = enemynear,movetype!=H &&enemynear,hitdefattr!=SCA,AT &&frontEdgeBodyDist > 100
triggerall =(enemynear, movetype = A&&(enemynear,hitdefattr=SCA,SA,HA)||enemynear,NumProj >= 1) && (p2bodydist x >140 && enemynear,numproj||p2bodydist x=[45,95])&&random <= (280 * (AIlevel ** 2 / 64.0))
trigger1= (Ctrl || StateNo = 20 || StateNo = [100,101]) 
value =710

[State 0, ChangeState]
type = ChangeState
triggerall = statetype!=A&&AILevel && roundstate=2&&!ishelper
triggerall = enemynear,movetype!=H &&enemynear,hitdefattr!=SCA,AT &&frontEdgeBodyDist > 100
triggerall =(enemynear, movetype = A &&enemynear,hitdefattr = SC,SA,HA) && (p2bodydist x=[0,35+(stateno=100)*25])&&random <= (280 * (AIlevel ** 2 / 64.0))
trigger1= (Ctrl || StateNo = 20 || StateNo = [100,101]) 
value =715

 [State 0, ChangeState]
type = ChangeState
triggerall = !helper(10004),var(18)
triggerall =statetype!=A&& AILevel &&random <= (240* (AIlevel ** 2 / 64.0)) && statetype!=A &&  helper(10004),fvar(2)=0
triggerall =  (enemynear,movetype != H|| enemynear,stateno=[120,131])&& helper(10004),var(14)
triggerall =p2bodydist x = [-8,30] 
trigger1= (Ctrl || StateNo = 20) && helper(10004),var(2)<2
value =800

;blocking
[State 0, ChangeState]
type = ChangeState
triggerall = AILevel && roundstate=2&&!ishelper
triggerall = (enemynear,MoveType = A) && InGuardDist && Random <= (600 * (AILevel ** 2 / 64.0)) || enemynear,NumProj > 0 && Random < (440 * (AILevel ** 2 / 64.0))
triggerall =p2bodydist x > -20 && enemynear,StateType != L
trigger1= (Ctrl || StateNo = 20|| StateNo = [100,101]) 
value =120
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = helper(10004),var(18)>0 
trigger1 = AILevel && roundstate=2&&!ishelper && statetype!=A 
trigger1 =(Ctrl ||stateno=5120&&animtime=0|| StateNo = 20 || StateNo = [100,101])||(stateno=700 && Time = [15,18]) || (movecontact && AILevel<6 || movehit) && !enemynear,gethitvar(isbound)&& (helper(10004),var(10)||helper(10004),var(11)||helper(10004),var(12)||stateno=[245,246])
value =helper(10004),var(18)
ctrl = 0 


[State 0, ChangeState]
type = ChangeState
triggerall = helper(10004),var(19)>0

trigger1 = AILevel && roundstate=2&&!ishelper && statetype=A 
trigger1 =(Ctrl||stateno=301 ) 
value =helper(10004),var(19)
ctrl = 0 


[State 0, ChangeState]
type = ChangeState

trigger1 = AILevel && roundstate=2&&!ishelper && Random <= (999 * (AILevel ** 2 / 64.0))&& statetype!=A 
trigger1 = (ctrl || stateno=20|| stateno=100)&& helper(10004),var(30)
value =40
ctrl = 0

[State 0, VarSet]
type = VarSet
trigger1 = stateno=40 &&time=2 && AIlevel
sysvar(1)=helper(10004),var(31)

[State 0, ChangeState]
type = ChangeState
triggerall =  AILevel && roundstate=2&&!ishelper
triggerall = statetype!=A && (ctrl||stateno=20) && stateno!=100 && random <= (496 * (AIlevel ** 2 / 64.0))
trigger1 = (enemynear,movetype!=A||backedgebodydist <40)  && (p2bodydist x>=cond(enemynear,hitfall,50,120))
trigger2 = enemynear,stateno=5040 && p2bodydist x >-20 && p2bodydist y <-5 && facing!=enemynear,facing
value =100
ctrl = 0



[State 0, ChangeState]
type = ChangeState
trigger1 = AILevel && roundstate=2&&!ishelper
trigger1 =statetype=S && ctrl && stateno!=100 && random < 249 &&  (enemynear,movetype!=A||backedgebodydist <40)  && (helper(10004),fvar(1)=[20,120]) && helper(10004),var(24)!=0
value =20
ctrl = 1

[State 0, ChangeState]
type = ChangeState
triggerall= AILevel && !ishelper
trigger1 = stateno=20 && helper(10004),var(24)=0
value =0
ctrl = 1

[State 0, ChangeState]
type = ChangeState
triggerall= AILevel && !ishelper && time>10 && stateno=100
trigger1 =  (p2bodydist x <70-30*(!helper(10004),var(14)) && enemynear,stateno!=5040||p2bodydist x <-65 ) 
value =101
ctrl = 1

[State 0, ChangeState]
type = ChangeState
triggerall= AILevel && !ishelper && statetype!=A && (ctrl||stateno=20||stateno=101) && random <= (496 * (AIlevel ** 2 / 64.0))&&  backedgebodydist >40 
trigger1 = (enemynear,movetype = A && p2bodydist x<55 || p2bodydist x<20 && enemynear,anim=5120 && enemynear,backedgebodydist >60)
value =105


;----------------------

[State -1, Tick Fix]
type = CtrlSet
triggerall = RoundState = 2 && AIlevel=0
triggerall = !ctrl
triggerall = movetype!=H
trigger1 = (stateno = 52 || stateno = 101 || stateno = 5120) && !AnimTime
trigger2 = (stateno = [200,299]) && !AnimTime
trigger3 = (stateno = [400,499]) && !AnimTime
trigger4 = (stateno = [700,715]) && !AnimTime
trigger5 = (stateno = [760,762]) && !AnimTime
value = 1

[State -1, CtrlSet For Helpers];special thanks to 20S
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State -1, ProjContact];special thanks to 20S
type = VarSet
trigger1 = IsHelper
trigger1 = MoveContact = 1 && NumTarget
var(18) = 1

[State -1, Root ProjContact];special thanks to 20S
type = ParentVarSet
trigger1 = IsHelper
trigger1 = MoveContact = 1 && NumTarget
var(18) = 1

[State -1, Zetsu Ryuko Ranbu]
type = ChangeState
value = 3200
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(41)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, MAX Ryuko Ranbu]
type = ChangeState
value = 3150
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(41)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)

[State -1, MAX Haoh Shokoken]
type = ChangeState
value = 3050
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(40)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || var(6) || var(7)
trigger1 = NumHelper(3055) <= 0
trigger2 = NumHelper(3055) <= 1
trigger2 = Helper(3055),StateNo=3015 || Helper(3055),StateNo=1016

[State -1, Ryuko Ranbu]
type = ChangeState
value = 3100
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(41)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7))  || (helper(10371), var(8)) || (helper(10371), var(9))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Haoh Shokoken]
type = ChangeState
value = 3000
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(40)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7))  || (helper(10371), var(8)) || (helper(10371), var(9))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || var(6)
trigger1 = NumHelper(3010) <= 0
trigger2 = NumHelper(3010) <= 1
trigger2 = Helper(3010),StateNo=3015 || Helper(3010),StateNo=1016

[State -1, EX Kyokugen Renbu Kyaku]
type = ChangeState
value = 1430
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(26)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
;triggerall = P2BodyDist X <= 10
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Hien Senpuu Kyaku]
type = ChangeState
value = 1530
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(25)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Ryuuga]
type = ChangeState
value = 1130
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Hien Ryuujin Kyaku]
type = ChangeState
value = 1230
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && AIlevel=0 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = var(3)!=[1,2]
trigger1= ctrl && pos y <= -50
trigger2 = var(5)

[State -1, EX Ryuugeki Ken]
type = ChangeState
value = 1030
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1015,1016]

[State -1, EX Gen'ei Kyaku]
type = ChangeState
value = 1330
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Kyokugen Renbu Kyaku]
type = ChangeState
value = 1400
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(26)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
;triggerall = P2BodyDist X <= 10
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Hien Senpuu Kyaku Strong]
type = ChangeState
value = 1520
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(25)
triggerall = (helper(10371), var(5)) || (helper(10371), var(12))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Hien Senpuu Kyaku Med]
type = ChangeState
value = 1510
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(25)
triggerall = (helper(10371), var(4)) || (helper(10371), var(11))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Hien Senpuu Kyaku]
type = ChangeState
value = 1500
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(25)
triggerall = (helper(10371), var(3)) || (helper(10371), var(10))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Ryuuga Strong]
type = ChangeState
value = 1120
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(2)) || (helper(10371), var(9))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Ryuuga Med]
type = ChangeState
value = 1110
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(1)) || (helper(10371), var(8))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Ryuuga]
type = ChangeState
value = 1100
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(0)) || (helper(10371), var(7))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Alpha Counter(Kick)]
type = ChangeState
value = 750
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(20)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && AIlevel=0 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Alpha Counter(Punch)]
type = ChangeState
value = 750
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(20)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9))
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && AIlevel=0 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Hien Ryuujin Kyaku]
type = ChangeState
value = 1200
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
triggerall = RoundState = 2 && AIlevel=0 && StateType = A
triggerall = var(3)!=[1,2]
trigger1= ctrl && pos y <= -50
trigger2 = var(5)

[State -1, Ryuugeki Ken]
type = ChangeState
value = 1000
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7))  || (helper(10371), var(8)) || (helper(10371), var(9)) 
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1015,1016]

[State -1, Gen'ei Kyaku]
type = ChangeState
value = 1300
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Counter Movement]
type = ChangeState
value = 740
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14);LP+LK detection
triggerall = (helper(10371),command = "holdfwd") || (helper(10371),command = "holdback")
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && AIlevel=0 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Throw(Kick)]
type = ChangeState
value = 800
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = (helper(10371), var(3) && helper(10371), var(4)) || (helper(10371), var(4) && helper(10371), var(5)) || (helper(10371), var(3) && helper(10371), var(5))
trigger1 = (helper(10371),command = "holdfwd")|| (helper(10371),command = "holdback")
trigger1 = RoundState = 2 && AIlevel=0 && StateType = S
trigger1 = ctrl

[State -1, Throw(Punch)]
type = ChangeState
value = 800
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = (helper(10371), var(0) && helper(10371), var(1)) || (helper(10371), var(1) && helper(10371), var(2)) || (helper(10371), var(0) && helper(10371), var(2))
trigger1 = (helper(10371),command = "holdfwd")|| (helper(10371),command = "holdback")
trigger1 = RoundState = 2 && AIlevel=0 && StateType = S
trigger1 = ctrl

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14) ;LP+LK detection
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"

[State -1, Roll Back]
type = ChangeState
value = 715
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14) ;LP+LK detection
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Power Charge]
type = ChangeState
value = 730
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = RoundState = 2 && AIlevel=0 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])
;^I'm gonna have to adapt this to the buffering system(maybe?) 
;I think it's good... I'll keep this as a reminder still though

[State -1, MAX Mode]
type = ChangeState
value = 770
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(16) ;HP+HK detection
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
triggerall = var(20) <= 0 && Power >= 1000
trigger1 = ctrl || (Stateno = [100,101])

[State -1, Dodge]
type = ChangeState
value = 700
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14) ;LP+LK detection
triggerall = RoundState = 2 && AIlevel=0 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Nidan Sokutou Geri]
type = Changestate
value = 310
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
triggerall = command = "holdfwd"
triggerall = command = "holddown" && !AILevel
triggerall = statetype != A
trigger1 = ctrl || (stateno=[100,101])

[State -1, Nidan Sokutou Geri v2]
type = Changestate
value = 311
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A && !AILevel
trigger1 = ctrl || (stateno=[100,101])
trigger2 = var(4)

[State -1, Ryuu Hanshuu]
type = Changestate
value = 245
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of MK
triggerall = command = "holdfwd"
triggerall = command != "holddown" && !AILevel
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

[State -1, Ryuu Hanshuu v2]
type = Changestate
value = 246
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = command = "holdfwd" && !AILevel
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = var(4)

[State -1, Kouryuu Koukyaku Geri]
type = Changestate
value = 300
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
triggerall = command = "holdfwd"
triggerall = command != "holddown" && !AILevel
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

[State -1, Kouryuu Koukyaku Geri v2]
type = Changestate
value = 301
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
triggerall = command = "holdfwd"
triggerall = command != "holddown" && !AILevel
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = var(4)

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF" && AIlevel=0 
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB" && AIlevel=0 
trigger1 = statetype = S
trigger1 = ctrl

;|Normal Commands|--------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !IsHelper(10371) && !AILevel ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(0) ; The buffered version of LP
triggerall = (helper(10371),command != "holddown")
;^Be sure to include the dir buffer check if needed DW!
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2= (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >=5

[State -1, Stand Medium Punch]
type = ChangeState
value = 210 + (Abs(P2BodyDist X) <= 10) * 1
triggerall = !IsHelper(10371)  && !AILevel;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(1) ; The buffered version of MP
triggerall = (helper(10371),command != "holddown")  
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Stand Strong Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) <= 15) * 1
triggerall = !IsHelper(10371)  && !AILevel;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(2) ; The buffered version of HP
triggerall = (helper(10371),command != "holddown") 
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Stand Light Kick]
type = ChangeState
value = 230 + (Abs(P2BodyDist X) <= 15) * 1
triggerall = !IsHelper(10371) && !AILevel ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
triggerall = (helper(10371),command != "holddown")
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2= StateNo = 200 && Time >=5

[State -1, Stand Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) <= 15) * 1
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) && !AILevel ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
triggerall = (helper(10371),command != "holddown")
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Standing Strong Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist X) <= 15) * 1
triggerall = !IsHelper(10371)  && !AILevel;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = (helper(10371),command != "holddown")
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !IsHelper(10371)  && !AILevel;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(0) ; The buffered version of LP
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2= (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >=5

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !IsHelper(10371)  && !AILevel;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(1) ; The buffered version of MP
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !IsHelper(10371)  && !AILevel;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(2) ; The buffered version of HP
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !IsHelper(10371) && !AILevel ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2= (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >=5

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !IsHelper(10371) && !AILevel ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
triggerall = (helper(10371),command = "holddown")
triggerall = command != "holdfwd"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !IsHelper(10371) && !AILevel ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) && !AILevel ;Prevent debug flood.
triggerall = helper(10371), var(0) ; The buffered version of LP
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Med Punch]
type = ChangeState
value = 610
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) && !AILevel ;Prevent debug flood.
triggerall = helper(10371), var(1) ; The buffered version of MP
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !IsHelper(10371)  && !AILevel;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(2) ; The buffered version of HP
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !IsHelper(10371) && !AILevel ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Med Kick]
type = ChangeState
value = 640
triggerall = !IsHelper(10371)  && !AILevel;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = vel x !=0 && !AILevel
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Kick Neutral]
type = ChangeState
value = 651
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = vel x=0 && !AILevel
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(6) ; The buffered version of Start
triggerall = StateType != A && !AILevel
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)
