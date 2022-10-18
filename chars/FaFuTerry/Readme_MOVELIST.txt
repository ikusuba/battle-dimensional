                                          __________________________________________
=========================================|          Terry Bogard by Memo            |========================================
                                          ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯        
                                                         [14.NOV.14]
                                                         [July.2019] RagingRowen

 - Customized version of SNK Playmore's Terry Bogard character, for MUGEN 1.0




=====<Features>==============================================================================================================

 - All the essential stuff
 - Details and moves taken from his various video game appearances
 - Gameplay mixed from several games, including CvS2, KOF, SFA3, G.MOTW, and SFIII

=====<Movelist>==============================================================================================================

 U - up          x - light punch        a - light kick
 D - down        y - medium punch       b - medium kick
 F - forward     z - heavy punch        c - heavy kick
 B - back        p - any punch          k - any kick
 s - start       2p- two punches        2k- two kicks

 (Air) - Move must be performed in the air.
 (EX)  - Move has an EX version, performed by pressing two punch/kick buttons.
 (MAX) - Use two punch/kick buttons when performing a Super move to power it up.

<NORMAL>

.Buster Punch	         	    F/B + 2p         (near opponent)
.Buster Throw	              F/B + 2k         (near opponent)
.Rising Upper                     DF, z          

<SPECIAL>

.Power Wave 				D, DF, F, p
.Round Wave (EX Only) 			D, DF, F, 2p
.Burn Knuckle (EX)			D, DB, B, p
.Crack Shoot (EX)			D, DB, B, k
.Rising Tackle (EX)			(Charge)D, U, p
.Power Dunk (EX)                        F, D, DF, k
.Power Charge (EX)                      B, DB, D, DF, F, k
.Fire Kick (EX)                         (Charge)B, F, k

<SUPER>

.Power Geyser (MAX)			D, DB, B, DB, F, p
.Buster Wolf (MAX)			D, DF, F, D, DF, F, k
.High-Angle Geyser (MAX)		D, DB, B, D, DB, B, k

<LVL3 SUPER>

.*Super 1*				D, DF, F, D, DF, F, 2p (Power Stream by Default)
.*Super 2*				D, DB, B, D, DB, B, 2p (Rising Beat by Default)

These can be chosen in the Custom.txt File under ;=== LEVEL 3 SUPER SELECTION ===
Choices are: Power Stream, Rising Beat, Rising Force, Trinity Geyser

=====<SYSTEM>================================================================================================================

.Forward Dash:                  		F, F
.Run:                        		          hold
.Backward Dash:                 		B, B
.Low Jump:                      		tap U
.High Jump:                     		tap D, U
.Long Low Jump:                 		tap D, tap U            
.Sidestep:                      		a + x
.Sidestep Attack:            		          p / k
.Forward Roll:                  		F + a + x
.Backward Roll:                 		B + a + x
.Parry High:                    		tap F
.Parry Low:                     		tap D
.Air Parry:                     		tap F           	(Air)
.Power Charge:                  		hold b + y
.Zero Counter:                  		B, DB, D, p / k 	(during standing or crouching guard)
.Custom Combo:                  		c + z           	(Air also)
.Fall Recovery:                 		2p / a + x      	(while falling and allowed)

=====<Move Details>==========================================================================================================

 - Rising Upper can be cancelled into from Close S.HP.
 - Round Wave can be special-cancelled from.
 - (EX) Power Dunk causes ground bounce.
 - (EX) Fire Kick causes wall bounce.
 - Crack Shoot and Burn Knuckle is invunerable to normal projectiles in frames 1-7.
 - Any Geyser attack is unblockable in air.
 - Fire Kick is un-blockable in standing position, and invunerable to normal projectiles.
 - Power Dunk is invunerable until first hit.

=====<Gameplay Notes>========================================================================================================

COMBO SYSTEM:
 - Some Normal attacks can be canceled into Command, Special and Super moves
 - Some Special moves can be canceled into Super moves
 - Some Lv1 Super moves can be canceled into MAX Super moves
 - Canceling a Special, Super move or Custom Combo into a Super move resets the juggle points
   but also reduces its damage

CUSTOM COMBO:
 - Removes cancellable attack restrictions and gives you a lot of freedom to combo them
 - Juggle limit is lifted
 - You can only use EX Special or Super moves from the point the character starts flashing faster
   and brighter, and doing so ends Custom Combo
 - Gives you a short invulnerability window at the start

=====<Version History>=======================================================================================================

=====<Forth Update>

- Multi-Colored Hitsparks added.
- Trinity Geyser voice changed to XIII's.
- Rising Upper now cancellable from all Non-Air Punches except Far S.HP.
- More Hit Pause tweaks.

=====<Third Update>

- New Small Port, from CK/QB's version, also by HadeS.
- yaccel changed.
- Hit Pause adjustments.
- Adjustments to EX Moves.
- Rising Beat success's hitsounds changed/relocated.
- Buster Wolf hit launch tweaked.
- MAX High-Angle Geyser nerfed.
- Added Rising Force's voice samples from 2002 UM.
- Trinity Geyser tweaked, with Extra FX and sound to the startup.
- More Damage Adjustments.
- Added missing envshakes.
- Fixed some more misplaced/missing sounds

=====<Second Update>

- Added missing Custom Combo FX segment.
- Many fixes, like missing landing effects and hit sounds.
- Modified EX Power Charge to launch higher.
- Changed EX Power Wave again, to the 2002 UM Round Wave, with the ability to special-cancel.
- C.HP now special-cancellable.

=====<RagingRowen's Update>

- Changed most KOF voice samples to CVS ones.
- Added some voice samples from KOF MI Regulation A and KOF AllStar.
- Big Port and LVL3 Port changed to those of CrazyKoopa's version.
- Dramatic KO Freeze turned off by Default.
- All Specials available.
- You can select 2 out of the 4 Level 3 Supers.
- Taunt changed to that of Warusaki's CVS2 Terry.
- Added C.HP to Rising Upper chain, with adjustments to these 2 moves to make the chain work.
- Easier Power Wave Super Cancels.
- Changed EX Power Wave.
- Larger Power Geysers.
- MAX Power Geyser now similar to the MOTW version.
- Dash FX and Sound added to High Angle Geyser.
- Added Damage Dampening to MAX Supers.
- Buster Wolf MAX-Cancellable.
- MAX Buster Wolf now comes out on block like the Normal one.
- MAX High Angle Geyser changed to behave like the Normal one.
- Overheat Geyser finish text changed to High-Angle Geyser
- Removed random pixel on his Far HK.
- Many other Tweaks and Touches.

To Do:
- Should I allow Rising Upper cancelling from Kicks?
- Maybe a new intro or winpose.
- Maybe add a Buffering Sytem.
- Fix MAX Power Geyser's last hit not going towards the combo count unless cancelled into.
- Fix (MAX) Buster Wolf's startup.

=====<14/NOV/2014>

=====<Special Thanks>========================================================================================================
 
 - JmorphMan and CrazyKoopa for Ryo who I created a template from for Terry Bogard.
 - P.o.t.S. for code, effects, hitsparks, formatting style.
 - Legendary Demonkai, sounds, sprites.
 - Vyn for some sounds and FX from his cvsx Terry Bogard.
 - Warusaki3 for some sounds from cvsterry.
 - Mikita for some FX from Akatsuki.
 - SwiperGod, I used some velocitys from his KOFE full game Terry Bogard.
 - R@CE AKIRA for explaning how to use (ifElse) in a P.M. Now i understand it, JUST LOOK AT MY SPECIAL MOVES CODE..BEAUTIFULL..
   And for the special intros code!
 - The MUGEN Fighters Guild for providing hosting.
 - Elecbyte for M.U.G.E.N.
 - Again too Legendary Demonkai for mentioning that P.o.t.S. Should of made a Terry Bogard, thus giving me the idea!
 - To JTP768 for the color seperated sprites!
 - Divine Wolf for help with setting up different modes.
 - Every body who tested and left me some feed back, Victorys, Hungry Wolf, Mighty Kombat, Zer0degreez, Porcaro,
   lord Kain, Calhoun Tubbs87, R565, The Answer, Just No Point, Gritsmaster, Flowrellik, Kofguy4ever, Gamespy,
   Legendary DeMoNk@I, Yaret, Senorfro, Path-E-Tech Management, Hephaistos31, Sabockee, Snakebyte, Unstabler,
   [B.S.D.O] Ness, Hoshi, TheHateThatHateMade, Porcaro, Saikoro, and ~Hale "R@CE" Caesar~.
 - For the great palettes i would like to thank, Calhoun Tubbs87, Flowrellik, Sabockee, Hoshi, [B.S.D.O] Ness, 
   C-G-U and myself.
 - Quickfist for the Power Geyser Coding, yeah i stole it since it worked better than mine!
 - Thank you HadeS for the Small ports.

RagingRowen's Credits:
 
 - Warusaki3 for references.
 - CrazyKoopa for the MAX High-Angle Geyser finish.
 - K6666orochi for the Trinity Geyser start-up FX.
 - PeXXeR, SolidZone26 and etc. for feedback.

=====<Disclaimer>============================================================================================================

 - The Terry Bogard character is property of SNK Playmore
 - Capcom vs SNK is property of Capcom
 - This MUGEN character is a non-profit fan work, it cannot be used for any commercial purposes

=============================================================================================================================