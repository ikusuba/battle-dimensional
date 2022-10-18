                 	
		 Chris By Chazzanova, Edited by Rei, Re-Edit by Prime SC
___________________________________________________________ 01/20/2018
Contact:	Kingtwan1313@gmail.com
Customized version of SNK's Chris character, for MUGEN 1.0


=====<Movelist>=====

 U - up          LP - light punch        LK - light kick
 D - down        MP - medium punch       MK - medium kick
 F - forward     HP - heavy punch        HK - heavy kick
 B - back        P - any punch           K - any kick
 s - start       2P- two punches         2K- two kicks
 
 (Air) - Move must be performed in the air.
 (EX)  - Move has an EX version, performed by pressing two punch/kick buttons.
 (MAX) - Use two punch/kick buttons when performing a Super move to power it up.
 (NOR) - ONly Can be done in Normal.

-IF YOU DON'T WANT CHAIN COMBOS GO TO THE CONFIG AND CHANGE THE VALUE UNDER VAR 55
TO 0 AND SAVE.Turning off the chain combos will give the character more of a 
cvs-ish type damage for normal attacks. IF you want air comboing tuen the the VAR 55 
value to 2.

<NORMAL>
.Spinning Array  				F+LP			
.Reverse Anchor Kick    			F+LK
.Carry Off Kick                                 Cr.F+LK
.Step Turn		         		F/B + 2P		(near opponent)
.Aerial Drop					F/B + 2K		(near opponent)

<SPECIAL>

-Normal		
.Slide Touch (EX) 				D,DF,F+P
.Direction Change (EX) 				F,D,DF+P
.Shooting Dancer Step (EX)		        F,DF,D,DB,B+K
.Glider Stomp (AIR)(EX)	        		D,DF,F+K
.Hunting Air (EX)				F,D,DF+K
.Shooting Dancer Thrust (EX)		        F,DF,D,DB,B+P
.Scramble Dash(EX)                              D,DF,F+K	

-Orochi Chris
.Shishi wo Kamu Honoo(EX)			B,DB,D,DF,F+K
.Taiyou wo Iru Honoo (EX)       		D,DF,F+P
.Tsuki wo Tsumu Honoo (EX) 	        	F,D,DF+P
.Kagami wo Hofuru Honoo(EX) 			D,DB,B+P

<SUPERS>

-Normal
.Chain Slide Touch				D,DF,F,D,DF,F+P  POWER>=1000
.Twister Drive                   		D,DB,B,D,DB,B+K  POWER>=1000 
.Chain Slide Touch				D,DF,F,D,DF,F+2P  POWER>=2000   
.Max Twister Drive              		D,DB,B,D,DB,B+2K  POWER>=2000  
.Honoo no Sadame no Kurisu	        	D,DF,F,D,DF,F+KK  POWER>=3000


-Orochi Chris
.Daichi no Kurau Gouka			        D,DF,F,D,DF,F+P  POWER>=1000   
.Daichi o Harau Gouka				D,DB,B,D,DB,B+P  POWER>=1000 
.Ankoku Orochi Nagi              		D,DB,B,D,DF,F+P  POWER>=1000 
.Max Daichi no Kurau Gouka		        D,DF,F,D,DF,F+2P  POWER>=2000 
.Max  Daichi o Harau Gouka			D,DB,B,D,DB,B+2P  POWER>=2000
.Max Ankoku Orochi Nagi              		D,DB,B,D,DF,F+2P  POWER>=2000
.Sanagi Yaburi wo, wa mau chou	        	D,DF,F,D,DF,F+KK  POWER>=3000


<SYSTEM>

.Run:          		        	F, F
.Backward Dash:                 	B, B
.Low Jump:                      	tap U
.High Jump:                     	tap D, U
.Long Low Jump:                 	tap D, tap U            
.Sidestep:                      	LP + LK
   .Sidestep Attack:            	p / k
.Forward Roll:                  	F + LP + LK
.Backward Roll:                 	B + LP + LK
.Parry High:                    	tap F
.Parry Low:                     	tap D
.Air Parry:                     	tap F           	(Air)
.Power Charge:                  	hold MP + MK
.Zero Counter:                  	B, DB, D, P / K 	(during standing or crouching guard)
.Custom Combo:                  	HP + HK          	(Air also)
.Fall Recovery:                 	2P / 2K  	    	(while falling and allowed)

=====<Gameplay Notes>=====

COMBO SYSTEM:
 - Normal Attacks are able to chain into other normal attacks.
 - Normal attacks can be canceled into Command, Special and Super moves
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

THANKS TO -

SNK-For creating the original character.
Chazzanova for the base to edit
Rei for editing it further
=====<Disclaimer>=====

 -Chris is property of SNK
 -This MUGEN character is a non-profit fan work, it cannot be used for any commercial purposes