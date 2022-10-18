                            __________________________________________
===========================| Benimaru Nikaido by Jmorphman	      |===========================
                            ������������������������������������������        [11.29.21]

 - Contact:	Jmorphman@gmail.com
 - Website:	http://network.mugenguild.com/jmorphman/
 - Customized version of SNK's Benimaru character, for MUGEN 1.0



=====<Features>=====

 - All the essential stuff
 - Details and moves taken from his various video game appearances
 - Gameplay mixed from several games, including CvS2, KOF, SFA3 and SFIII
 - Special intros versus Kyo Kusanagi, ladies, and Kyosuke
 - Features special interactivity when fighting my version of Kyo


=====<Daimon Configuration>=====

When fighting against my version of Kyo, Goro Daimon will appear in the background of the stage, and react to the fight.  In this
character's folder, there is a file called "DaimonConfig.txt"; it is possible to control when and where Daimon will appear, on a
per-stage basis. For example, you can choose to have Daimon appear on every stage, or only on stages that you have approved;
additionally, Daimon's placement on the stage, his size, and his delta values can all be specified for each stage that you decide to
add.


=====<Movelist>=====

 U - up          x - light punch        a - light kick
 D - down        y - medium punch       b - medium kick
 F - forward     z - heavy punch        c - heavy kick
 B - back        p - any punch          k - any kick
 s - start       2p- two punches        2k- two kicks

 (Air) - Move must be performed in the air.
 (EX)  - Move has an EX version, performed by pressing two punch/kick buttons.
 (MAX) - Use two punch/kick buttons when performing a Super move to power it up.


<NORMAL>
     
.Jackknife Kick 		F + b
.Jumping Sobat			F/B + c
.Flying Drill			D + c					(Air)
.Front Suplex	         	F/B + 2p				(near opponent)
.Catch and Shoot		F/B + 2k				(near opponent)
.Spinning Knee Drop		F/B + 2p				(Air, near opponent)
     

<SPECIAL>
     
.Raijinken (EX)			D, DF, F, p				(Air also)
.Taiku Raijinken (EX)		F, D, DF, p
.Iaigeri (EX)			D, DF, F, k
	.Hando Sandangeri	D, U, k
.Super Inazuma Kick (EX)	F, D, DF, k
.Shinku Katategoma (EX)		D, DB, B, k
.Benimaru Collider (EX)		F, DF, D, DB, B, F, p			(near opponent)
     

<SUPER>
     
.Raikoken (MAX)			D, DF, F, D, DF, F, p
.Denei Spark (MAX)		D, DF, F, D, DF, F, k
.Elec-Trigger (MAX)		F, DF, D, DB, B, F, DF, D, DB, B, p	(near opponent)


<Lv3 SUPER>

.Raiha Jinoken              	D, DB, B, DB, D, DF, F, 2p


<SYSTEM>

.Forward Dash:                  	F, F
   .Run:                       			hold
.Backward Dash:                 	B, B
.Low Jump:                     		tap U
.High Jump:                     	tap D, U
.Long Low Jump:                 	tap D, tap U            
.Sidestep:                      	a + x
   .Sidestep Attack:            		p / k
.Forward Roll:                  	F + a + x
.Backward Roll:                 	B + a + x
.Parry High:                    	tap F
.Parry Low:                     	tap D
.Air Parry:                     	tap F           	(Air)
.Power Charge:                  	hold b + y
.Zero Counter:                  	B, DB, D, p / k		(during standing or crouching guard)
.Custom Combo:                  	c + z           	(Air also)
.Fall Recovery:                 	2p / a + x      	(while falling and allowed)



=====<Move Details>=====

 - Benimaru Collider and Elec-Trigger are unblockable throw attacks.
 - EX Raijinken places the opponent in a relatively brief stunned state; moreover, they can be juggled after being hit; however, this
   can only be done once per combo.
 - EX Taiku Raijinken can be juggled afterwards with any attack; however, this can only be done once per combo.
 - EX Benimaru Collider causes the opponent to crumple to the floor, and can be followed up with any attack before they hit the ground.
 - Activating the level one version of Raikoken with heavy punch will perform the Taiku (i.e., upward-angled) version.
 - Raiha Jinoken normally travels straight ahead, but by inputting either up or down while Benimaru is still in super pause, it can be 
   directed to angle in either direction.



=====<Gameplay Notes>=====

COMBO SYSTEM:
 - Some Normal attacks can be canceled into Command, Special and Super moves
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



=====<Version History>=====

<11/29/21>
 - fixed minor guard input bug
 - Flying Drill has way more pushback, but still the same frame advantage; pushback ensures it's impossible to link from it
 - The Elec-Trigger finish effects have been changed to use an animation from KOFXIII; old version used some awkwardly animated and
   placed Denei Spark effects.
 - Switched out the two lightning bolts that appear to the left and right of the center bolt during MAX Elec-Trigger; originally they
   used the same underlying sprites as the center bolt, which looked odd. Now uses effects originating from PotS's Ryu.

<12/31/19>
 - Flying Drill has slightly better frame advantage on hit and much better advantage on guard
 - Changed behavior of characters who have a compatible shocked anim when they're hit by electrical attacks; they now jitter back and
   forth (like Darkstalkers) and stay in the shock anim longer
 - EX (Taiku) Raijinken can no longer be super cancelled; it already juggles, so cancelling just meant that the dampener kicked in worse
 - MAX Raikoken effect slightly increased in size (the actual hitbox size is the same); also, small sparks now surround it, ala KOFXIII
 - All non-EX versions of Shinku Katategoma have more of a delay between each hit, like in KOF
 - EX Shinku Katategoma has 1 more hit (it now has a total of 8); total damage is unchanged, however.
 - Benimaru Collider has faster startup and a slightly bigger hitbox; also changed the visual behavior to be closer to KOF, and replaced
   the FX with the FX from KOFXIII
 - Changed Elec-Trigger visual behavior to be closer to KOF; now has additional FX appear during the finish
 - super invincibility fixed/updated
 - Electical sparks that appear on opponent when they are hit now disappear after a firm, set amount of time, exactly matching the PalFX
   applied to them. (They used to disappear only if opponent regained control, or hit the floor, if they were knocked down). This helps
   with stuff where a oppponent is hit by an electrical-based attack, and then a physical attack, so that the sparks will eventually
   disappear instead of remaining on the opponent until they hit the floor, as previous versions behaved.


<11/30/18>
 - Counterhits for electric attacks no longer apply the counter PalFX on opponents with compatible shocked animations.
 - Fixed issue where canceling into MAX Raikoken from Raikon and defeating an opponent would not produce the super finish effect.
 - Massively expanded the list of "officially" supported stages for Daimon.

<04/14/18>
 - EX Shinku Katategoma is now only -1 on block (from -9).
 - Denei Spark now pushes opponent forward on block, as in CvS2.
 - Fixed bug where the Raijinken startup spark would ocasionally not disappear.

<03/30/18>
 - First release



=====<Special Thanks>=====
 - aokmaniac13 for sprite rips
 - P.o.t.S. for code, effects, hitsparks, formatting style
 - Whiplash and C.V.S.N.B. for the aerial Raijinken sprites
 - Hoshi for the effects
 - Rai Tei for the small portrait and for edits to the big portrait
 - Judas for the win screen portrait edits
 - Ricepigeon for help with deltas on the Daimon helper
 - Gogngos, Goodaldo, Hoshi, ink, Kirishima, NDSilva, Project.13, Quickfist, sabockee, TotalDramaXtremist, and Trololo for palettes
 - Mature4ever for contributing to the Daimon stage compatability list
 - Everybody at the MUGEN Fighters Guild for feedback



=====<Disclaimer>=====

 - The Benimaru character is property of SNK
 - Capcom vs SNK is property of Capcom
 - This MUGEN character is a non-profit fan work, it cannot be used for any commercial purposes