; _________________________________________________
;| Blanka by KarmaCharmeleon			 |
; �������������������������������������������������
;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;====================<DEFAULT VALUES>====================

[Defaults]
command.time = 15
command.buffer.time = 1



;====================<SINGLE BUTTON>====================

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
name = "start"
command = s
time = 1



;====================<EXTRA CHARGE COMMANDS>====================
[Command]
name = "ChargeL,R"
command = ~$B, $F
time = 16

[Command]
name = "ChargeR,L"
command = ~$F, $B
time = 16


[Command]
name = "ChargeD,U"
command = ~$D, $U
time = 16

[Command]
name = "ChargeU,D"
command = ~$U, $D
time = 16


[Command]
name = "ChargeDL,DR"
command = ~$DB, $DF
time = 16

[Command]
name = "ChargeDR,DL"
command = ~$DF, $DB
time = 16

[Command]
name = "ChargeDL,U"
command = ~$DB, $U
time = 16

[Command]
name = "ChargeDR,U"
command = ~$DF, $U
time = 16


[Command]
name = "ChargeUL,UR"
command = ~$UB, $UF
time = 16

[Command]
name = "ChargeUR,UL"
command = ~$UF, $UB
time = 16

[Command]
name = "ChargeUL,D"
command = ~$UB, $D
time = 16

[Command]
name = "ChargeUR,D"
command = ~$UF, $D
time = 16


;==================<HOLD DIRECTION>==================

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1


;====================<HOLD BUTTON>====================

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1



;====================<DIRECTION>====================

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "dfwd"
command = DF
time = 1

[Command]
name = "dback"
command = DB
time = 1

[Command]
name = "ufwd"
command = UF
time = 1

[Command]
name = "uback"
command = UB
time = 1



;====================<RELEASE DIR>====================

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



;====================<RELEASE BUTTON>====================

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



;====================<2/3 BUTTON COMBINATION>====================

[Command]
name = "recovery"
command = x+y
time = 1
buffer.time = 3

[Command]
name = "recovery"
command = x+z
time = 1
buffer.time = 3

[Command]
name = "recovery"
command = y+z
time = 1
buffer.time = 3

[Command]
name = "recovery"
command = a+x
time = 1
buffer.time = 3


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
name = "ppp"
command = x+y+z
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
name = "kkk"
command = a+b+c
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


[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "a+c"
command = a+c
time = 1

[Command]
name = "b+c"
command = b+c
time = 1



;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[StateDef -1]

;==============================================================================================
;==============================================================================================
;================================<EXPLODsive Buffering System>=================================
;====================================<by JustMorphPointman>====================================
;==============================================================================================
;==============================================================================================

;This is an explod-based buffering system, designed to overcome several different errors and bugs
;related to MUGEN's default method of processing commands, as well as offering creators more control
;over how the commands of their character should work. It is designed to be easy to use, understand,
;and install. For more information, including instructions on how to add this to a character, as
;well as how to customize it and add new commands, please visit http://mugenguild.com/forum/msg.2366951

;==============================================================================================
;========================<QUICK REFERENCE GUIDE TO THE EXPLOD ID #'s>==========================
;==============================================================================================

;BASIC DIRECTIONAL INPUTS (these are primarily used to detect directional releases, but also can
;be used outside of the Buffering system code block to detect when a specific direction is currently
;being input or held down)

;Down:										90000002
;Down-right:									90000003
;Right:										90000006
;Up-right:									90000009
;Up:										90000008
;Up-left:									90000007
;Left:										90000004
;Down-left:									90000001


;BUTTON PRESS
;x:										90000200
;y:										90000210
;z:										90000220
;a:										90000230
;b:										90000240
;c:										90000250
;start:										90000195


;BUTTON RELEASE
;x:										90000205
;y:										90000215
;z:										90000225
;a:										90000235
;b:										90000245
;c:										90000255
;start:										90000196


;SYSTEM MOTIONS
;Down (3 ticks):				(D with a 3 tick buffer)	90000012
;Down-right (3 ticks):				(DR with a 3 tick buffer)	90000013
;Right (3 ticks):				(R with a 3 tick buffer)	90000016
;Up-right (3 ticks):				(UR with a 3 tick buffer)	90000019
;Up (3 ticks):					(U with a 3 tick buffer)	90000018
;Up-left (3 ticks):				(UL with a 3 tick buffer)	90000017
;Left (3 ticks):				(L with a 3 tick buffer)	90000014
;Down-left (3 ticks):				(DL with a 3 tick buffer)	90000011

;Down (3 ticks + HitPause):			(D w/ 3 tick buffer + HitPause)	90000212
;Down-right (3 ticks + HitPause):		(DR w/ 3 tick buffer + HitPause)90000213
;Right (3 ticks + HitPause):			(R w/ 3 tick buffer + HitPause)	90000216
;Up-right (3 ticks + HitPause):			(UR w/ 3 tick buffer + HitPause)90000219
;Up (3 ticks + HitPause):			(U w/ 3 tick buffer + HitPause)	90000218
;Up-left (3 ticks + HitPause):			(UL w/ 3 tick buffer + HitPause)90000217
;Left (3 ticks + HitPause):			(L w/ 3 tick buffer + HitPause)	90000214
;Down-left (3 ticks + HitPause):		(DL w/ 3 tick buffer + HitPause)90000211

;R, R:						(F, F)				90001016
;L, L:						(B, B)				90001064
;D, U:						(D, U)				90000408
;U, U:						(U, U)				90000518
;D, D:						(D, D)				90000562
;R, DR, D					(F, DF, D)			90007502
;L, DL, D					(B, DB, D)			90007552


;SPECIAL MOTIONS
;D, DR, R:					(QCF)				90010006
;D, DL, L:					(QCB)				90010104
;R, D, DR:					(F, D, DF)			90010203
;L, D, DL:					(B, D, DB)			90010301
;L, DL, D, DR, R:				(HCF)				90010406
;R, DR, D, DL, L:				(HCB)				90010504
;(charge) L, R:					([charge] B, F)			90010606
;(charge) R, L:					([charge] F, B)			90010704
;(charge) D, U:					([charge] D, U)			90010808
;L, D, R, U:					(360)				90011008
;L, U, R, D:					(360)				90011102
;D, R, U, L:					(360)				90011204
;D, L, U, R:					(360)				90011306
;R, D, L, U:					(360)				90011408
;R, U, L, D:					(360)				90011502
;U, R, D, L:					(360)				90011604
;U, L, D, R:					(360)				90011706
;R, D, L, R:					(HCB, F)			90012016
;L, D, R, L:					(HCF, B)			90012114
;R, L, R:					(F, B, F)			90012216
;L, R, L:					(B, F, B)			90012314
;D, DR, R, UR:					(QCF, UF)			90012409
;D, DL, L, UL:					(QCB, UB)			90012507
;D, D:						([special] D, D)		90012602


;SUPER MOTIONS
;D, DR, R, D, DR, R:				(QCFx2)				90030016
;D, DL, L, D, DL, L:				(QCBx2)				90030114
;L, DL, D, DR, R, L, DL, D, DR, R:		(HCFx2)				90030416
;R, DR, D, DL, L, R, DR, D, DL, L:		(HCBx2)				90030514
;(charge) L, R, L, R:				([charge] B, F, B, F)		90030616
;(charge) R, L, R, L:				([charge] F, B, F, B)		90030714
;(charge) DL, DR, DL, UR:			([charge] DB, DF, DB, UF)	90030809
;(charge) DR, DL, DR, UL:			([charge] DF, DB, DF, UB)	90030907
;L, D, R, U, L, D, R, U:			(720)				90031018
;L, U, R, D, L, U, R, D:			(720)				90031112
;D, R, U, L, D, R, U, L:			(720)				90031214
;D, L, U, R, D, L, U, R:			(720)				90031316
;R, D, L, U, R, D, L, U:			(720)				90031418
;R, U, L, D, R, U, L, D:			(720)				90031512
;U, R, D, L, U, R, D, L:			(720)				90031614
;U, L, D, R, U, L, D, R:			(720)				90031716
;R, L, D, R:					(F, HCF)			90032016
;L, R, D, L:					(B, HCB)			90032114
;D, DR, R, D, L:				(QCF, HCB)			90032204
;D, DL, L, D, R:				(QCB, HCF)			90032306
;D, DR, R, DR, L:				(QCF, DF, B)			90032404
;D, DL, L, DL, R:				(QCB, DB, F)			90032506
;D, D, D:					(D, D, D)			90032602


;SUPER MOTIONS (button inputs)
;x, x, F, a, z:					(Shun Goku Satsu)  94000220



;==============================================================================================
;===================================<DIRECTIONAL COMMANDS>=====================================
;==============================================================================================

;==============================================================================================
;These are required for the system to function; they are active whenever the specified direction
;is currently being input, and disappear as soon as they are released (via a series of RemoveExplods
;at the bottom of the Buffering system code block). They are used by the system to detect directional
;releases, but can also be used outside of the Buffering system code block to detect when a specific
;direction is being input or held down.
;==============================================================================================

[State -1, Release Down Detector]
type = Explod
;make sure explod doesn't already exist
triggerAll = !NumExplod(90000002)
;check to make sure Helper exists, and that the entity running this code isn't the helper, and that
;the AI isn't active. Only a human player should be making explods!
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
;If either of these explods exist, then down/up inputs have been reversed (this is usually caused
;by an attack of some sort, such as Thanos's Mind Gem super). We can easily flip left/right commands,
;but for down/up inputs, we must have two sets of triggers. This is the first set, which only activate
;if the explods don't exist, so we can just check the inputs normally.
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
;explod will be created if down is input
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
;no other directions may be input, otherwise it wouldn't be a down input!
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
;These sets of triggers, however, only are used if one of the direction input reversal explods exist.
;We treat "down" inputs as "up", and vice-versa; "down-right" is treated as "up-right", and so on.
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 1
ID = 90000002
;these explods are only removed via a RemoveExplod, so their RemoveTime is set to -1 (aka infinite)
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Down-Right Detector]
type = Explod
triggerAll = !NumExplod(90000003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 1
ID = 90000003
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Right Detector]
type = Explod
triggerAll = !NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90000006
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up-Right Detector]
type = Explod
triggerAll = !NumExplod(90000009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90000009
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up Detector]
type = Explod
triggerAll = !NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90000008
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up-Left Detector]
type = Explod
triggerAll = !NumExplod(90000007)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90000007
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Left Detector]
type = Explod
triggerAll = !NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90000004
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Down-Left Detector]
type = Explod
triggerAll = !NumExplod(90000001)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 1
ID = 90000001
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1



;==============================================================================================
;==========================================<BUTTONS>===========================================
;==============================================================================================

[State -1, Press x]
type = Explod
;if there already exists a "press x" explod, and the player is in HitPauseTime, then we don't need another!
trigger1 = !HitPauseTime || !NumExplod(90000200)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1
ID = 90000200
;the removeTime, pauseMoveTime, and superMoveTime all must be the same value. This represents the
;amount of time (in ticks) that this individual input is "active"; in other words, it's the window
;of time the player has to input the next input in sequence (or if it's the final input of a command,
;the amount of time that command will last, if the character cannot currently perform the move in
;question). We use "10" as the default value for most directional inputs, because it's generally the
;standard amount of time for most games
;We use "3" for button inputs, which is what many modern games use, but there's a lot of variance
;there.

;We also include " + ifElse(HitPauseTime, HitPauseTime - 1, 0)" to the RemoveTime/PauseMoveTime/SuperMoveTime
;in order to keep the command alive during hit pause. This goes on all button press commands, as well as
;the final directional input of any system, special, or super command.
;For more information on what the removeTime (and pauseMoveTime, et. al.) represents, see the comments for
;the "Right, Right" command
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press y]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000210)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1
ID = 90000210
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press z]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000220)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1
ID = 90000220
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press a]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000230)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 1
ID = 90000230
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press b]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000240)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b"
anim = 1
ID = 90000240
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press c]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000250)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c"
anim = 1
ID = 90000250
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press start]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000195)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "start"
anim = 1
ID = 90000195
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;These explods are used to detect button releases, much in the same way that the directional
;detectors work. These are required for the system, but it's easier to use MUGEN's standard
;"holda" / "holdx" / etc. for situations where you need to detect a held button input, rather than
;making use of these like you would the release direction detectors.
;==============================================================================================
[State -1, Release x Detector]
type = Explod
triggerAll = !NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x" || Helper(90000005), command = "holdx"
anim = 1
ID = 90000201
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release y Detector]
type = Explod
triggerAll = !NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y" || Helper(90000005), command = "holdy"
anim = 1
ID = 90000211
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release z Detector]
type = Explod
triggerAll = !NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z" || Helper(90000005), command = "holdz"
anim = 1
ID = 90000221
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release a Detector]
type = Explod
triggerAll = !NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a" || Helper(90000005), command = "holda"
anim = 1
ID = 90000231
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release b Detector]
type = Explod
triggerAll = !NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b" || Helper(90000005), command = "holdb"
anim = 1
ID = 90000241
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release c Detector]
type = Explod
triggerAll = !NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c" || Helper(90000005), command = "holdc"
anim = 1
ID = 90000251
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release start Detector]
type = Explod
triggerAll = !NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "start"
anim = 1
ID = 90000194
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1



;==============================================================================================
;Take note of the RemoveTimes on these: release button inputs don't persist through hitpause!
;==============================================================================================

[State -1, Release x]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000205)
triggerAll = NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "x" && Helper(90000005), command != "holdx"
anim = 1
ID = 90000205
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release y]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000215)
triggerAll = NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "y" && Helper(90000005), command != "holdy"
anim = 1
ID = 90000215
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release z]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000225)
triggerAll = NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "z" && Helper(90000005), command != "holdz"
anim = 1
ID = 90000225
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release a]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000235)
triggerAll = NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "a" && Helper(90000005), command != "holda"
anim = 1
ID = 90000235
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release b]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000245)
triggerAll = NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "b" && Helper(90000005), command != "holdb"
anim = 1
ID = 90000245
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release c]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000255)
triggerAll = NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "c" && Helper(90000005), command != "holdc"
anim = 1
ID = 90000255
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release start]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000196)
triggerAll = NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "start" && Helper(90000005), command != "holdstart"
anim = 1
ID = 90000196
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;==============================================================================================
;Reminder: because this system is based on absolute directions (left/right) instead of relative
;directions (forward/backward), all commands must have a mirrored command as well (unless they are
;performed solely with up and/or down!) In other words, two different versions of each individual
;command must be defined in this system: one assuming the character is facing the right, and one
;for the left.
;==============================================================================================

;==============================================================================================
;================================<FORWARD, FORWARD/BACK, BACK>=================================
;==============================================================================================

;==============================================================================================
;Dash/run commands in SNK typically have release directions as their first inputs. In other words,
;in most SNK games, you can dash/run by holding forward or back for however long you like, and then
;quickly releasing the stick and returning to neutral, then quickly inputting forward/back again.
;In most Capcom games, this will not work. We have the dash/run commands in this system set up to
;follow Capcom's example.

;Different games have different input windows for dash commands. KOF gives you a 7 tick window between
;each the first and second forward/back commands, and the final input has a buffer time of 3 ticks.
;CPS2 Capcom games (under the normal speed setting) have an input window of 7 ticks for the consecutive
;forward/back commands, and the final input has a buffer time of 2 ticks. In SFIII, both the input
;window and the buffer time is 7 ticks. The default values in this system are 10 for the input window
;and 3 for the buffer time, to match up with the other commands (but feel free to change those values
;to suit your personal preference!)
;==============================================================================================

;=======================================<RIGHT, RIGHT>=========================================
[State -1, R, R: 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90001006
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, R: Neutral]
type = Explod
triggerAll = NumExplod(90000006) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
;make sure no directional input is being performed
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90001005
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

;We remove the neutral explod if any non-right input is detected, or if the 1st right explod does not exist
;in most Capcom games, a dash command will be cancelled mid-input if any direction other than forward/back
;and neutral are input. But SNK games give you more leeway: as long as you have inputting forward/back, and
;have returned the stick to neutral, you can input any other directional command and still get a dash as long
;as you input another forward/back command. If you want to replicate this behavior, simply delete the first trigger
;of this RemoveExplod sctrl (you will still need the second trigger, though).
[State -1, Remove R, R: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000009) || NumExplod(90000008) || NumExplod(90000007) || NumExplod(90000004) || NumExplod(90000001)
trigger2 = !NumExplod(90001006)
ID = 90001005
ignoreHitPause = 1

[State -1, R, R: 2nd Right]
type = Explod
;we check to see if the user has input right recently, and has returned the stick to neutral
triggerAll = NumExplod(90001005) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90001016
;see the button explods above for an explanation of this ifElse statement. This statement only goes on the final
;input of any command, and should not go anywhere else in the command!
;We also are using a non-standard removeTime for this input, as dash commands in most games are only active
;for a short period of time (around 1-3 ticks).
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;Now for the reversed command:
;==============================================================================================

;=======================================<LEFT, LEFT>=========================================
[State -1, L, L: 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90001054
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, L: Neutral]
type = Explod
triggerAll = NumExplod(90000004) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90001055
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove L, L: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000006) || NumExplod(90000009) || NumExplod(90000008) || NumExplod(90000007) || NumExplod(90000001)
trigger2 = !NumExplod(90001054)
ID = 90001055
ignoreHitPause = 1

[State -1, L, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90001055) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90001064
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================================<DOWN, UP (SUPER JUMP)>====================================
;==============================================================================================

;==============================================================================================
;Super jump commands can be done with any down directional input, followed by any up directional
;==============================================================================================

;=======================================<DOWN, UP>=========================================
[State -1, D, U: Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1
ID = 90000402
removeTime = 15
pauseMoveTime = 15
superMoveTime = 15
ignoreHitPause = 1

[State -1, D, U: Up]
type = Explod
triggerAll = NumExplod(90000402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 1
ID = 90000408
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================================<QUARTER CIRCLE DOWN>======================================
;==============================================================================================

;==============================================================================================
;This is the SFA2 style Zero Counter command. This is the first command in the system that uses
;a release directional input. However, this command works somewhat differently from the way pretty
;much every other command in this system works, so we're gonna avoid getting deep into discussion
;about anything here. Please see the following command (quarter-circle forward/back) for a basic
;look at how most release inputs work in this system.
;==============================================================================================


;================================<RIGHT, DOWN-RIGHT, DOWN>=====================================
[State -1, R, DR, D: Release Right]
type = Explod
;check to see if the Release Right Detector explod exists. If it exists and down is no longer being
;input, that means it was released!
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
;if right isn't currently being input by the user, then right was released!
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
;... but if right is currently being input by the user, AND there's another direction being input,
;then right is still considered to have been released.
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1
ID = 90007506
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D: Down-Right]
type = Explod
;the "Right" explod needs to exist before the next command in sequence is allowed
triggerAll = NumExplod(90007506)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90007503
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D: Down]
type = Explod
triggerAll = NumExplod(90007503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90007502
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<LEFT, DOWN-LEFT, DOWN>======================================
[State -1, L, DL, D: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1
ID = 90007554
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D: Down-Left]
type = Explod
triggerAll = NumExplod(90007554)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90007551
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D: Down]
type = Explod
triggerAll = NumExplod(90007551)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90007552
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===============================<QUARTER CIRCLE FORWARD/BACK>==================================
;==============================================================================================

;==============================================================================================
;The vast majority of all commands in fighting games allow the first input of any command to be
;a release input, so that you're allowed to hold the direction that the command starts with for
;however long you want, then input the rest of the command, and still get the move. This is why
;in MUGEN, people typically write all their character's commands as starting with a release input;
;however, things are a bit more complicated outside of MUGEN (and thus, more complicated in this
;buffer too). In most games, the window of time a player has to input the next command in sequence
;after performing a release input is shorter than the window of time they have to input the next
;command after a press input. For example, in Street Fighter III, if you want to perform a quarter-
;circle forward motion, and you press (or hold) the "down" direction, you will have 10 ticks to
;input "down-forward" and continue the command. But if instead you were to hold the "down" direction
;down for a few seconds before releasing it, you will have only 5 ticks to input "down-forward" to
;continue entering the command.

;The way this is translated to the EXPLODsive Buffering system is this: we have two separate explods
;for the first input of every command that uses a release directional input. One explod is created
;whenever the first input is entered, and has a RemoveTime of 10 (which is the same amount of time
;that most other directional explods use in this system); one other explod is also created whenever
;the direction of the first input is released: this has a RemoveTime of 5, which is generally what
;commercial fighting games use.

;Do note that not every game gives players the same input windows for every single command: for
;example, in Street Fighter Alpha 3 (on normal speed), press directional inputs all have a 10 tick
;input window, but the input window for the release directional input in a quarter-circle motion is
;6, while the input window for the release directional input in a forward, down, down-forward motion
;is only 4! There's a whole bunch of variance here, sometimes in the same game, and so it's best to check
;the source game of the character you're making (if applicable) to try and get an idea of what RemoveTime
;will be best for each of your commands.
;==============================================================================================

;================================<DOWN, DOWN-RIGHT, RIGHT>=====================================

;Since this is the press directional input for the first input, it has a RemoveTime of 10
[State -1, D, DR, R: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010002
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

;And since this is the release directional input for the first input, it has a RemoveTime of only 5!
[State -1, D, DR, R: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1
ID = 90010052
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, D, DR, R: Down-Right]
type = Explod
;Remember, we have to check to see if either the "press down" or "release down" explods exist!
triggerAll = NumExplod(90010002) || NumExplod(90010052)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90010003
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010006
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<DOWN, DOWN-LEFT, LEFT>======================================
[State -1, D, DL, L: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010102
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1
ID = 90010152
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90010102) || NumExplod(90010152)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90010101
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010104
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===========================<DOUBLE QUARTER CIRCLE FORWARD/BACK>===============================
;==============================================================================================

;==============================================================================================
;This command is mostly identical to the QCF/QCB commands, but with different ID's; there are some
;important differences, however. Instead of repeating the entire first QCF/QCB command, we just
;(mostly) use the ones we already defined above!

;We do repeat the forward/backward input from the first QCF/QCB, though. This is because the final
;explod of the QCF/QCB command will persist through hitpause, which is not true for the QCFx2
;command: otherwise, you'd be able to input a QCF during a long hitpause, wait for the hitpause to
;end, and then input another QCF and still get a QCFx2 motion, and that's not how things are supposed
;to work!

;Also, do note that Capcom games use a command shortcut for QCFx2/QCBx2 motions; a D, DF, F, D, DF
;will work just as well as a D, DF, F, D, DF, F motion; if you want to replicate this behavior, all
;you have to do is check to see if either the repsective "DF/DB" or the "F/B" explods exist in the
;triggers for that move's ChangeState.
;==============================================================================================

;===========================<DOUBLE DOWN, DOWN-RIGHT, RIGHT>===============================
;this is almost identical to the D, DR, R: Right explod; the only difference is that it has a
;RemoveTime of 10 (with no additional ifElse statements), because it shouldn't persist through hitpause!
[State -1, D, DR, R, D, DR, R: 1st Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030006
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90030006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90030002
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90030003
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90030003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030016
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1


;===========================<DOUBLE DOWN, DOWN-LEFT, LEFT>===============================
[State -1, D, DL, L, D, DL, L: 1st Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030104
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90030104)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90030102
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90030101
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90030101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030114
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=====<QUARTER CIRCLE FORWARD, HALF CIRCLE BACK/QUARTER CIRCLE BACK, HALF CIRCLE FORWARD>======
;==============================================================================================

;==============================================================================================
;This is a command used mostly by SNK, and it has a few quirks compared to how Capcom approaches
;commands. For half-circle motions, SNK only checks for the cardinal inputs (i.e., the non-diagonal
;directions) to see if the user has successfully complated the move, and gives those cardinal inputs
;an extra-long input window (in KOF '98, for example, it's 16, compared to the 10 tick input window for
;normal commands) to compensate for the loss of the diagonal inputs.

;For the default EXPLODsive Buffering system, however, we have opted to allow diagonal inputs in
;these SNK-style half-circle commands, but to make them optional (because, to be quite honest, ignoring
;diagonal inputs entirely is pretty dumb!). What this ends up looking like is that the command can be
;completed only using cardinal inputs, but any diagonal inputs will still be cheked: any diagonal
;input will keep the command "alive" even if the cardinal input preceeding it has exhausted its input
;window.

;The way that translates to this explod system is that (for half-circle motions) we allow the user
;to skip the diagonal inputs: the "down" explod in a HCF command could be created if the "back"
;explod exists, e.g., instead of requiring the "down-back" explod to exist. However, we must also
;allow the "back" explod to be created if the "down-back" explod exists: this makes it so the diagonal
;inputs aren't just a waste of time; they will keep the command alive even if the previous cardinal
;direction explod has expired, which is exactly the same behavior that KOF has.

;To replicate the same behavior that SNK games use, simply delete the diagonal input explods, and increase
;the RemoveTime on each of the cardinal input explods.

;A final note: as with the QCFx2/QCBx2 commands, we use the parts of the earlier QCF/QCB command block
;instead of just repeating that code.
;==============================================================================================

;===============<DOWN, DOWN-RIGHT, RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>===================
[State -1, D, DR, R, DR, D, DL, L: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90032206
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90032206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90032203
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90032203) || NumExplod(90032206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90032202
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90032202) || NumExplod(90032203)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90032201
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90032201) || NumExplod(90032202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90032204
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;================<DOWN, DOWN-LEFT, LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>===================
[State -1, D, DL, L, DL, D, DR, R: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90032304
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90032304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90032301
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90032301) || NumExplod(90032304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90032302
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90032302) || NumExplod(90032301)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90032303
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90032303) || NumExplod(90032302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90032306
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=================================<CHARGE BACK, FORWARD>===================================
;==============================================================================================
 
;==============================================================================================
;Capcom and SNK approach charge moves very differently; SNK bases its charge moves solely on the
;user's input, with no regard to character facing. Capcom games, however, "reset" their charge moves
;whenever the characters switch sides. Additionally, SNK style charge commands allow charging during
;hitpause; Capcom does not allow this.
 
;The charge moves below are a hybrid of Capcom and SNK's styles of charge moves; please see
;http://mugenguild.com/forum/msg.2366956 for more information on either style, as well as further
;discussion about the nuances of Capcom and SNK's style of charge moves.
;==============================================================================================
 
;===============================<(CAPCOM-SNK HYBRID) CHARGE BACK, FORWARD>================================
 
 
;==============================================================================================
;this is the standard method of coding charge moves in MUGEN (since MUGEN's in-built charge commands
;are completely broken), with two changes: the triggers are adjusted to ensure
;that the correct behavior occurs when switching sides, and the variable keeping track of how long
;the character is holding a particular direction increases when left is held, but decreases when right
;is held.
 
;When a right-facing character holds left, var(47) will increase by one every tick. When a left-facing
;character holds right, var(47) will decrease by one every tick. If at any point the character stops
;holding that respective direction, var(47) will be reset to 0. And if var(47) has an absolute value
;greater than or equal to 45 (meaning left or right has been held for 45 or more ticks), then var(48)
;is set to 16. This is our charge buffer, and as long as it's non-zero, the character is able to perform
;a charge move. var(48) will slowly start counting down to 0, however, if the player stops hold left or right!
;==============================================================================================
[State -1, Left Charge Increment]
type = VarAdd
triggerAll = NumHelper(90000005) && !IsHelper
trigger1 = !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType = A, Facing = -1, Facing = 1) && Helper(90000005), command = "holdback"
trigger2 = AILevel
var(47) = 1
ignoreHitPause = 1
 
;this will only activate if var(47) is greater than zero; this is to avoid this VarSet from activating
;when the player is charging right
[State -1, Left Charge Reset]
type = VarSet
triggerAll = var(47) > 0
triggerAll = NumHelper(90000005) && !IsHelper
trigger1 = !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType = A, Facing = -1, Facing = 1) && (Helper(90000005), command != "holdback" || Helper(90000005), command = "holdfwd")
trigger2 = !AILevel
trigger2 = P2dist x < 0 || (Facing = -1 && StateType != A)
trigger3 = AILevel
trigger3 = StateNo = 0 || (StateNo = 20 && vel x > 0) || (StateNo = [760,762])
trigger4 = AILevel
trigger4 = (StateNo = 40 && sysvar(1) != -1)
trigger5 = AILevel
trigger5 = (StateNo = [1000, 4999]) && Time = 1
var(47) = 0
ignoreHitPause = 1
 
[State -1, Right Charge Increment]
type = VarAdd
triggerAll = NumHelper(90000005) && !IsHelper
trigger1 = !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType = A, Facing = 1, Facing = -1) && Helper(90000005), command = "holdfwd"
trigger2 = AILevel
var(47) = -1
ignoreHitPause = 1
 
[State -1, Right Charge Reset]
type = VarSet
triggerAll = var(47) < 0
triggerAll = NumHelper(90000005) && !IsHelper
trigger1 = !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType = A, Facing = 1, Facing = -1) && (Helper(90000005), command != "holdfwd" || Helper(90000005), command = "holdback")
trigger2 = !AILevel
trigger2 = P2dist x < 0 || (Facing = 1 && StateType != A)
trigger3 = AILevel
trigger3 = StateNo = 0 || (StateNo = 20 && vel x > 0) || (StateNo = [760,762])
trigger4 = AILevel
trigger4 = (StateNo = 40 && sysvar(1) != -1)
trigger5 = AILevel
trigger5 = (StateNo = [1000, 4999]) && Time = 1
var(47) = 0
ignoreHitPause = 1
 
[State -1, Left/Right Charge Buffer Activation]
type = VarSet
;we need to remember to check the absolute value of var(47), since it can be
;either positive or negative!
trigger1 = abs(var(47)) >= 45 && !var(20)
trigger2 = abs(var(47)) >= 1 && var(20)
trigger3 = abs(var(47)) >= 1 && StateNo = [1000, 4999]
var(48) = ifElse(var(47) < 0, -16, 16)
ignoreHitPause = 1
 
[State -1, Left Charge Buffer Decrement]
type = VarAdd
trigger1 = abs(var(47)) < 45 && var(48) > 0
var(48) = -1
 
[State -1, Right Charge Buffer Decrement]
type = VarAdd
trigger1 = abs(var(47)) < 45 && var(48) < 0
var(48) = 1
 
 
 
;==============================================================================================
;With Capcom-style charge moves, the length of time the command is active behaves very differently;
;than with standard commands, instead of having the RemoveTime be a constant value, we use the
;current value of the charge buffer, var(48).
;==============================================================================================
 
;=====================================<CHARGE LEFT, RIGHT>=====================================
;we only need one command explod for this move, since we already know that the player has been
;inputting the opposite direction!
[State -1, Charge Left, Right: Right]
type = Explod
triggerAll = var(48) > 0
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
trigger2 = Helper(90000005), command = "ChargeL,R"
anim = 1
ID = 90010606
removeTime = var(48) + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = var(48) + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = var(48) + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1
 
 
 
;=====================================<CHARGE RIGHT, LEFT>=====================================
[State -1, Charge Right, Left: Left]
type = Explod
triggerAll = var(48) < 0
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
trigger2 = Helper(90000005), command = "ChargeR,L"
anim = 1
ID = 90010704
removeTime = abs(var(48)) + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = abs(var(48)) + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = abs(var(48)) + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1
 
 
 
;==============================================================================================
;============================<CHARGE BACK, FORWARD, BACK, FORWARD>=============================
;==============================================================================================
 
;==============================================================================================
;This is extremely similar to the QCFx2/QCBx2 code, only with slight adjustments made to make it
;fit the format of a charge move.
;==============================================================================================
 
;==============================<CHARGE LEFT, RIGHT, LEFT, RIGHT>===============================
 
[State -1, Charge Left, Right, Left, Right: 1st Right]
type = Explod
triggerAll = var(48) > 0
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back"
trigger2 = Helper(90000005), command = "ChargeL,R"
anim = 1
ID = 90030606
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1
 
[State -1, Charge Left, Right, Left, Right: 2nd Left]
type = Explod
triggerAll = NumExplod(90030606)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd"
trigger2 = Helper(90000005), command = "ChargeR,L"
anim = 1
ID = 90030604
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1
 
[State -1, Charge Left, Right, Left, Right: 2nd Right]
type = Explod
triggerAll = NumExplod(90030604)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
trigger2 = Helper(90000005), command = "ChargeL,R" && !NumExplod(90000001) && !NumExplod(90000003) && !NumExplod(90000007) && !NumExplod(90000009)
anim = 1
ID = 90030616
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1
 
 
 
;==============================<CHARGE RIGHT, LEFT, RIGHT, LEFT>===============================
[State -1, Charge Right, Left, Right, Left: 1st Left]
type = Explod
triggerAll = var(48) < 0
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd"
trigger2 = Helper(90000005), command = "ChargeR,L"
anim = 1
ID = 90030704
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1
 
[State -1, Charge Right, Left, Right, Left: 2nd Right]
type = Explod
triggerAll = NumExplod(90030704)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back"
trigger2 = Helper(90000005), command = "ChargeL,R"
anim = 1
ID = 90030706
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1
 
[State -1, Charge Right, Left, Right, Left: 2nd Left]
type = Explod
triggerAll = NumExplod(90030706)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
trigger2 = Helper(90000005), command = "ChargeR,L" && !NumExplod(90000001) && !NumExplod(90000003) && !NumExplod(90000007) && !NumExplod(90000008) && !NumExplod(90000009)
anim = 1
ID = 90030714
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1
 
 
 
;==============================================================================================
;======================================<CHARGE DOWN, UP>=======================================
;==============================================================================================
 
;==============================================================================================
;This uses the exact same concept as the Back, Forward charge move, only things are much easier
;since we don't have to deal with switching sides and having to have mirrored commands!
 
;Do note that we use different variables [var(49) and var(50)] here.
;==============================================================================================
 
[State -1, Down Charge Increment]
type = VarAdd
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !AIlevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "holddown"
trigger2 = !AIlevel
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "holdup"
trigger3 = AIlevel
var(49) = 1
ignoreHitPause = 1
 
[State -1, Down Charge Reset]
type = VarSet
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "holddown" || Helper(90000005), command = "holdup"
trigger2 = !AILevel
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command != "holdup" || Helper(90000005), command = "holddown"
trigger3 = AILevel
trigger3 = StateNo = 0 || StateNo = 20 || (StateNo = 40 && Time = 1) || StateNo = 760
trigger4 = AILevel
trigger4 = (StateNo = [1000,4999]) && Time = 1
trigger5 = AILevel
trigger5 = (StateNo = [120,155]) && StateType != C
var(49) = 0
ignoreHitPause = 1
 
[State -1, Down Charge Buffer Activation]
type = VarSet
trigger1 = var(49) >= 45 && !var(20)
trigger2 = abs(var(49)) >= 1 && var(20)
trigger3 = abs(var(49)) >= 1 && StateNo = [1000, 4999]
var(50) = 16
ignoreHitPause = 1
 
[State -1, Down Charge Buffer Decrement]
type = VarAdd
trigger1 = var(49) < 45 && var(50) > 0
var(50) = -1
 
[State -1, Charge Down, Up: Up]
type = Explod
triggerAll = var(50) > 0
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "up" && Helper(90000005), command != "down") || Helper(90000005), command = "ChargeD,U"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "down" && Helper(90000005), command != "up") || Helper(90000005), command = "ChargeU,D"
anim = 1
ID = 90010808
removeTime = var(50) + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = var(50) + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = var(50) + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1
 
 
 
;==============================================================================================
;===================<CHARGE DOWN-BACK, DOWN-FORWARD, DOWN-BACK, UP-FORWARD>====================
;==============================================================================================
 
;==============================================================================================
;Almost identical to the charge Back, Forward, Back, Forward command, only we have to check var(50)
;(to make sure down has been charged enough) in addition to checking var(48) (to make sure back has
;been charged enough.
;==============================================================================================
 
;=====================<CHARGE DOWN-LEFT, DOWN-RIGHT, DOWN-LEFT, UP-RIGHT>======================
[State -1, Charge Down-Left, Down-Right, Down-Left, Up-Right: Down-Right]
type = Explod
triggerAll = var(48) > 0 && var(50) > 0
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up") || Helper(90000005), command = "ChargeDL,DR"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down") || Helper(90000005), command = "ChargeUL,UR"
anim = 1
ID = 90030803
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1
 
[State -1, Charge Down-Left, Down-Right, Down-Left, Up-Right: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030803)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up") || Helper(90000005), command = "ChargeDR,DL"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down") || Helper(90000005), command = "ChargeUL,UR"
anim = 1
ID = 90030801
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1
 
[State -1, Charge Down-Left, Down-Right, Down-Left, Up-Right: Up-Right]
type = Explod
triggerAll = NumExplod(90030801)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = ((Helper(90000005), command = "ufwd" || Helper(90000005), command = "up" || Helper(90000005), command = "uback") && Helper(90000005), command != "down") || Helper(90000005), command = "ChargeDR,U"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = ((Helper(90000005), command = "dfwd" || Helper(90000005), command = "down" || Helper(90000005), command = "dback") && Helper(90000005), command != "up") || Helper(90000005), command = "ChargeUR,D"
anim = 1
ID = 90030809
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1
 
 
 
;=====================<CHARGE DOWN-RIGHT, DOWN-LEFT, DOWN-RIGHT, UP-LEFT>======================
[State -1, Charge Down-Right, Down-Left, Down-Right, Up-Left: Down-Left]
type = Explod
triggerAll = var(48) < 0 && var(50) > 0
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up") || Helper(90000005), command = "ChargeDR,DL"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down") || Helper(90000005), command = "ChargeUR,UL"
anim = 1
ID = 90030901
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1
 
[State -1, Charge Down-Right, Down-Left, Down-Right, Up-Left: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030901)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up") || Helper(90000005), command = "ChargeDL,DR"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down") || Helper(90000005), command = "ChargeUR,UL"
anim = 1
ID = 90030903
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1
 
[State -1, Charge Down-Right, Down-Left, Down-Right, Up-Left: Up-Left]
type = Explod
triggerAll = NumExplod(90030903)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = ((Helper(90000005), command = "uback" || Helper(90000005), command = "up" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "down") || Helper(90000005), command = "ChargeDL,U"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = ((Helper(90000005), command = "dback" || Helper(90000005), command = "down" || Helper(90000005), command = "dfwd") && Helper(90000005), command != "up") || Helper(90000005), command = "ChargeUL,D"
anim = 1
ID = 90030907
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1
 
 
 
;=====================<CHARGE DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT, UP-RIGHT>====================
[State -1, Charge DL, D, DR, R, UR: Down]
type = Explod
triggerAll = var(48) > 0 && var(50) > 0
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90030812
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1
 
[State -1, Charge DL, D, DR, R, UR: Down-Right]
type = Explod
triggerAll = (var(48) > 0 && var(50) > 0) || NumExplod(90030812)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90030813
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1
 
[State -1, Charge DL, D, DR, R, UR: Right]
type = Explod
triggerAll = NumExplod(90030813) || NumExplod(90030812)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030816
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1
 
[State -1, Charge DL, D, DR, R, UR: Up-Right]
type = Explod
triggerAll = NumExplod(90030816)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "ufwd" || Helper(90000005), command = "up" || Helper(90000005), command = "uback") && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "dfwd" || Helper(90000005), command = "down" || Helper(90000005), command = "dback") && Helper(90000005), command != "up"
anim = 1
ID = 90030809
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1
 
 
 
;====================<CHARGE DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT, UP-LEFT>=======================
[State -1, Charge DR, D, DL, L, UL: Down]
type = Explod
triggerAll = var(48) < 0 && var(50) > 0
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90030912
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1
 
[State -1, Charge DR, D, DL, L, UL: Down-Left]
type = Explod
triggerAll = (var(48) > 0 && var(50) > 0) || NumExplod(90030912)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90030911
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1
 
[State -1, Charge DR, D, DL, L, UL: Left]
type = Explod
triggerAll = NumExplod(90030911) || NumExplod(90030912)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030914
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1
 
[State -1, Charge DR, D, DL, L, UL: Up-Left]
type = Explod
triggerAll = NumExplod(90030914)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "uback" || Helper(90000005), command = "up" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "dback" || Helper(90000005), command = "down" || Helper(90000005), command = "dfwd") && Helper(90000005), command != "up"
anim = 1
ID = 90030907
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;====================<FORWARD, DOWN, DOWN-FORWARD/BACK, DOWN, DOWN-BACK>=======================
;==============================================================================================

;==============================================================================================
;Nothing special here, just the standard dragon punch motion!
;==============================================================================================

;================================<RIGHT, DOWN, DOWN-RIGHT>=====================================
[State -1, R, D, DR: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010206
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, D, DR: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1
ID = 90010256
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, (Press) R, D, DR: Down]
type = Explod
triggerAll = NumExplod(90010206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010202
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, (Press) R, D, DR: Down-Right]
type = Explod
triggerAll = NumExplod(90010202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90010203
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, (Release) R, D, DR: Down]
type = Explod
triggerAll = NumExplod(90010256)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010252
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, (Release) R, D, DR: Down-Right]
type = Explod
triggerAll = NumExplod(90010252)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90010253
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(90010006) && NumExplod(90010253)
ID = 90010253
ignoreHitPause = 1

[State -1, R, D, DR (shortcut): 1st Down-Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 99010203
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, D, DR (shortcut): Neutral]
type = Explod
triggerAll = NumExplod(90000003) && NumExplod(99010203)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 99010205
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove R, D, DR (shortcut): Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(99010203)
ID = 99010205
ignoreHitPause = 1

[State -1, R, D, DR (shortcut): 2nd Down-Right]
type = Explod
triggerAll = NumExplod(99010203) && NumExplod(99010205)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90010203
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<LEFT, DOWN, DOWN-LEFT>======================================
[State -1, L, D, DL: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010304
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, D, DL: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1
ID = 90010354
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, (Press) L, D, DL: Down]
type = Explod
triggerAll = NumExplod(90010304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010302
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, (Press) L, D, DL: Down-Left]
type = Explod
triggerAll = NumExplod(90010302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90010301
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, (Release) L, D, DL: Down]
type = Explod
triggerAll = NumExplod(90010354)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010352
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, (Release) L, D, DL: Down-Left]
type = Explod
triggerAll = NumExplod(90010352)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90010351
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(90010104) && NumExplod(90010351)
ID = 90010351
ignoreHitPause = 1

[State -1, L, D, DL (shortcut): 1st Down-Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 99010301
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, D, DL (shortcut): Neutral]
type = Explod
triggerAll = NumExplod(90000001) && NumExplod(99010301)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 99010305
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove L, D, DL (shortcut): Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(99010301)
ID = 99010305
ignoreHitPause = 1

[State -1, L, D, DL (shortcut): 2nd Down-Left]
type = Explod
triggerAll = NumExplod(99010301) && NumExplod(99010305)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90010301
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=================================<HALF CIRCLE FORWARD/BACK>===================================
;==============================================================================================

;==============================================================================================
;As mentioned earlier, SNK games have command shortcuts for half-circle moves, allowing the user
;to only input cardinal directions and still complete the command. We have opted to use Capcom's
;method for the standard half circle comands here, but these can very easily be modified to use
;the SNK method!
;==============================================================================================

;========================<LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>============================
[State -1, L, DL, D, DR, R: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010404
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1
ID = 90010454
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90010404) || NumExplod(90010454)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90010401
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90010401) || NumExplod(90010404) || NumExplod(90010454)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010402
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90010402) || NumExplod(90010401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90010403
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90010403) || NumExplod(90010402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010406
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;========================<RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>============================
[State -1, R, DR, D, DL, L: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010506
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1


[State -1, R, DR, D, DL, L: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1
ID = 90010556
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90010506) || NumExplod(90010556)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90010503
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90010503) || NumExplod(90010506) || NumExplod(90010556)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010502
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90010502) || NumExplod(90010503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90010501
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010501) || NumExplod(90010502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010504
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;==============================<DOUBLE HALF CIRCLE FORWARD/BACK>===============================
;==============================================================================================

;==============================================================================================
;The double half circle motions use the exact same principles that the double quarter circle motions
;used: they're dependent on the standard half circle motions to reduce clutter and unnecessary
;duplication of code.
;==============================================================================================

;=====================<DOUBLE LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>========================
[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 1st Right]
type = Explod
triggerAll = NumExplod(90010403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030406
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Left]
type = Explod
triggerAll = NumExplod(90030406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030404
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030404)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1
ID = 90030401
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90030401) || NumExplod(90030404)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "back"
anim = 1
ID = 90030402
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030402) || NumExplod(90030401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1
ID = 90030403
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90030403) || NumExplod(90030402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030416
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;========================<DOUBLE RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>============================
[State -1, R, DR, D, DL, L, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030504
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Right]
type = Explod
triggerAll = NumExplod(90030504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030506
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030506)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1
ID = 90030503
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90030503) || NumExplod(90030506)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "back"
anim = 1
ID = 90030502
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030502) || NumExplod(90030503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1
ID = 90030501
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90030501) || NumExplod(90030502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030514
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================<HALF CIRCLE FORWARD, BACK/HALF CIRCLE BACK, FORWARD>======================
;==============================================================================================

;==============================================================================================
;This command is used generally by SNK for characters with command throws; much like SNK half-circle
;commands, a player can skip the diagonal inputs and still complete the move.
;==============================================================================================

;====================<RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT, RIGHT>=========================
[State -1, R, DR, D, DL, L, R: Press 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90012006
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Release 1st Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1
ID = 90012056
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Down-Right]
type = Explod
triggerAll = NumExplod(90012006) || NumExplod(90012056)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1
ID = 90012003
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Down]
type = Explod
triggerAll = NumExplod(90012003) || NumExplod(90012006) || NumExplod(90012056)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "back"
anim = 1
ID = 90012002
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Down-Left]
type = Explod
triggerAll = NumExplod(90012002) || NumExplod(90012003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1
ID = 90012001
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Left]
type = Explod
triggerAll = NumExplod(90012001) || NumExplod(90012002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90012004
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90012004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90012016
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=====================<LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT, LEFT>=========================
[State -1, L, DL, D, DR, R, L: Press 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90012104
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Release 1st Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1
ID = 90012154
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Down-Left]
type = Explod
triggerAll = NumExplod(90012104) || NumExplod(90012154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1
ID = 90012101
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Down]
type = Explod
triggerAll = NumExplod(90012101) || NumExplod(90012104) || NumExplod(90012154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "back"
anim = 1
ID = 90012102
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Down-Right]
type = Explod
triggerAll = NumExplod(90012102) || NumExplod(90012101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1
ID = 90012103
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Right]
type = Explod
triggerAll = NumExplod(90012103) || NumExplod(90012102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90012106
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90012106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90012114
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;+==================================<(SPECIAL) DOWN, UP >+=====================================
;==============================================================================================

[State -1, D, U: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90012702
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, U: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1
ID = 90012752
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, D, U: Up]
type = Explod
triggerAll = NumExplod(90010002) || NumExplod(90010052)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
anim = 1
ID = 90012708
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===============================<REMOVE DIRECTIONAL DETECTORS>=================================
;==============================================================================================

;==============================================================================================
;This block of RemoveExplods gets rid of any active release detector explods; if the direction in
;question isn't currently being input, or if the direction is being input but other directions are
;also being input, then the detector explod is removed, having served its purpose as a detector.
;This must go at the very bottom of the entire EXPLODsive Buffering system code!
;==============================================================================================

[State -1, Remove Down Detector]
type = RemoveExplod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000002
ignoreHitPause = 1

[State -1, Remove Down-Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000003
ignoreHitPause = 1

[State -1, Remove Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000006
ignoreHitPause = 1

[State -1, Remove Up-Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000009
ignoreHitPause = 1

[State -1, Remove Up Detector]
type = RemoveExplod
triggerAll = NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000008
ignoreHitPause = 1

[State -1, Remove Up-Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000007)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000007
ignoreHitPause = 1

[State -1, Remove Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000004
ignoreHitPause = 1

[State -1, Remove Down-Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000001)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000001
ignoreHitPause = 1



;==============================================================================================
;==============================<REMOVE RELEASE BUTTON DETECTORS>===============================
;==============================================================================================

;==============================================================================================
;Same principle here as with the directional release detector explods.
;==============================================================================================

[State -1, Remove x Detector]
type = RemoveExplod
triggerAll = NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "x" && Helper(90000005), command != "holdx"
ID = 90000201
ignoreHitPause = 1

[State -1, Remove y Detector]
type = RemoveExplod
triggerAll = NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "y" && Helper(90000005), command != "holdy"
ID = 90000211
ignoreHitPause = 1

[State -1, Remove z Detector]
type = RemoveExplod
triggerAll = NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "z" && Helper(90000005), command != "holdz"
ID = 90000221
ignoreHitPause = 1

[State -1, Remove a Detector]
type = RemoveExplod
triggerAll = NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "a" && Helper(90000005), command != "holda"
ID = 90000231
ignoreHitPause = 1

[State -1, Remove b Detector]
type = RemoveExplod
triggerAll = NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "b" && Helper(90000005), command != "holdb"
ID = 90000241
ignoreHitPause = 1

[State -1, Remove c Detector]
type = RemoveExplod
triggerAll = NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "c" && Helper(90000005), command != "holdc"
ID = 90000251
ignoreHitPause = 1

[State -1, Remove start Detector]
type = RemoveExplod
triggerAll = NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "start" && Helper(90000005), command != "holdstart"
ID = 90000194
ignoreHitPause = 1


;==============================================================================================
;==========================================<GUARDING>==========================================
;==============================================================================================

;==============================================================================================
;Here, we override the MUGEN's default guard system when the character is airborne, and add our
;own triggers. This will ensure that the player can always block as long as they are holding a
;direction away from the opponent. This block of code also adds "chicken guarding", which is allowing
;the player to air guard by holding not only back, but down-back and up-back.

;It is also recommended that you also override the guard states (120, 130, 131, 132, 140, 150, 151,
;152, 154, 155) with an updated version that uses the EXPLODsive buffering system. A copy of those
;fixed states can be found here: http://network.mugenguild.com/jmorphman/resources/EXPLODsiveBuffering_GuardStates.txt
;==============================================================================================

[State -1, AssertSpecial: NoAirGuard]
type = AssertSpecial
trigger1 = P2dist x < 0 && StateType = A
trigger1 = !AILevel
flag = NoAirGuard
ignoreHitPause = 0

[State -1, Air Blocking]
type = ChangeState
triggerAll = !AILevel
triggerAll = InGuardDist
triggerAll = StateType = A
triggerAll = ctrl
triggerAll = !(StateNo = [120,155])
triggerAll = !NumExplod(90000004) && !NumExplod(90000006) && !NumExplod(90000001) && !NumExplod(90000003) && !NumExplod(90000007) && !NumExplod(90000009)
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
trigger2 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000001)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000003))
trigger3 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000007)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000009))
value = 120

;These three ChangeStates are only in use when the character has landed from a jump after switching
;sides, to get around a MUGEN bug where a character's directions don't switch until a tick has passed,
;after they've landed from a jump and switched sides. Otherwise, MUGEN's default guard behavior works
;well enough!
[State -1, AssertSpecial: No StandGuard and NoCrouchGuard]
type = AssertSpecial
triggerAll = !AILevel
trigger1 = P2dist x < 0 && StateType != A
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger3 = !NumExplod(90000004) && !NumExplod(90000006) && !NumExplod(90000001) && !NumExplod(90000003) && !NumExplod(90000007) && !NumExplod(90000009)
flag = NoStandGuard
flag2 = NoCrouchGuard
ignoreHitPause = 0

[State -1, Stand Blocking]
type = ChangeState
triggerAll = !AILevel
triggerAll = InGuardDist
triggerAll = (P2dist x < 0 && StateType != A) || NumExplod(94646464) || NumExplod(92468246)
triggerAll = StateType = S
triggerAll = ctrl
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
value = 120

[State -1, Crouch Blocking]
type = ChangeState
triggerAll = !AILevel
triggerAll = InGuardDist
triggerAll = (P2dist x < 0 && StateType != A) || NumExplod(94646464) || NumExplod(92468246)
triggerAll = StateType = C
triggerAll = ctrl
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000001)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000003))
value = 120



;==============================================================================================
;==============================================================================================
;=============================<End of EXPLODsive Buffering System>=============================
;==============================================================================================
;==============================================================================================

[State -1, Tick Fix]
type = CtrlSet
triggerAll = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerAll = !AILevel
;command = "a+x"
triggerAll = NumExplod(90000230) && NumExplod(90000200)
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))
;command = "holdfwd"
trigger1 = ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command = "holdback", command = "holdfwd"), ifElse(P2dist x < 0, command = "holdfwd", command = "holdback"))
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerAll = !AILevel
;command = "a+x"
triggerAll = NumExplod(90000230) && NumExplod(90000200)
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))
;command = "holdback"
trigger1 = ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command = "holdfwd", command = "holdback"), ifElse(P2dist x < 0, command = "holdback", command = "holdfwd"))

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = !AILevel
;command = "a+x"
triggerAll = NumExplod(90000230) && NumExplod(90000200)
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Shout of Earth (anti-ground)]
type = ChangeState
value = 3350
triggerAll = !AILevel
;command = "[charge] DB, DF, DB, UF"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90030809)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90030907))
;a + b + c
triggerAll = (ifElse(NumExplod(90000230), 1, 0) + ifElse(NumExplod(90000240), 1, 0) + ifElse(NumExplod(90000250), 1, 0) >= 3) || (ifElse(NumExplod(90000235), 1, 0) + ifElse(NumExplod(90000245), 1, 0) + ifElse(NumExplod(90000255), 1, 0) >= 3)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Shout of Earth (anti-air)]
type = ChangeState
value = 3300
triggerAll = !AILevel
;command = "[charge] DB, DF, DB, UF"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90030809)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90030907))
;x + y + z
triggerAll = (ifElse(NumExplod(90000200), 1, 0) + ifElse(NumExplod(90000210), 1, 0) + ifElse(NumExplod(90000220), 1, 0) >= 3) || (ifElse(NumExplod(90000205), 1, 0) + ifElse(NumExplod(90000215), 1, 0) + ifElse(NumExplod(90000225), 1, 0) >= 3)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Ground Shave Rolling]
type = ChangeState
value = 3150
triggerAll = !AILevel
;command = "charge B, F"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90030616)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90030714))
;a + b / a + c / b + c
triggerAll = (ifElse(NumExplod(90000230), 1, 0) + ifElse(NumExplod(90000240), 1, 0) + ifElse(NumExplod(90000250), 1, 0) >= 2) || (ifElse(NumExplod(90000235), 1, 0) + ifElse(NumExplod(90000245), 1, 0) + ifElse(NumExplod(90000255), 1, 0) >= 2)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Direct Lightning]
type = ChangeState
value = 3050
triggerAll = !AILevel
;command = "charge B, F"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90030616)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90030714))
;x + y / x + z / y + z
triggerAll = (ifElse(NumExplod(90000200), 1, 0) + ifElse(NumExplod(90000210), 1, 0) + ifElse(NumExplod(90000220), 1, 0) >= 2) || (ifElse(NumExplod(90000205), 1, 0) + ifElse(NumExplod(90000215), 1, 0) + ifElse(NumExplod(90000225), 1, 0) >= 2)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Ground Shave Rolling]
type = ChangeState
value = 3100
triggerAll = !AILevel
;command = "charge B, F"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90030616)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90030714))
;a / b / c
triggerAll = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Direct Lightning]
type = ChangeState
value = 3000
triggerAll = !AILevel
;command = "charge B, F"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90030616)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90030714))
;x / y / z
triggerAll = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, EX Vertical Roll]
type = ChangeState
value = 1330
triggerAll = !AILevel
;command = "charge D, U"
triggerAll = NumExplod(90010808)
;a + b / a + c / b + c
triggerAll = (ifElse(NumExplod(90000230), 1, 0) + ifElse(NumExplod(90000240), 1, 0) + ifElse(NumExplod(90000250), 1, 0) >= 2) || (ifElse(NumExplod(90000235), 1, 0) + ifElse(NumExplod(90000245), 1, 0) + ifElse(NumExplod(90000255), 1, 0) >= 2)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Backstep Roll]
type = ChangeState
value = 1230
triggerAll = !AILevel
;command = "charge B, F"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010606)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010704))
;a + b / a + c / b + c
triggerAll = (ifElse(NumExplod(90000230), 1, 0) + ifElse(NumExplod(90000240), 1, 0) + ifElse(NumExplod(90000250), 1, 0) >= 2) || (ifElse(NumExplod(90000235), 1, 0) + ifElse(NumExplod(90000245), 1, 0) + ifElse(NumExplod(90000255), 1, 0) >= 2)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Rolling Attack]
type = ChangeState
value = 1130
triggerAll = !AILevel
;command = "charge B, F"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010606)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010704))
;x + y / x + z / y + z
triggerAll = (ifElse(NumExplod(90000200), 1, 0) + ifElse(NumExplod(90000210), 1, 0) + ifElse(NumExplod(90000220), 1, 0) >= 2) || (ifElse(NumExplod(90000205), 1, 0) + ifElse(NumExplod(90000215), 1, 0) + ifElse(NumExplod(90000225), 1, 0) >= 2)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Electric Thunder]
type = ChangeState
value = 1030
triggerAll = !AILevel
;x + y / x + z / y + z
triggerAll = (ifElse(NumExplod(90000200), 1, 0) + ifElse(NumExplod(90000210), 1, 0) + ifElse(NumExplod(90000220), 1, 0) >= 2) || (ifElse(NumExplod(90000205), 1, 0) + ifElse(NumExplod(90000215), 1, 0) + ifElse(NumExplod(90000225), 1, 0) >= 2)
triggerAll = var(45) >= 5
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Vertical Rolling]
type = ChangeState
value = 1300
triggerAll = !AILevel
;command = "charge D, U"
triggerAll = NumExplod(90010808)
;a / b / c
triggerAll = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Backstep Roll]
type = ChangeState
value = 1200
triggerAll = !AILevel
;command = "charge B, F"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010606)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010704))
;a / b / c
triggerAll = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Rolling Attack]
type = ChangeState
value = 1100
triggerAll = !AILevel
;command = "charge B, F"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010606)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010704))
;x / y / z
triggerAll = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Electric Thunder]
type = ChangeState
value = 1000
triggerAll = !AILevel
;x / y / z
triggerAll = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
triggerAll = var(45) >= 5
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
triggerAll = StateNo = 150 || StateNo = 152
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && !var(20)
;command = "412p" || command = "412k"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90007552)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90007502))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
;a / b / c
trigger2 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
;command = "c+z"
triggerAll = NumExplod(90000250) && NumExplod(90000220)
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Dash Forward/Run]
type = ChangeState
value = 110
triggerAll = !AILevel
;command = "FF"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001016)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001064))
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = !AILevel
;command = "BB"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001064)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001016))
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Surprise Back]
type = ChangeState
value = 315
triggerAll = !AILevel
;command = "holdback" && command = "kkk"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000001)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000003))
triggerAll = command = "kkk"
triggerAll = StateType != A && !NumProjID(131035)
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4) || var(5)

[State -1, Surprise Forward]
type = ChangeState
value = 310
triggerAll = !AILevel
;command = "holdfwd" && command = "kkk"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000003)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000001))
triggerAll = command = "kkk"
triggerAll = StateType != A && !NumProjID(131035)
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4) || var(5)

[State -1, Coward Crouch]
type = ChangeState
value = 300
triggerAll = !AILevel
;command = "holddown" && command = "ppp"
triggerAll = (NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000001)) && (command = "ppp")
triggerAll = StateType != A && !NumProjID(131035)
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4) || var(5)

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
;command = "holdfwd" || command = "holdback"
trigger1 = NumExplod(90000006) || NumExplod(90000004)
trigger1 = command = "pp" || command = "kk"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Air Throw]
type = ChangeState
value = 850
triggerAll = !AILevel
;command = "holdfwd" || command = "holdback"
trigger1 = NumExplod(90000006) || NumExplod(90000004)
trigger1 = command = "pp" || command = "kk"
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && (var(3) != [1,2]) && pos y <= -32

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220
triggerAll = !AILevel
;command != "holddown" && command = "z"
triggerAll = (!NumExplod(90000002) && !NumExplod(90000003) && !NumExplod(90000001)) && (NumExplod(90000220) || command = "z")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250
triggerAll = !AILevel
;command != "holddown" && command = "c"
triggerAll = (!NumExplod(90000002) && !NumExplod(90000003) && !NumExplod(90000001)) && (NumExplod(90000250) || command = "c")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Rock Crush (Cancelled)]
type = ChangeState
value = 219
triggerAll = !AILevel
;command = "holdfwd" && command = "y"
triggerAll = ((ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004)))
triggerAll = NumExplod(90000210) || command = "y"
triggerAll = StateType != A && !NumProjID(131035)
trigger1 = var(5)

[State -1, Rock Crush]
type = ChangeState
value = 218
triggerAll = !AILevel
;command = "holdfwd" && command = "y"
triggerAll = ((ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004)))
triggerAll = NumExplod(90000210) || command = "y"
triggerAll = StateType != A && !NumProjID(131035)
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerAll = !AILevel
;command != "holddown" && command = "y"
triggerAll = (!NumExplod(90000002) && !NumExplod(90000003) && !NumExplod(90000001)) && (NumExplod(90000210) || command = "y")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = !AILevel
;command != "holddown" && command = "b"
triggerAll = (!NumExplod(90000002) && !NumExplod(90000003) && !NumExplod(90000001)) && (NumExplod(90000240) || command = "b")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerAll = !AILevel
;command != "holddown" && command = "x"
triggerAll = (!NumExplod(90000002) && !NumExplod(90000003) && !NumExplod(90000001)) && (NumExplod(90000200) || command = "x")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Light Kick]
type = ChangeState
value = 230 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = !AILevel
;command != "holddown" && command = "a"
triggerAll = (!NumExplod(90000002) && !NumExplod(90000003) && !NumExplod(90000001)) && (NumExplod(90000230) || command = "a")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Amazon River Run (Cancelled)]
type = ChangeState
value = 429
triggerAll = !AILevel
;"holddown" && command = "holdfwd" && command = "z"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000003)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000001))
triggerAll = NumExplod(90000220) || command = "z"
triggerAll = StateType != A && !NumProjID(131035)
trigger1 = var(5)

[State -1, Amazon River Run]
type = ChangeState
value = 428
triggerAll = !AILevel
;command = "holddown" && command = "holdfwd" && command = "z"
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000003)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000001))
triggerAll = NumExplod(90000220) || command = "z"
triggerAll = StateType != A && !NumProjID(131035)
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = !AILevel
;command = "holddown" && command = "z"
triggerAll = (NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000001)) && (NumExplod(90000220) || command = "z")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = !AILevel
;command = "holddown" && command = "c"
triggerAll = (NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000001)) && (NumExplod(90000250) || command = "c")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
;command  ="holddown" && command = "y"
triggerAll = (NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000001)) && (NumExplod(90000210) || command = "y")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
;command = "holddown" && command = "b"
triggerAll = (NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000001)) && (NumExplod(90000240) || command = "b")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = !AILevel
;command = "holddown" && command = "x"
triggerAll = (NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000001)) && (NumExplod(90000200) || command = "x")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
;command = "holddown" && command = "a"
triggerAll = (NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000001)) && (NumExplod(90000230) || command = "a")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Jumping Neutral/Angled Heavy Punch]
type = ChangeState
value = ifElse(vel x, 625, 620)
triggerAll = !AILevel
;command = "z"
triggerAll = NumExplod(90000220) || command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = !AILevel
;command = "c"
triggerAll = NumExplod(90000250) || command = "c"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = !AILevel
;command = "y"
triggerAll = NumExplod(90000210) || command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = !AILevel
;command = "b"
triggerAll = NumExplod(90000240) || command = "b"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = !AILevel
;command = "x"
triggerAll = NumExplod(90000200) || command = "x"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = !AILevel
;command = "a"
triggerAll = NumExplod(90000230) || command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = !AILevel
;command = "start"
triggerAll = NumExplod(90000195) || command = "start"
triggerAll = StateType != A
triggerAll = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(6)



;==============================================================================================
;===========================================< A.I >============================================
;==============================================================================================

[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && CanRecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jump]
type = ChangeState
value = 40
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A && ctrl
trigger1 = EnemyNear, MoveType = A && P2BodyDist x < 160 && EnemyNear, HitDefAttr = SC, AT

[State -1, Roll Forward]
type = ChangeState
value = 710
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [92,122])

[State -1, Dodge]
type = ChangeState
value = 700
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,60])

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 150, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (750 * (AILevel ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger1 = !var(26) || P2BodyDist x >= 40
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A || P2StateType = A
trigger1 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20) && PrevStateNo != 5120
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Air Throw]
type = ChangeState
value = 850
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = A
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = ctrl && pos y <= -32
trigger1 = P2StateType = A && Random < (200 * (AILevel ** 2 / 64.0))
trigger1 = (P2Dist x = [-20,60]) && (P2Dist y = [-90, 50])

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20, 35]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Run]
type = ChangeState
value = 100
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,80]) && (P2Dist y = [-92,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,94]) && (P2Dist y = [-60,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && Statetype != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,134]) && (P2Dist y = [-25,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (500 * (AILevel ** 2 / 64.0))

[State -1, Amazon River Run (Canceled)]
type = ChangeState
value = 429
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,180]) && (P2Dist y = [-30,0]) && P2StateType != C && P2StateType != L
trigger1 = var(5) && Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (EnemyNear, GetHitVar(HitTime) >= 8)

[State -1, Amazon River Run]
type = ChangeState
value = 428
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,200]) && (P2Dist y = [-30,0]) && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (EnemyNear, StateNo = [120,155]) && (EnemyNear, StateType = S)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,110]) && (P2Dist y = [-15,0]) && P2StateType != A && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Punch]
type = ChangeState
value = ifElse(vel x, 625, 620)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,98]) && (P2Dist y = [-105,20]) && P2StateType = A
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,65]) && (P2Dist y = [-25,65]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (750 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,100]) && (P2Dist y = [-70,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Rock Crush (Canceled)]
type = ChangeState
value = 219
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 80]) && (P2Dist y = [-30,0]) && P2StateType != C && P2StateType != L
trigger1 = var(5) && Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (EnemyNear, GetHitVar(HitTime) >= 8)

[State -1, Rock Crush]
type = ChangeState
value = 218
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 100]) && (P2Dist y = [-30,0]) && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (EnemyNear, StateNo = [120,155]) && (EnemyNear, StateType = S)

[State -1, Standing Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,90]) && (P2Dist y = [-80,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,120]) && (P2Dist y = [-40,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,105]) && (P2Dist y = [-40,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,84]) && (P2Dist y = [-30,60]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,82]) && (P2Dist y = [-75,30]) && P2StateType = A
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,83]) && (P2Dist y = [-90,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Kick]
type = ChangeState
value = 230 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,85]) && (P2Dist y = [-40,0]) && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,109]) && (P2Dist y = [-40,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,98]) && (P2Dist y = [-15,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,90]) && (P2Dist y = [-60,55]) && P2StateType != L
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (ifElse(P2Dist x < 0, 250, 50) * (AILevel ** 2 / 64.0))

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 83]) && (P2Dist y = [-46,60]) && P2StateType != L
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (ifElse(P2Dist x < 0, 250, 50) * (AILevel ** 2 / 64.0))

[State -1, Vertical Roll]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133 && var(20) <= 60, 1330, 1300)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-100, 0])
triggerAll = ((P2BodyDist x = [0, 60]) && P2StateType != A) || ((P2BodyDist x = [-25, 70]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Rolling Attack]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133 && var(20) <= 60, 1130, 1100)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-100, 0])
triggerAll = ((P2BodyDist x = [0, 160]) && P2StateType != A) || ((P2BodyDist x = [-25, 0]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Electric Thunder]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133 && var(20) <= 60, 1030, 1000)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-100, 0])
triggerAll = ((P2BodyDist x = [0, 40]) && P2StateType != A) || ((P2BodyDist x = [-25, 70]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Shout of Earth (Anti-Air)]
type = ChangeState
value = 3300
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 3000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = ((P2BodyDist x = [0, 45]) && P2StateType != A) || ((P2BodyDist x = [-25, 320]) && P2StateType = A)
triggerAll = (EnemyNear, HitOver || !(EnemyNear, MoveType = H) || var(21)) && !(EnemyNear, StateNo = [150,155]) && EnemyNear, Anim != 5040
triggerAll = !(EnemyNear, StateNo = 40 && EnemyNear, Time >= 1) && !(EnemyNear, StateNo = 52 && !(EnemyNear, ctrl) && EnemyNear, PrevStateNo = [5020,5040])
triggerAll = P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (500 * (AIlevel ** 2 / 64.0))

[State -1, Shout of Earth (Anti-Ground)]
type = ChangeState
value = 3350
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 3000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = P2Dist x >= 50
triggerAll = (EnemyNear, HitOver || !(EnemyNear, MoveType = H) || var(21)) && !(EnemyNear, StateNo = [150,155]) && EnemyNear, Anim != 5040
triggerAll = !(EnemyNear, StateNo = 40 && EnemyNear, Time >= 1) && !(EnemyNear, StateNo = 52 && !(EnemyNear, ctrl) && EnemyNear, PrevStateNo = [5020,5040])
triggerAll = P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (500 * (AIlevel ** 2 / 64.0))

[State -1, (MAX) Direct Lightning]
type = ChangeState
value = 3000 + 50 * (Power >= 2000)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 1000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = P2StateType != L && (P2Dist y = [-30,0])
triggerAll = P2StateType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1, 30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, (MAX) Ground Shave Rolling]
type = ChangeState
value = 3100 + 50 * (Power >= 2000)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 1000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = P2StateType != L && (P2Dist y = [-30,0])
triggerAll = P2StateType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1, 30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = AILevel && NumEnemy
triggerAll = StateType != A && Life >= 0.5 * LifeMax
triggerAll = (EnemyNear, Life) <= 0.5 * (EnemyNear, LifeMax)
trigger1 = ctrl
trigger1 = P2Dist x >= 160 && !(EnemyNear, ctrl)
trigger1 = (EnemyNear, MoveType = H) && (EnemyNear, HitFall) && Random < (50 * (AILevel ** 2 / 64.0))
