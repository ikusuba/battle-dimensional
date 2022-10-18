                            ____________________________________________
===========================| Haohmaru by KarmaCharmeleon		|===========================
                            ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯      [04.12.2021]

 - Contact:	karmacharmander@gmail.com
 - Website:	https://www.imdb.com/title/tt5697572/
 - Customized version of SNK's Haohmaru character, for MUGEN 1.0



=====<Features>=====

 - All the essential stuff
 - Details and moves taken from his various video game appearances
 - Gameplay mixed from several games, including CvS2, KOF, SFA3 and SFIII
 - Special intros versus some Akuma, Hibiki, and Nakoruru


=====<Rage Meter Customization>=====

In this character's folder, there is a file called "Config.txt". Choose whether you want to enable or disable the Rage System by editing the value of var(50): 

[State 5900, Rage Meter (0 = Off || 1 = On)]
type = ParentVarSet
trigger1 = 1
var(50) = 1 ;CHANGE THIS LINE

In this exact same .txt file, you can change the values of var(51) and var(52) to adjust the position of the Rage Meter on the screen:

[State 5900, Rage Meter X axis (+ = Right || - = Left)]
type = ParentVarSet
trigger1 = 1
var(51) = 0 ;CHANGE THIS LINE

[State 5900, Rage Meter Y axis (+ = Up || - = Down)]
type = ParentVarSet
trigger1 = 1
var(52) = 0 ;CHANGE THIS LINE


=====<Mode Overview>=====

This character has two different modes:

<Haohmaru>
- Regular Haohmaru
- Based on a mix of his Samurai Shodown V Special, Samurai Shodown (2019), and CvS2 movesets

<Rasetsumaru>
- A blood thirsty demon that casually looks like Haohmaru
- Based on a mix of his Samurai Shodown III and Samurai Shodown V Special movesets


=====<.DEF Overview>=====

This char has three different .def files, here's what each one does:

<HAOHMARU.def>
The mode is selected via palette:

Palettes 1, 2, 3, 4, 5, 6	-> Normal Haohmaru mode
Palettes 7, 8, 9, 10, 11, 12	-> Rasetsumaru mode

To add him to your Mugen, add the following line to your select.def, under [Characters]:
Haohmaru,

<NORMALHAOHMARU.def>
Only Normal Haohmaru mode.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
Haohmaru/NormalHaohmaru.def,

<RASETSUMARU.def>
Only Rasetsumaru mode.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
Haohmaru/Rasetsumaru.def,


=====<Movelist>=====

 U - up          x - light punch        a - light kick
 D - down        y - medium punch       b - medium kick
 F - forward     z - heavy punch        c - heavy kick
 B - back        p - any punch          k - any kick
 s - start       2p- two punches        2k- two kicks

 (Air) - Move must be performed in the air.
 (EX)  - Move has an EX version, performed by pressing two punch/kick buttons.
 (MAX) - Use two punch/kick buttons when performing a Super move to power it up.


=====<Normal Mode>=====

<NORMAL>

.Tomoe Nage				F/B + 2p	(near opponent)
.Hien Kiri				F/B + 2k	(near opponent)
     

<SPECIAL>
     
.Ougi: Senpuu Retsu Zan (EX)		D, DF, F, p
.Ou'gi': Senpuu Retsu Zan		D, DF, F, k	(feint)
.Ougi: Kogetsu Zan (EX)			F, D, DF, p
.Ougi: Resshin Zan			D, DB, B, p
.Sake Kogeki (EX)			D, DB, B, k
     

<SUPER>
     
.Hi Ougi: Tenha Fuujin Zan (MAX)	D, DF, F, D, DF, F, p
.Ikari Bakuhatsu			y+a
	.Issen				x+b


<Lv3 SUPER>

.Zetsumei Ougi: Tenha Seiou Zan		F, DF, D, DB, B, F,  2p

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
.Rage Explosion:                  	y + a           	(can be used during ground hittstun)
   .Fatal Flash:            		B, F, DF, D, DB, B, p	(does more damage the more Rage Meterbar you have left)
.Fall Recovery:                 	2p / a + x      	(while falling and allowed)


=====<Rasetsumaru Mode>=====

<NORMAL>

.Tomoe Nage				F/B + 2p	(near opponent)
.Hien Kiri				F/B + 2k	(near opponent)
     

<SPECIAL>
     
.Ougi: Senpuu Retsu Zan (EX)		D, DF, F, p
.Ougi: Senpuu Ha (EX)			D, DF, F, k	(feint)
.Ougi: Nagi Yaiba (EX)			F, D, DF, p
.Ougi: Gou Ha (EX)			F, D, DF, k
.Shitatari				D, DB, B, k
     

<SUPER>
     
.Hi Ougi: Tenha Dankuu Retsu Zan (MAX)	D, DF, F, D, DF, F, p


<Lv3 SUPER>

.Zetsumei Ougi: Tenha Hashin Ken	F, DF, D, DB, B, F,  2p
	.Zetsumei Ougi: Zoubu Eguri

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
.Rage Explosion:                  	y + a           	(can be used during ground hittstun)
   .Fatal Flash:            		B, F, DF, D, DB, B, p	(does more damage the more Rage Meterbar you have left)
.Fall Recovery:                 	2p / a + x      	(while falling and allowed)



=====<Move Details>=====

=====<Haohmaru=====
 - EX Kogetsu Zan has invincibility on startup.
 - Ougi: Resshin Zan is an overhead.
 - EX Ougi: Resshin Zan hits OTG.
 - Sake Kogeki reflects projectiles.
 - EX Sake Kogeki has autoguard.

=====<Rasetsumaru=====
 - EX Ougi: Senpuu Retsu Zan can be juggled afterwards with any attack; however, this can only be done once per combo.
 - EX Ougi: Senpuu Ha doesn't knock down but leaves you at frame advantage to combo after.
 - Ougi: Nagi Yaiba has upper invincibility on startup.
 - EX Ougi: Nagi Yaiba has full invincibility on startup.
 - Ougi: Gou Ha can be juggled afterwards with any attack; however, this can only be done once per combo.
 - EX Ougi: Gou Ha has invincibility on startup.
 - Shitatari trades a fifth of your life for 1 stock of meter.
 - Zetsumei Ougi: Tenha Hashin Ken can be juggled afterwards with any attack; however, this can only be done once per combo.
 - Zetsumei Ougi: Tenha Hashin Ken turns into Zetsumei Ougi: Zoubu Eguri when it connects agaisnt an opponent with low life in round 3.
 - Zetsumei Ougi: Zoubu Eguri kills intantly.


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

RAGE:
 - Haohmaru and Rasetsumaru got a special Rage Meter that fills by either being hit or parrying opponent's attacks.
 - Once the meter its completely filled, or if your input Rage Explosion,
   Haohmaru and Rasetsumaru get raged during the following eight seconds, gaining the following buffs:
 * Attack gets increased by 25%.
 * Defense gets increased by 12.5%.
 * You can't use Custom Combo.
 * You can perform Fatal Flash, but it completely drains the meter.
 * Fatal Flash does more damage the more meter you have.
 - You can enter Rage instantly by using Rage Explosion (y+a) in neutral or while being hit on the ground, in which
   case it will break the combo and leave both players in neutral. Once the meter drains completely from Rage Explosion,
   you won't be able to build Rage from the rest of the match.



=====<Version History>=====

<v.04/12/21>
 - Updated the entire anim data to match corrected hurtboxes and hitboxes from CvS2.
 - Minor bugfixes.

<v.06/03/2021>
 - Fixed a major bug.
 - Air Custom Combo visual effect re-aligned.

<v.06/03/2021>
 - Rage System implemented.
 - Slash hitsparks changed to match Jmorphman's new ones.
 - Removed a voice clip from a Win Poses that didn't match the animation.
 - Rasetsumaru WinQuotes added.
 - Power Charge Particles re-aligned.
 - You can now roll forward while running.
 - Projectile Reflector now despawns properly after hitting a compatible projectile.

<v.30/11/2020>
 - Changed a palette around.
 - Midnight Bliss anim properly added.

<v.28/11/2020>
 - Select screen small portrait now displays the proper palette.
 - EnvShake added on Hien Kiri.
 - Sake Kogeki projectile reflector hitbox increased to reflect ground projectiles like Terry's.
 - Ougi: Senpuu Ha re-aligned.
 - Shitatari can no longer be performed during Custom Combo.
 - Slash visual effect added on MAX Dankuu Retsu Zan.
 - Dash Dust added on Issen.
 - LVL 3s are now performed with 2P.

<v.27/11/2020>
 - First Release



=====<Special Thanks>=====
 - Froz for the color separated sprites, aokmaniac13 for correct axis
 - Jesuszilla for his CvS and CFJ data tool
 - P.o.t.S. and Jmorphman for code, effects, hitsparks, formatting style
 - Just no Point and Jmorphman for the buffering system
 - Vans, Just no Point and Jmorphman for the projectile reflector system
 - sabockee and Viofitz for sprite edits
 - AlexSin, .Hades, and JtheSaltyy for small portraits
 - Warusaki3 for the rage PalFX
 - Mordecool for the visual design of the Rage meter
 - ali, Mysticus and Pingus! for voice rips
 - DM7, RagingRowen, SolidZone 26, Trololo and Vans for feedback
 - CalhounTubbs87, Flowrellik, Hoshi, JtheSaltyy, Knuckles8864, MCX and sabockee for palettes



=====<Disclaimer>=====

 - The Haohmaru character is property of SNK
 - Capcom vs SNK is property of Capcom
 - This MUGEN character is a non-profit fan work, it cannot be used for any commercial purposes