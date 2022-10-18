                            __________________________________________
===========================| Zangief by varo_hades	              |===========================
                            ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯        [05.02.12]
                                                                              [Dec.2019] - RagingRowen

 - Contact:	varo_hades@hotmail.com
 - Contact:	https://mugenguild.com/forum/profile/ragingrowen-92678
 - Customized version of Capcom's Zangief character, for MUGEN 1.0

=====<Features>=====

 - All the essential stuff
 - Details and moves taken from his various video game appearances
 - Gameplay mixed from several games, including SF2, SF4, SFA3, MVC

=====<Movelist>=====

 U - up          x - light punch        a - light kick
 D - down        y - medium punch       b - medium kick
 F - forward     z - heavy punch        c - heavy kick
 B - back        p - any punch          k - any kick
 s - start       2p- two punches        2k- two kicks
 		 3p- three punches      3k- three kicks

 (Air) - Move must be performed in the air.
 (EX)  - Move has an EX version, performed by pressing two punch/kick buttons.
 (MAX) - Use two punch/kick buttons when performing a Super move to power it up.	

=====<Mode Overview>=====

This character has three different modes:

<Zangief>
- Classic Zangief.
- Based primarily on his CvS2 moveset, with a few extras.

<Mech Zangief>
- Mechanically Enhanced version of Zangief created by Shadaloo.
- Based primarily on his Moveset from MvC, with some slight changes and extras.
- Moves slower than normal Zangief.

=====<Normal Zangief>=====

<NORMAL>

.Headbutt				F + y
.Air Headbutt				U + y/z			(Air)
.Double Knee Drop			D + a/b			(Air)
.Kuuchuu Punch				B/F + z			(Air)
.Body Attack 				D + z			(Air)
.Piledriver:				F + 2p			(near opponent)
.Back Drop:	         		B + 2p			(near opponent)
.Kamitsuki:				F + 2k			(near opponent)
.Stomach Claw:				B + 2k			(near opponent)

<SPECIAL>

.Double Lariat				3p			
.Quick Double Lariat			3k
.Banishing Flat (EX)			F, D, DF, p
.Screw Piledriver (EX) 			360, p (near opponent)			
.Atomic Suplex/Flying Powerbomb (EX)	360, k
.Aerial Russian Slam (EX)		F, D, DF, k

<SUPER>

.Final Atomic Buster (MAX)		360, p (near opponent)
.Super Aerial Russian Slam (MAX)	D, DF, F, D, DF, F, k

<Lv3 SUPER>

.Ultra Final Atomic Buster		360, 2k (near opponent)

=====<Mech Zangief>=====

<NORMAL>

.Air Headbutt				U + y/z			(Air)
.Body Press				F + y
.Air Body Press				D + y			(Air)
.Double Knee Drop			D + a/b			(Air)
.Kuuchuu Punch				B/F + z			(Air)
.Body Attack				D + z			(Air)
.Piledriver				F + 2p			(near opponent)
.Back Drop				B + 2p			(near opponent)
.Kamitsuki				F + 2k			(near opponent)
.Stomach Claw				B + 2k			(near opponent)

<SPECIAL>

.Double Lariat  			3p		
.Quick Double Lariat 	 		3k
.Air Lariat				3p/3k			(Air)
.Vodka Fire (EX)			D, DF, F, p
.Screw Piledriver (EX) 			360, p (near opponent) 	(Air Also)		
.Atomic Suplex/Flying Powerbomb (EX)	360, k

<SUPER>

.Final Atomic Buster (MAX)		360, p (near opponent)
.Siberian Blizzard (MAX)		D, DF, F, D, DF, F, k

<Lv3 SUPER>

.Ultra Final Atomic Buster		360, 2k (near opponent)
.Power Atomic Destruction		D, DF, F, D, DB, B, 2p

<SYSTEM>

.Forward Dash:                  	F, F
   .Run:                        	hold
.Backward Dash:                 	B, B
.Low Jump:                      	tap U
.High Jump:                     	tap D, U
.Long Low Jump:                 	tap D, tap U            
.Sidestep:                      	a + x
   .Sidestep Attack:            	p / k
.Forward Roll:                  	F + a + x
.Backward Roll:                 	B + a + x
.Parry High:                    	tap F
.Parry Low:                     	tap D
.Air Parry:                     	tap F           	(Air)
.Power Charge:                  	hold b + y
.Zero Counter:                  	B, DB, D, p / k 	(during standing or crouching guard)
.Custom Combo:                  	c + z           	(Air also)
.Fall Recovery:                 	2p / a + x      	(while falling and allowed)

=====<Move Details>=====

- (Air) Body Press is an Overhead.
- Lariats can be moved by holding F or B.
- Atomic Suplex occurs up-close but Flying Powerbomb occurs when Zangief is running.
- Ultimate AB and Ultra Final AB merged, with Ultimate's startup and Ultra Final's grab animation.

=====<Gameplay Notes>=====

COMBO SYSTEM:
 - Some Normal attacks can be canceled into Special and Super moves
 - Some Special moves can be canceled into Super moves
 - Some Lv1 Super moves can be canceled into MAX Super moves
 - Cancelling a Special, Super move or Custom Combo into a Super move resets the juggle points
   but also reduces its damage

CUSTOM COMBO:
 - Removes cancellable attack restrictions and gives you a lot of freedom to combo them
 - Juggle limit is lifted
 - You can only use EX Special or Super moves from the point the character starts flashing faster
   and brighter, and doing so ends Custom Combo
 - Gives you a short invulnerability window at the start

=====<Miscellaneous>=====

- To change his size to TV aspect ratio (a.k.a. CvS scale), open the .def file and replace
  "Constants.cns" with "ConstantsCvS.cns".

=====<RagingRowen's Update>=====

2021 Update:
- HCB moves turned into 360s. (HCBs remain in CommandEasy.cmd)
- Atomic Suplex and Flying Powerbomb are not combined into one move.
- Atomic Suplex does more damage.

Fifth Update:
30th July 2020:
- A few Readme cleanups.
- Fixed AI doing disabled moves and etc.
29th July 2020:
- Palette Keymap and Defaults changed.
- Run Fixed.
- Fixed Mech Zangief's Swing Sounds on his Air Normals.
- Screw Piledriver Miss given Swing sound.
- Aerial Russian Slam given Swing sound upon throwing P2, also fixing the Slam sound upon landing.
- EX Aerial Russian Slam has faster startup.
28th July 2020:
- Master Mode removed (May do an 'EX' Mode in its place in the future.)
- Multi-Colored Hitsparks added.
- Win Quote adjustments (Removed character-specfic Win Quotes from Generic pool and added SFV and USF2 Quotes instead, and changed or added (For R. Mika, Alex, Karin and Guile) some existing character-specfic Win Quotes.)
- Various Frama Data and Velocity changes.
- Mech Mode Super Armor disabled (until I can get a more reliable one).
- Mech Mode now has slower movement.
- Mech Mode sound changes less drastic.
- Added Cheap KO voice for Mech Mode.
- Cheap KO fixed.
- Vodka Winpose changed to include the Fire and Burnt Face.
- Only Mech Mode can use Vodka Fire.
- Toss Up Removed.
- Fixed the missing Final Atomic Buster afterimages.
- Added Explosion on Slam to (MAX) Super Aerial Russian Slam.
- Ultimate Atomic Buster's invincibility (mostly) removed.

Forth Update:
- Added extra Gethit and KO sounds for Mech Zangief.
- Banishing Fist destroying Helpers. 

Third Update:
- New Normal: Ground Headbutt (Normal mode only)
- Ultimate Atomic Buster tweaked again, fixed P2 positioning before the suplex and added an "Ultimate" voice clip from SF4 instead of the "Final".
- Reverted P2's yaccel after EX Flying Powerbomb.

Second Update:
- Improved, Hi-Res FX provided by Trololo
- Ultimate Atomic Buster loses the SF4 Voice Clips for the usual CvS ones, and does a tad more damage.

First Update:
- Damage adjustments on most supers.
- Some fixes to his color seperation, specifially his belt buttons and his teeth during one of his win poses.
- Added Intro between Eagle (Jmorphman) and Hagger (ReddBrink).
- CvS Scale changed.
- New Level 3 Portraits.
- Adjustments to some intros, and his Raiden intro now works with Knuckles8864's version.
- Normal Throws have less grab range, with adjustments to the start-up anim.
- Slight changes to his EX Flying Powerbomb.
- Vodka Fire now D, DF, F, p.
- Banishing Fist FX adjusted.
- Fixed Light Punches and Kicks coming out rapidly even though they didn't make contact.
- HCB and HCF commands adjusted. And HCFs have been removed for the Screw Piledriver and Atomic Buster supers.
- Ultra Final Atomic Buster now a Level 3 for both modes.
- EX Startup Sound Cutoffs fixed.

To Do:
- New Small Port (?).
- Edit Mech Zangief more (?).
- Hi-Res Vodka Fire FX.
- Re-Do Super Armor and add it to EX Flying Powerbomb/Atomic Suplex.
- Combine Flying Powerbomb and Atomic Suplex.
- Option for 360/720 commands.
- A .def with a .st featuring both modes.

=====<Special Thanks>=====
 - warusaki3 for sprites and some code and reference.
 - P.o.t.S. for code, effects, hitsparks, formatting style
 - Froz for part of the color separation.
 - Infinite for some sprites, sounds, code and hyper portraits.
 - Trololo for the Lariat and Banishing Fist FX.
 - rei for the original Ground Headbutt.
 - BahamianKing for the Ultimate Atomic Buster P2 Fix and the Banashing Fist update.
 - Vanilluxe92 for the SF4 Sound Rips.
 - Hades for Hyper fonts.
 - People for palettes.
 - KarmaCharmeleon for advice about CvS2 Frame Data.
 - DivineWolf for the Multi-Colored (Blue and Purple) Hitsparks.
 - Everybody at the MUGEN Fighters Guild for feedback

=====<Disclaimer>=====

 - The Zangief character is property of Capcom
 - Capcom vs SNK is property of Capcom
 - This MUGEN character is a non-profit fan work, it cannot be used for any commercial purposes