; ________________________________________________
;| Haohmaru by KarmaCharmeleon		|
; ŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻ
;==============================================================================================
;=======================================<INITIALIZE>===========================================
;==============================================================================================
[StateDef 5900]
type = S

[State 5900, Int VarReset]
type = VarRangeSet
trigger1 = !RoundsExisted
value = 0

[State 5900, Float VarReset]
type = VarRangeSet
trigger1 = !RoundsExisted
fvalue = 0

[State 5900, Configuration]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 7650
ID = 7650
name = "Configuration Helper"
posType = P1

[State 5900, Mode Detection]
type = VarSet
trigger1 = 1
var(40) = ifElse((PalNo > 6), 1, 0)
ignoreHitPause = 1

[State 5900, End]
type = ChangeState
trigger1 = 1
value = 5901