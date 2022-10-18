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
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name="Gouran Enpou"
command=~D, DF, D, DF, F, x
time=40
[Command]
name="Gouran Enpou"
command=~D, DF, D, DF, F, y
time=40
[Command]
name="Gouran Enpou"
command=~D, DF, D, DF, F, z
time=40

[Command]
name="MaxGouran Enpou"
command=~D, DF, D, DF, F, x+y
time=40
[Command]
name="MaxGouran Enpou"
command=~D, DF, D, DF, F, y+z
time=40
[Command]
name="MaxGouran Enpou"
command=~D, DF, D, DF, F, x+z
time=40

[Command]
name="Gou'en Shourai"
command=~D, DF, F, D, DB, B, x
time=40
[Command]
name="Gou'en Shourai"
command=~D, DF, F, D, DB, B, y
time=40
[Command]
name="Gou'en Shourai"
command=~D, DF, F, D, DB, B, z
time=40

[Command]
name="MaxGou'en Shourai"
command=~D, DF, F, D, DB, B, x+y
time=40
[Command]
name="MaxGou'en Shourai"
command=~D, DF, F, D, DB, B, y+z
time=40
[Command]
name="MaxGou'en Shourai"
command=~D, DF, F, D, DB, B, x+z
time=40

[Command]
name="Suisou Enbu"
command=~D, DF, D, DF, F, a+b
time=32
[Command]
name="Suisou Enbu"
command=~D, DF, D, DF, F, b+c
time=32
[Command]
name="Suisou Enbu"
command=~D, DF, D, DF, F, a+c
time=32
;-| Special Motions |------------------------------------------------------
[Command]
name = "Kaiten Teki Kuu Totsu Ken 1"
command = ~D, DF, F, a
time = 32
[Command]
name = "Kaiten Teki Kuu Totsu Ken 2"
command = ~D, DF, F, b
time = 32
[Command]
name = "Kaiten Teki Kuu Totsu Ken 3"
command = ~D, DF, F, c
time = 32
[Command]
name = "Kaiten Teki Kuu Totsu Ken 1"
command = ~D, DF, F, ~a
time = 32
[Command]
name = "Kaiten Teki Kuu Totsu Ken 2"
command = ~D, DF, F, ~b
time = 32
[Command]
name = "Kaiten Teki Kuu Totsu Ken 3"
command = ~D, DF, F, ~c
time = 32

[Command]
name = "Kaiten Teki Kuu Totsu Ken EX"
command = ~D, DF, F, a+b
time = 32
[Command]
name = "Kaiten Teki Kuu Totsu Ken EX"
command = ~D, DF, F, b+c
time = 32
[Command]
name = "Kaiten Teki Kuu Totsu Ken EX"
command = ~D, DF, F, a+c
time = 32

[Command]
name = "Ryuu Rin Hou Rai1"
command = ~F, D, DF, x
time = 18
[Command]
name = "Ryuu Rin Hou Rai2"
command = ~F, D, DF, y
time = 18
[Command]
name = "Ryuu Rin Hou Rai3"
command = ~F, D, DF, z
time = 18
[Command]
name = "Ryuu Rin Hou Rai1"
command = ~F, D, DF, ~x
time = 18
[Command]
name = "Ryuu Rin Hou Rai2"
command = ~F, D, DF, ~y
time = 18
[Command]
name = "Ryuu Rin Hou Rai3"
command = ~F, D, DF, ~z
time = 18

[Command]
name = "Ryuu Rin Hou RaiEX"
command = ~F, D, DF, x+y
time = 18
[Command]
name = "Ryuu Rin Hou RaiEX"
command = ~F, D, DF, y+z
time = 18
[Command]
name = "Ryuu Rin Hou RaiEX"
command = ~F, D, DF, x+z
time = 18

[Command]
name = "Suikan Kan Ou1"
command = ~D, D, x
time = 16
[Command]
name = "Suikan Kan Ou2"
command = ~D, D, y
time = 16
[Command]
name = "Suikan Kan Ou3"
command = ~D, D, z
time = 16
[Command]
name = "Suikan Kan OuEX"
command = ~D, D, x+y
time = 16
[Command]
name = "Suikan Kan OuEX"
command = ~D, D, y+z
time = 16
[Command]
name = "Suikan Kan OuEX"
command = ~D, D, x+z
time = 16

[Command]
name = "Bogetsu Sui1"
command = ~D, D, a
time = 16
[Command]
name = "Bogetsu Sui2"
command = ~D, D, b
time = 16
[Command]
name = "Bogetsu Sui3"
command = ~D, D, c
time = 16
[Command]
name = "Bogetsu SuiEX"
command = ~D, D, a+b
time = 16
[Command]
name = "Bogetsu SuiEX"
command = ~D, D, b+c
time = 16
[Command]
name = "Bogetsu SuiEX"
command = ~D, D, a+c
time = 16

[Command]
name = "Hyotan Geki1"
command = ~D, DB, B, x
time = 15
[Command]
name = "Hyotan Geki2"
command = ~D, DB, B, y
time = 15
[Command]
name = "Hyotan Geki3"
command = ~D, DB, B, z
time = 15
[Command]
name = "Hyotan Geki1"
command = ~D, DB, B, ~x
time = 15
[Command]
name = "Hyotan Geki2"
command = ~D, DB, B, ~y
time = 15
[Command]
name = "Hyotan Geki3"
command = ~D, DB, B, ~z
time = 15

[Command]
name = "Hyotan GekiEX"
command = ~D, DB, B, x+y
time = 15
[Command]
name = "Hyotan GekiEX"
command = ~D, DB, B, y+z
time = 15
[Command]
name = "Hyotan GekiEX"
command = ~D, DB, B, x+z
time = 15

[Command]
name = "Fun'en Kou1"
command = ~D, DF, F, x
time = 15
[Command]
name = "Fun'en Kou2"
command = ~D, DF, F, y
time = 15
[Command]
name = "Fun'en Kou3"
command = ~D, DF, F, z
time = 15
[Command]
name = "Fun'en Kou1"
command = ~D, DF, F, ~x
time = 15
[Command]
name = "Fun'en Kou2"
command = ~D, DF, F, ~y
time = 15
[Command]
name = "Fun'en Kou3"
command = ~D, DF, F, ~z
time = 15

[Command]
name = "Fun'en KouEX"
command = ~D, DF, F, y+z
time = 15
[Command]
name = "Fun'en KouEX"
command = ~D, DF, F, x+y
time = 15
[Command]
name = "Fun'en KouEX"
command = ~D, DF, F, x+z
time = 15

[Command]
name = "Fun'en Kou4"
command = ~D, DF, F, x
time = 15
[Command]
name = "Fun'en Kou5"
command = ~D, DF, F, y
time = 15
[Command]
name = "Fun'en Kou6"
command = ~D, DF, F, z
time = 15
[Command]
name = "Fun'en Kou4"
command = ~D, DF, F, ~x
time = 15
[Command]
name = "Fun'en Kou5"
command = ~D, DF, F, ~y
time = 15
[Command]
name = "Fun'en Kou6"
command = ~D, DF, F, ~z
time = 15

[Command]
name = "Fun'en KouEX2"
command = ~D, DF, F, x+y
time = 15
[Command]
name = "Fun'en KouEX2"
command = ~D, DF, F, y+z
time = 15
[Command]
name = "Fun'en KouEX2"
command = ~D, DF, F, x+z
time = 15

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, x
time = 16
[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, y
time = 16
[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, z
time = 16
[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, ~x
time = 16
[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, ~y
time = 16
[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, ~z
time = 16
[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, a
time = 16
[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, b
time = 16
[Command]
name=  "412k" ;Zero Counter
command = ~B, DB, D, c
time = 16
[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~a
time = 16
[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~b
time = 16
[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~c
time = 16
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1
[Command]
name="recovery"
command=a+x
time=1
[Command]
name = "recovery"
command = y+z
time=1
[Command]
name = "recovery"
command = x+z
time=1
[Command]
name = "recovery"
command = a+b
time=1
[Command]
name = "recovery"
command = b+c
time=1
[Command]
name = "recovery"
command = a+c
time=1

[Command]
name = "pp"
command = x+y
time = 1
[Command]
name = "pp"
command = x+z
time = 1
[Command]
name = "pp"
command = y+z
time = 1
[Command]
name = "kk"
command = a+b
time = 1
[Command]
name = "kk"
command = a+c
time = 1
[Command]
name = "kk"
command = b+c
time = 1
[Command]
name = "a+x"
command = a+x
time=1
[Command]
name = "b+y"
command = b+y
time = 1
[Command]
name = "c+z"
command = c+z
time = 1
;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1
[Command]
name = "b"
command = b
time = 1
[Command]
name = "c"
command = c
time = 1
[Command]
name = "x"
command = x
time = 1
[Command]
name = "y"
command = y
time = 1
[Command]
name = "z"
command = z
time = 1
[Command]
name = "s"
command = s
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
;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1
[Command]
name = "hold_y"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
time = 1
[Command]
name = "hold_a"
command = /a
time = 1
[Command]
name = "hold_b"
command = /b
time = 1
[Command]
name = "hold_c"
command = /c
time = 1
[Command]
name = "hold_s"
command = /s
time = 1
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
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1
[Command]
name = "holddownfwd"
command = /$DF
time = 1
[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1
[Command]
name = "holddownback"
command = /$DB
time = 1
[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1
[Command]
name = "holdupback"
command = /$UB
time = 1
[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1
[Command]
name = "holdupfwd"
command = /$UF
time = 1
;================================================================================================================================================================================================================================================================================================
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
[Command]
name = "rlsy"
command = ~y
time = 1
[Command]
name = "rlsz"
command = ~z
time = 1
[Command]
name = "rlsa"
command = ~a
time = 1
[Command]
name = "rlsb"
command = ~b
time = 1
[Command]
name = "rlsc"
command = ~c
time = 1
;================================================================================================================================================================================================================================================================================================
;Other
[Command]
name = "highjump"
command = $D, $U
time = 15
[Command]
name = "DU"
command = D, U
time = 18
[Command]
name = "DU"
command = DB, UF
time = 18
[Command]
name = "DU"
command = DF, UB
time = 18
[Command]
name = "DU"
command = $D, UF
time = 18
[Command]
name = "DU"
command = $D, UB
time = 18

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
name = "Ryuu Ja Hanhou"
command = /$U,a
time = 1
[Command]
name = "Ryuu Ja Hanhou"
command = /$U,b
time = 1
[Command]
name = "Ryuu Ja Hanhou"
command = /$U,c
time = 1

[Command]
name = "Rigyo Hanhou"
command = /$U,x
time = 1
[Command]
name = "Rigyo Hanhou"
command = /$U,y
time = 1
[Command]
name = "Rigyo Hanhou"
command = /$U,z
time = 1
;================================================================================================================================================================================================================================================================================================
[Statedef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = StateNo = 810 && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger5 = (StateNo = [700,715]) && !AnimTime
trigger6 = (StateNo = [6080,6082]) && !AnimTime
value = 1
;-----------------------------------------------------------------
[State -1, Parry Stand]
type = HitOverride
triggerall =!AILevel
triggerall = command = "fwd" && command!= "back" && command != "up" && command != "down"
trigger1 = Ctrl
attr = SA,AA,AP
stateno = 6080
slot = 0
time = 5
;------------------------------------------------------------------
[State -1, Crouching Parry]
type = HitOverride
triggerall =!AILevel
triggerall = (statetype = S && command = "down")|| (statetype = C && command = "fwd") && command != "back" && command != "up"
trigger1 = Ctrl
attr = C,AA,AP
stateno = 6081
slot = 0
time =5
;-------------------------------------------------------------------
[State -1, Aerial Parry]
type= HitOverride
triggerall =!AILevel
triggerall = (statetype= A && command = "fwd") && command != "back" && command != "up" && command != "down"
trigger1 = Ctrl
attr = SA,AA,AP
stateno = 6082
forceair = 1
slot = 0
time = 5
;================================================================================================================================================================================================================================================================================================
;================================================================================================================================================================================================================================================================================================

;SUPER MOTIONS

;================================================================================================================================================================================================================================================================================================
;================================================================================================================================================================================================================================================================================================
[State -1, Suisou Enbu]
type=ChangeState
value=3500
triggerall=!AILevel && RoundState=2 && StateType != A && (stateno!=[3500,3599])&&var(20)<=0&& power >= 3000&&command ="Suisou Enbu"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)
trigger3=(stateno = [200,450]) && movecontact
;----------------------------------------------------------------------
[State -1, Max Zan'ei Ryuusei Ken]
type=ChangeState
value=3150
triggerall=!AILevel && RoundState=2 && StateType != A && (stateno!=[3100,3152]) &&var(20) <= 60 && power >= 2000&&command="MaxGou'en Shourai"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Max Gouran Enpou]
type=ChangeState
value=3050
triggerall=!AILevel && RoundState=2 && StateType != A && (stateno!=[3000,3050]) &&var(20) <= 60 && power >= 2000&&command="MaxGouran Enpou"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Gouran Enpou]
type=ChangeState
value=3000
triggerall=!AILevel && RoundState=2 && StateType != A && (stateno!=[3000,3050]) &&var(20) <= 60 && power >= 1000&&command="Gouran Enpou"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Gou'en Shourai]
type=ChangeState
value=3100
triggerall=!AILevel && RoundState=2 && StateType != A && (stateno!=[3100,3152]) &&var(20) <= 60 && power >= 1000&&command="Gou'en Shourai"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;================================================================================================================================================================================================================================================================================================
;================================================================================================================================================================================================================================================================================================

;SPECIAL MOTIONS

;================================================================================================================================================================================================================================================================================================
;================================================================================================================================================================================================================================================================================================
[State -1, Ryuu Rin Hou Ra]
type=ChangeState
value=Ifelse(command="Ryuu Rin Hou RaiEX"&&var(20) <= 60&&power>=500,1150,1100)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="Ryuu Rin Hou Rai1")||(command="Ryuu Rin Hou Rai2")||(command="Ryuu Rin Hou Rai3")||(command="Ryuu Rin Hou RaiEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno = [200,450]) && movecontact && (command="Ryuu Rin Hou RaiEX"&&power>=500&&var(20) <= 60)
;================================================================================================================================================================================================================================================================================================
[State -1, Suikan Kan Ou]
type=ChangeState
value=Ifelse(command="Suikan Kan OuEX"&&var(20) <= 60&&power>=500,1450,1400)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="Suikan Kan Ou1")||(command="Suikan Kan Ou2")||(command="Suikan Kan Ou3")||(command="Suikan Kan OuEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)&&stateno!=270
trigger3=(stateno = 450) && movecontact && (command="Suikan Kan OuEX"&&power>=500&&var(20) <= 60)
;================================================================================================================================================================================================================================================================================================
[State -1, Bogetsu Sui]
type=ChangeState
value=Ifelse(command="Bogetsu SuiEX"&&var(20) <= 60&&power>=500,1550,1500)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="Bogetsu Sui1")||(command="Bogetsu Sui2")||(command="Bogetsu Sui3")||(command="Bogetsu SuiEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)&&stateno!=270
trigger3=(stateno = 450) && movecontact && (command="Bogetsu SuiEX"&&power>=500&&var(20) <= 60)
;================================================================================================================================================================================================================================================================================================
[State -1, Kaiten Teki Kuu Totsu Ken]
type=ChangeState
value=Ifelse(command="Kaiten Teki Kuu Totsu Ken EX" &&var(20) <= 60&&power>=500,1250,1200)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="Kaiten Teki Kuu Totsu Ken 1"|command="Kaiten Teki Kuu Totsu Ken 2"|command="Kaiten Teki Kuu Totsu Ken 3")||(command="Kaiten Teki Kuu Totsu Ken EX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno = [200,450]) && movecontact && (command="Kaiten Teki Kuu Totsu Ken EX"&&power>=500&&var(20) <= 60)
;================================================================================================================================================================================================================================================================================================
[State -1, Fun'en Kou]
type=ChangeState
value=Ifelse((command="Fun'en KouEX"||command="Fun'en KouEX2")&&var(20) <= 60&&power>=500,1350,1300)
triggerall=!AILevel && RoundState=2 && StateType != A && Ifelse(!var(20),!Numhelper(1305),Numhelper(1305)<8)
triggerall=(var(45)=0&&((command="Fun'en Kou1")||(command="Fun'en Kou2")||(command="Fun'en Kou3")||(command="Fun'en KouEX"&&power>=500&&var(20) <= 60)))||(var(45)&&((command="Fun'en Kou4")||(command="Fun'en Kou5")||(command="Fun'en Kou6")||(command="Fun'en KouEX2"&&power>=500&&var(20) <= 60)))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)&&stateno!=270
trigger3=(stateno = 450) && movecontact && ((command="Fun'en KouEX"||command="Fun'en KouEX2")&&power>=500&&var(20) <= 60)
;================================================================================================================================================================================================================================================================================================
[State -1, Hyotan Geki]
type=ChangeState
value=Ifelse(command="Hyotan GekiEX"&&var(20) <= 60&&power>=500,1010,1000)
triggerall=!AILevel && RoundState=2 && StateType != A && Ifelse(!var(20),!Numhelper(1005),Numhelper(1005)<8)
triggerall=((command="Hyotan Geki1")||(command="Hyotan Geki2")||(command="Hyotan Geki3")||(command="Hyotan GekiEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)&&stateno!=270
trigger3=(stateno = 450) && movecontact && (command="Hyotan GekiEX"&&power>=500&&var(20) <= 60)
;================================================================================================================================================================================================================================================================================================
[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = !AILevel&&RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)
;------------------------------------------------------------------------
[State -1, Throw]
type=ChangeState
value =800
trigger1=(command="holdfwd"||command="holdback")&&(command="pp"||command="kk")
trigger1=!AILevel&&RoundState=2 && Statetype!=A && !var(20)
trigger1=ctrl
;-------------------------------------------------------------------------
[State -1, Power Charge]
type = ChangeState
value = 730
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = !AILevel&&RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])
;--------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 123
triggerall= !AILevel && var(55)=2 && roundstate=2 && statetype != A
trigger1 = ctrl && command = "DU" 
;---------------------------------------------------------------------
[State -1, SIdestep/Dodge]
type = ChangeState
value = Ifelse(command="holdfwd",710,Ifelse(command="holdback",715,700))
triggerall = command = "a+x"
triggerall = !AILevel && RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))
trigger2 = stateno=420 && animelemtime(6)>=1 && movehit && command = "holdup"
;--------------------------------------------------------------------------
[State -1, Custom Combo]
type = ChangeState
value = Ifelse(StateType = A,905,900)
triggerAll = !AILevel && command = "c+z" && RoundState = 2 && power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
;--------------------------------------------------------------------------
[State -1, Run /Dash Back]
type = ChangeState
value = Ifelse(command = "BB",105,102)
trigger1 = !AILevel&& roundstate=2 && statetype = S
trigger1 = command = "FF"||command = "BB"
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Suiho Hyoutan Shuu]
type=ChangeState
value=270
triggerall=!AILevel&& roundstate=2 && statetype != A&&command != "holddown"&&command = "holdfwd"&& command="x"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=(stateno = 250 && anim = 255)&&movecontact
trigger4=(stateno = [210,220])&&movecontact
trigger5=((stateno=[200,210])||(stateno=[230,240])||(stateno=[400,410])||(stateno=[440,440]))&&movecontact&&var(55)
;--------------------------------------------------------------------------
[State -1, Standing Low Punch]
type=ChangeState
value=200
triggerall=!AILevel&& roundstate=2 && statetype != A&&command != "holddown"&& command="x"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
;================================================================================================================================================================================================================================================================================================
[State -1, Standing Medium Punch]
type=ChangeState
value=210
triggerall=!AILevel&& roundstate=2 && statetype != A&&command != "holddown"&& command="y"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact&&var(55)
trigger4=((stateno=[200,209])||(stateno=[400,409]))&&movecontact&&!var(55)
;================================================================================================================================================================================================================================================================================================
[State -1, Standing High Punch]
type=ChangeState
value=220
triggerall=!AILevel&& roundstate=2 && statetype != A&&command != "holddown"&& command="z"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact&&var(55)
trigger4=(stateno=[200,209])&&movecontact&&!var(55)
;================================================================================================================================================================================================================================================================================================
[State -1, Standing Low Kick]
type=ChangeState
value=230
triggerall=!AILevel&& roundstate=2 && statetype != A&&command != "holddown"&& command="a"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=(stateno=[200,209])&&movecontact&&var(55)
;================================================================================================================================================================================================================================================================================================
[State -1, Standing Medium Kick]
type=ChangeState
value=240
triggerall=!AILevel&& roundstate=2 && statetype != A&&command != "holddown"&& command="b"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439]))&&movecontact&&var(55)
;================================================================================================================================================================================================================================================================================================
[State -1, Standing High Kick]
type=ChangeState
value=250
triggerall=!AILevel&& roundstate=2 && statetype != A&&command != "holddown"&& command="c"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,249])||(stateno=[400,449]))&&movecontact&&var(55)
trigger4=((stateno=[230,239])||(stateno=[430,439]))&&movecontact&&!var(55)
;================================================================================================================================================================================================================================================================================================
[State -1, Crouching Low Punch]
type=ChangeState
value=400
triggerall=!AILevel&& roundstate=2 && statetype != A&&command="holddown"&& command="x"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
;================================================================================================================================================================================================================================================================================================
[State -1, Crouching Medium Punch]
type=ChangeState
value=410
triggerall=!AILevel&& roundstate=2 && statetype != A&&command= "holddown"&& command="y"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact&&var(55)
;================================================================================================================================================================================================================================================================================================
[State -1, Crouching High Punch]
type=ChangeState
value=420
triggerall=!AILevel&& roundstate=2 && statetype != A&&command="holddown"&& command="z"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact&&var(55)
;================================================================================================================================================================================================================================================================================================
[State -1, Crouching Low Kick]
type=ChangeState
value=430
triggerall=!AILevel&& roundstate=2 && statetype != A&&command="holddown"&& command="a"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[400,409]))&&movecontact&&var(55)
trigger4=((stateno=[400,409])||(stateno=[430,439]))&&movecontact&&!var(55)
;================================================================================================================================================================================================================================================================================================
[State -1, Crouching Medium Kick]
type=ChangeState
value=440
triggerall=!AILevel&& roundstate=2 && statetype != A&&command="holddown"&& command="b"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439]))&&movecontact&&var(55)
;================================================================================================================================================================================================================================================================================================
[State -1, Crouching High Kick]
type=ChangeState
value=450
triggerall=!AILevel&& roundstate=2 && statetype != A&&command="holddown"&& command="c"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,249])||(stateno=[400,449]))&&movecontact&&var(55)
;================================================================================================================================================================================================================================================================================================
[State -1, Jumping Low Punch]
type=ChangeState
value=600
triggerall=!AILevel&& roundstate=2 && statetype=A&&command="x"
trigger1=ctrl
trigger2=var(4)
;================================================================================================================================================================================================================================================================================================
[State -1, Jumping Medium Punch]
type=ChangeState
value=610
triggerall=!AILevel&& roundstate=2 && statetype=A&&command="y"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,609])||(stateno=[630,639]))&&movecontact&&var(55)=2
;================================================================================================================================================================================================================================================================================================
[State -1, Jumping High Punch]
type=ChangeState
value=620
triggerall=!AILevel&& roundstate=2 && statetype=A&&command="z"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,649]))&&movecontact&&var(55)=2
;================================================================================================================================================================================================================================================================================================
[State -1, Jumping Low Kick]
type=ChangeState
value=630
triggerall=!AILevel&& roundstate=2 && statetype=A&&command="a"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,609])&&movecontact&&var(55)=2
;================================================================================================================================================================================================================================================================================================
[State -1, Jumping Medium Kick]
type=ChangeState
value=640
triggerall=!AILevel&& roundstate=2 && statetype=A&&command="b"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,639]))&&movecontact&&var(55)=2
;================================================================================================================================================================================================================================================================================================
[State -1, Jumping High Kick]
type=ChangeState
value=650
triggerall=!AILevel&& roundstate=2 && statetype=A&&command="c"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,649])&&movecontact&&var(55)=2
;================================================================================================================================================================================================================================================================================================
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = !AILevel&& roundstate=2 && statetype != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)
;--------------------------------------------------------------------------
;AI
;--------------------------------------------------------------------------
;----------------------------------------------------------------
[State -1, AI Parry Stand]
type = HitOverride
triggerall = AILevel&&statetype != A && ctrl
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))
slot = 0
stateno = 6080
attr = SA, AA, AP
time = 3
;---------------------------------------------------------------
[State -1, AI Crouching Parry]
type = HitOverride
triggerall = AILevel&&statetype != A && ctrl
trigger1 =random < (250 * (AIlevel ** 2 / 64.0))
slot = 0
stateno = 6081
attr = C, AA, AP
time = 3
;---------------------------------------------------------------
[State -1, AI Aerial Parry]
type = HitOverride
triggerall = AILevel&& statetype = A && ctrl
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))
slot = 0
stateno = 6082
attr = SCA, AA, AP
time = 3
;=======================================================================
[State -1, run]
type = changestate
value = 102
trigger1 = AIlevel && numenemy
trigger1 = statetype = S && roundstate = 2 && ctrl && random < (300 * (AIlevel ** 2 / 64.0))
trigger1 = (stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 100

[State -1, dash]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (p2bodydist x = [0, 80]) && backedgebodydist > 80 && (stateno != [100, 105])
trigger1 = enemynear, movetype = A && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (300 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
triggerall = AIlevel && numenemy&&random < (50 * (AIlevel ** 2 / 64.0))
triggerall = roundstate = 2 && statetype != A
triggerall = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT
trigger1=ctrl

[state -1,AI Air Guard]
type = ChangeState
value = 132
triggerall = AIlevel && numenemy&& roundstate = 2&&InGuardDist
triggerall = ctrl&&statetype = A
trigger1 = enemynear,numproj
trigger2 = enemynear,HitDefAttr = SCA, NA,SA,HA
trigger2 = random <=ifelse(backedgedist<=10,900,700)

[State -1, Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155]) && !var(20)
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 300, ifelse((p2stateno = [1000, 2999]), 500, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
triggerall= AILevel && numenemy&& (StateNo!=[120,155]) && !(enemynear,ctrl) && random < (450 * (AIlevel ** 2 / 64.0))
triggerall= Ctrl||stateno = 21
triggerall=enemynear,Movetype=A && !(enemynear,hitdefattr=SCA,AT) 
trigger1 = inguarddist

[State -1, Super Jump]
type = ChangeState
value = 123
triggerall = AILevel && numenemy && var(55)=2 && statetype != A && roundstate = 2 && (p2bodydist y = [-320,5])
triggerall = stateno != 100 && pos y = 0 && (enemynear,Statetype!=C)
trigger1 = ctrl && enemy,vel y < -1 && (p2bodydist x = [ 10, 70]) && enemynear,movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && enemy,vel y < -1 && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear,movetype = H && (enemynear,stateno=5040)
trigger2 = p2bodydist x <= 50 && random < (150 * (AIlevel ** 2 / 64.0))
trigger3 = ctrl && enemynear,MoveType != H&&P2BodyDist Y < -90&& enemy,vel y <= 0 && random < (350 * (AIlevel ** 2 / 64.0))
trigger4 = stateno=420 && animelemtime(6)>=1 && MoveHit && random < (800 * (AIlevel ** 2 / 64.0))
trigger5 = ctrl && (p2bodydist x<=140) && (enemynear,statetype!=A) && (enemynear,movetype=A) && (enemynear,stateno=[2000,4999]) && random < (750 * (AIlevel ** 2 / 64.0))

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = (p2dist x = [-90, 90]) && stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && power >= 2000 && !var(20) && life < 500 && random < (10 * (AIlevel ** 2 / 64.0))

[State -1, powercharge]
type = changestate
value = 730
trigger1 = AIlevel && numenemy
trigger1 = !numhelper(3033)
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = power < const(data.power) && power < powermax && !var(20)
trigger1 = random < (50 * (AIlevel ** 2 / 64.0)) && !inguarddist && p2movetype != A && p2dist x >= 160

[State -1, roll / dodge]
type = changestate
value = 710;ifelse(random < 600, 700, 710)
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, movetype = A && p2bodydist x < 80

[State -1, airrecover]
type=changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall= AILevel && numenemy
triggerall= roundstate=2 && stateno=5050
trigger1= vel y>-1 && alive && canrecover && random < (350 * (AIlevel ** 2 / 64.0))

[State -1, Custom Combo]
type = changestate
value = ifelse(statetype = A, 905, 900)
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && (statetype != A || (vel x > 0 && vel y >= 0))
trigger1 = power >= 1000 && !var(20)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger1 = (enemynear, movetype = A) && (p2bodydist x = [0, 40]) && (p2dist y = [ -60, 60]) && (enemynear, vel y >= 0)
trigger1 = (enemynear, stateno = [200, 699]) && random < (200 * (AIlevel ** 2 / 64.0))
;-------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = AILevel&&random < (500 * (AIlevel ** 2 / 64.0))
triggerall = roundstate=2&&statetype!=A&& enemynear,statetype!=L&&(enemynear,stateno!=[5120,5201]) && !var(20)
triggerall = enemynear,movetype!=H&&enemynear,statetype!=A&&enemynear,Hitover&&(p2bodydist x =[0,30])
triggerall = ctrl||stateno=100||stateno=52
trigger1 = random>=800
trigger2 = enemynear,stateno=[120,155]
trigger2 = random>=500
trigger3 = stateno=100
trigger4 = (p2bodydist x=[0,30])&&random<250
trigger5 = (p2stateno=[120,155])&&(p2bodydist x=[0,30])&&random<500
;================================================================================================================================================================================================================================================================================================
[State -1, Hishou Ken CC AI]
type=ChangeState
value=1000
triggerall=AILevel && RoundState=2 && Numenemy && StateType != A && Numhelper(1005)<4
triggerall=(p2bodydist x= 240) && (p2bodydist y = [ -80, 5]) && var(20)
triggerall=(enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220]) && enemynear,statetype!=L 
trigger1=(ctrl || stateno = 52 || (stateno = [100, 101])) && random < (150 * (AIlevel ** 2 / 64.0))
trigger2=var(20) > 40 && stateno = 1100 && var(5) 
;------------------------------------------------------------------------
[State -1, Standing Low Punch AI]
type = ChangeState
value = 200
triggerall = AILevel && numenemy&& roundstate=2 && statetype != A
triggerall = p2bodydist x <=45&&(p2bodydist y = [-80,5])&&P2statetype != A&&P2statetype != C&&P2statetype != L&& random < (650 * (AIlevel ** 2 / 64.0))
trigger1 = ctrl
trigger2 = (stateno = [100,101]) && random < 50
trigger3 = var(4)
;================================================================================================================================================================================================================================================================================================
[State -1, Standing Medium Punch AI]
type = ChangeState
value = 210
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350
trigger3 = ((stateno=[200,209])||(stateno=[400,409]))&&movehit&&!var(55)
trigger3 = random < 500
trigger4 = (stateno = [100,101]) && random < 75
;================================================================================================================================================================================================================================================================================================
[State -1, Standing High Punch AI]
type = ChangeState
value = 220
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 55]) && (p2bodydist y = [ -80, 80]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 650
;================================================================================================================================================================================================================================================================================================
[State -1, Standing Low Kick AI]
type = ChangeState
value = 230
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 45]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (80 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movehit&&var(55)
trigger2 = random < 200
trigger3 = (stateno = [100,101]) && random < 100
trigger4 = var(4)
;================================================================================================================================================================================================================================================================================================
[State -1, Standing Medium Kick AI]
type = ChangeState
value = 240
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 55]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350
;================================================================================================================================================================================================================================================================================================
[State -1, Standing High Kick AI]
type = ChangeState
value = 250
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -60, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [240,249])|| (stateno = [440,449]))&& movehit && (stateno != [221,222])&&var(55)
trigger2 = random < 600
trigger3 = ((stateno=[230,239])||(stateno=[430,439]))&&movehit&&!var(55)
trigger3 = random < 600
;================================================================================================================================================================================================================================================================================================
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 35]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [100,101]
;================================================================================================================================================================================================================================================================================================
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 40]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 800
;================================================================================================================================================================================================================================================================================================
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 40]) &&(p2bodydist y = [-80,5]) && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 350
;================================================================================================================================================================================================================================================================================================
[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 45]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movehit&&var(55)
trigger3 = ((stateno=[400,409])||(stateno=[430,439]))&&movecontact&&!var(55)
;================================================================================================================================================================================================================================================================================================
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 50]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (75 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350
;================================================================================================================================================================================================================================================================================================
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 65]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [220,229])|| (stateno = [240,249])||(stateno = [420,429])||(stateno = [440,449]))&& movehit&&(stateno != [221,222])&&var(55)
trigger2 = random < 900
trigger3 = (stateno = [100,101]) && random < (100 * (AIlevel ** 2 / 64.0))
;================================================================================================================================================================================================================================================================================================
[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = AILevel && numenemy&& roundstate=2 && statetype = A && (p2bodydist x = [0,60]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (500 * (AIlevel ** 2 / 64.0))
;================================================================================================================================================================================================================================================================================================
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = AILevel && numenemy&& roundstate=2 && statetype = A && (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (ifelse((vel x > 0 && p2statetype = A), 250, 125) * (AIlevel ** 2 / 64.0)) 
trigger2 = (stateno = [600,609])&& movehit && var(55)=2 && random < 750
trigger3 = (stateno = [630,639])&& movehit && var(55)=2 && random < 250
;================================================================================================================================================================================================================================================================================================
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = AILevel && numenemy&& roundstate=2 && statetype = A && (p2bodydist x = [0, 100]) && (p2bodydist y = [ -80, 50]) && p2statetype != L 
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 700
trigger3 = (stateno = [640,649])&& movehit && var(55)=2 && random < 200
;================================================================================================================================================================================================================================================================================================
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = AILevel && numenemy&& roundstate=2 && statetype = A && (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [600,609])&& movehit && var(55)=2 && random < 250
;================================================================================================================================================================================================================================================================================================
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = AILevel && numenemy&& roundstate=2 && statetype = A && (p2bodydist x = [0, 90]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (250 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 100
trigger3 = (stateno = [630,639])&& movehit && var(55)=2 && random < 750
;================================================================================================================================================================================================================================================================================================
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = AILevel && numenemy && roundstate=2 && statetype = A && (p2bodydist x = [0, 130]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (250 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall) 
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 250
trigger3 = (stateno = [640,649])&& movehit && var(55)=2 && random < 750
;================================================================================================================================================================================================================================================================================================
[State -1, Suisou Enbu AI]
type=ChangeState
value=3500
triggerall=AILevel && RoundState=2 && Numenemy && numenemy && StateType != A && var(20)<=0 && power >= 3000
triggerall=(p2bodydist x=[15,60]) && (p2bodydist y = [ -70, 5]) && enemynear,statetype!=C && !(enemynear,canrecover) && random < (500 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220]) && enemynear,statetype!=L && enemynear,movetype!=A
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6) && movehit
;----------------------------------------------------------------------
[State -1, Max Gouran Enpou AI]
type=ChangeState
value=3050
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && (stateno!=[3000,3050]) && !numhelper(3005) && !Numhelper(3505) && var(20) <= 60 && power >= 2000 && random < (100 * (AIlevel ** 2 / 64.0))
triggerall=(p2bodydist x=[15,100]) && (p2bodydist y = [ -95, 5]) && random < (125 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220]) && enemynear,statetype!=L && enemynear,statetype!=C
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=(var(6)|| var(7))&&movehit
trigger3=(stateno=[200,450])&&movehit&&random<200
;----------------------------------------------------------------------
[State -1, Gouran Enpou AI]
type=ChangeState
value=3000
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && (stateno!=[3000,3050]) && !numhelper(3005) && !Numhelper(3505) && var(20) <= 60 && power >= 1000 && random < (100 * (AIlevel ** 2 / 64.0))
triggerall=(p2bodydist x=[15,100]) && (p2bodydist y = [ -95, 5]) && random < (125 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220]) && enemynear,statetype!=L && enemynear,statetype!=C
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=(var(6)|| var(7))&&movehit
trigger3=(stateno=[200,450])&&movehit&&random<200
;----------------------------------------------------------------------
[State -1, Max Gou'en Shourai AI]
type=ChangeState
value=3150
triggerall=AILevel && RoundState=2 && Numenemy && StateType != A && (stateno!=[3150,3151]) &&var(20) <= 60 && power >= 2000
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L) && !(enemynear, hitfall)&&(enemynear,stateno!=[5100,5220]) &&(p2bodydist x =[20,120]) && (p2bodydist y =[-80,85]) &&(enemynear, statetype =S)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=(var(6)|| var(7))&&movehit
trigger3=(stateno=[200,450])&&movehit&&random<200
;----------------------------------------------------------------------
[State -1, Gou'en Shourai AI]
type=ChangeState
value=3100
triggerall=AILevel && RoundState=2 && Numenemy && StateType != A && (stateno!=[3100,3151]) &&var(20) <= 60 && power >= 1000
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L) &&(enemynear,stateno!=[5100,5220]) &&(p2bodydist x =[20,80]) && (p2bodydist y =[-80,5]) &&(enemynear, statetype =S)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=(var(6)|| var(7))&&movehit
trigger3=(stateno=[200,450])&&movehit&&random<200
;---------------------------------------------------------------------------
[State -1, Ryuu Rin Hou Ra AI]
type = changestate
value=Ifelse((power >= 500 && random < 100), 1150, 1100)
triggerall=AILevel && RoundState=2 && numenemy && StateType != A && (stateno!=[1100,1150]) && var(20)<=60 
triggerall = numenemy >= 2 || var(15) < 2
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -100, 0]) && (p2statetype != L) && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101]) || stateno = 52) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(5) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3=(stateno=[200,450]) && movehit
;---------------------------------------------------------------------------
[State -1, Fun'en Kou AI]
type=ChangeState
value=Ifelse((power >= 500 && random < 100), 1350, 1300)
triggerall=AILevel && numenemy && RoundState=2 && StateType != A  && Ifelse(!var(20),!Numhelper(1305),Numhelper(1305)<8) &&var(20)<=60&& random < (250 * (AIlevel ** 2 / 64.0))
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220]) && p2bodydist x >=10 && p2bodydist x <=70 &&(p2dist y=[-110,5]) &&(enemynear, statetype != C)
trigger1=ctrl || (StateNo=[100,101])|| (StateNo=[110,111])
trigger2=var(5) && random < (50 * (AIlevel ** 2 / 64.0))
;================================================================================================================================================================================================================================================================================================
[State -1, Hyotan Geki AI]
type=ChangeState
value=Ifelse((power >= 500 && random < 100), 1010, 1000)
triggerall=AILevel && RoundState=2 && Numenemy && StateType != A && Ifelse(!var(20),!Numhelper(1005),Numhelper(1005)<8)
triggerall=(p2bodydist x= 15) && (p2bodydist y = [ -80, 5]) 
triggerall=(enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220]) && enemynear,statetype!=L 
trigger1=(ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2=(stateno=[200,440]) && movehit && random<200