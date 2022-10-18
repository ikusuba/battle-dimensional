[Statedef 10004]
type     = S
movetype = I
physics  = S
juggle  =0
poweradd = 0
ctrl     = 0
anim     = 8055001
sprpriority = 1
velset = 0,0
[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
facing = 1
pos = 0,0
ignorehitpause = 1
;persistent = 
[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing



[State 001, Null]
type = Null
;detect posadd movement
trigger1 = 1|(time%2 &&(fvar(0):=enemynear,pos x))
;p2dx
trigger1 = 1||(fvar(1):=root,p2bodydist x)
;p2dy
trigger1 = 1||(fvar(2):=root,p2bodydist y)
;all confirmable lights
trigger1 = 1||(var(10):= (root,stateno=200||(root,stateno=231)||root,stateno=400||root,stateno=430))
;all confirmable mediums
trigger1 = 1||(var(11):=(root,stateno=211||root,stateno=241||root,stateno=410||root,stateno=440))
;all confirmable heavies
trigger1 = 1||(var(12):=(root,stateno=221|root,stateno=251&&root,animelemtime(4)<0||root,stateno=420||root,stateno=241))
;hittime for special/super cancels
trigger1 = 1||(var(13):= Cond(root,NumTarget, Cond(!enemynear,HitFall, enemynear,GetHitVar(hittime), 0),0))
;opponent is on the ground
trigger1 = 1||(var(14):= enemynear,statetype=S||enemynear,statetype=C)
;dive kick angle detection
trigger1=1||(fvar(4):=cond((root,pos y!=0||enemynear,pos y!=0)&&!var(8),(fvar(1) / fvar(2)),0))
;supercancel
trigger1=1||(var(1):= (var(6) || cond(NumHelper(3055),Helper(3055),StateNo=3015 || Helper(3055),StateNo=1016,0)))
;true velocity calculation
trigger1= 1||(fvar(3):=cond((abs(fvar(0))-abs(enemynear,pos x))=0,enemynear,vel x,(abs(fvar(0))-abs(enemynear,pos x))))
;jump in advantage
trigger1= 1||(var(2):=enemynear,gethitvar(hittime) *(root,ctrl && !enemynear,ctrl ))
;the opponent cannot be juggled
trigger1 =1||( var(3):=(root,var(15)>=1||enemynear,anim=5120||enemynear,stateno=5040||enemynear,stateno=52 && enemynear,time<3&&enemynear,prevstateno=5040||enemynear,statetype=L||enemynear,statetype=A&&enemynear,movetype=H&&!enemynear,hitfall))
;juggle points
trigger1= 1||(var(4):=root,var(15))
;the opponent can be juggled for combos
trigger1=1||(var(5):= (!var(8)&&enemynear,hitfall && var(15)=0&&enemynear,statetype!=L&&enemynear,stateno!=[800,899]))
;opponent wake up time
trigger1=1||(var(6):=enemynear,anim=5120||enemynear,stateno=5110 &&enemynear,time>5)
;self explainatory
trigger1=1||var(59):=root,AIlevel
;cross up
trigger1 =1||(var(7):= (fvar(1) =[-65,40])*pos y<0);

[State 0, VarSet]
type = VarSet
trigger1 = enemynear,gethitvar(isbound)
v = 8
value = 1
[State 0, VarSet]
type = VarSet
trigger1 = enemynear,movetype!=H 
v = 8
value = 0

;get up timer
[State 0, Null]
type = Null
trigger1 = (root,anim=5120|| roundstate!=2)
trigger1=  1||(var(0):=10)



;reversals
[State 111, Null]
type = Null 
triggerall = (root,anim=5120 && root,animtime=-1||(root,ctrl || root,stateno=20 || (root,stateno=[100,101]))) && enemynear,movetype=A && (!var(5) && !var(3)||var(14))
trigger1=  var(18)=0 && (enemynear,stateno!=[40,51])
trigger1=  (fvar(1) =[-15,70+(floor(fvar(3)*.4)*5)])  && (var(14)||fvar(2) =[-80+(floor(enemynear,Vel Y*.4)*-5), -35]) && !var(3)&& var(4)=0 && random <= (400  * (var(59) ** 2 / 64.0)) 
trigger1 = 1||(var(18):=cond((enemynear,hitdefattr=SCA,SA,HA)&&(power>600|| root,var(20)>400),1130,cond(fvar(2)<-50||fvar(1)>50,1120,1110)))
trigger2=  var(18)=0 && (enemynear,stateno!=[40,51]) && (power>=2000||root,var(20))
trigger2=  (fvar(1) =[-15,50+(floor(fvar(3)*.4)*5)])  && (var(14)||fvar(2) =[-80+(floor(enemynear,Vel Y*.4)*-5), -35]) && !var(3)&& var(4)=0 && random <= (400  * (var(59) ** 2 / 64.0)) 
trigger2 = 1||(var(18):=3150)

;set state
[State 0, Null]
type = Null
triggerall = root,statetype!=A && !var(5) 
triggerall = (root,ctrl || root,stateno=20 || (root,stateno=[100,101])) && enemynear,statetype=A
;AA specials
trigger1=  var(18)=0 && (enemynear,stateno!=[40,51])
trigger1=  (fvar(1) =[-8,90+(floor(fvar(3)*.4)*5)])  && (fvar(2) =[-90+(floor(enemynear,Vel Y*.4)*-5), -35]) && !var(3)&& var(4)=0 && random <= (450  * (var(59) ** 2 / 64.0)) 
trigger1 = 1||(var(18):=cond((enemynear,hitdefattr=SCA,SA,HA)&&(power>750|| root,var(20)>400),1130,cond(fvar(2)<-50||fvar(1)>50,1120,1100)))
;AA normals
trigger2 = var(18)=0
trigger2=  (fvar(1) =[25,55+(floor(fvar(3)*.4)*5)])  && (fvar(2) =[-50+(floor(enemynear,Vel Y*.4)*-5), -35]) && !var(3)&& var(4)=0 && random <= (200  * (var(59) ** 2 / 64.0)) 
trigger2 = 1||(var(18):=220)
trigger3 = var(18)=0
trigger3= (fvar(1) =[35,45+(floor(fvar(3)*.4)*5)])  && (fvar(2) =[-20+(floor(enemynear,Vel Y*.4)*-5), -5]) && !var(3)&& var(4)=0& random <= (200  * (var(59) ** 2 / 64.0)) 
trigger3 = 1||(var(18):=240)
trigger4 = var(18)=0
trigger4= (fvar(1) =[-8,35+(floor(fvar(3)*.4)*8)])  && (fvar(2) =[-80+(floor(enemynear,Vel Y*.4)*-5), -25]) && !var(3)&& var(4)=0&& random <= (300  * (var(59) ** 2 / 64.0)) 
trigger4 = 1||(var(18):=420)

;zanretsu
[State 444, Null]
type = Null
triggerall = root,statetype!=A
triggerall = (root,ctrl || root,stateno=20 || (root,stateno=[100,101]))&& random < (150 * (var(59) ** 2 / 64.0)) && !var(3)&& !var(5)
trigger1= (enemynear,movetype!=H || var(13)>13 ) && (fvar(1) =[25-(enemynear,backedgebodydist<50)*35,45+(floor(fvar(3)*.4)*5)+(floor(fvar(3)*.4)*8)]) && ((fvar(2) =[-80+(floor(enemynear,Vel Y*.4)*-5), -35])||var(14))
trigger1= 1||var(18):=cond((power>750|| root,var(20)>400) &&random%2,1330,1300)

;cmd grab
[State 333, Null]
type = Null
triggerall = root,statetype!=A
triggerall = (root,ctrl || root,stateno=20 || (root,stateno=[100,101]))&& random < (250 * (var(59) ** 2 / 64.0)) && var(14)
trigger1= ((enemynear,stateno=[120,131]) || var(13)>10 ) && fvar(1) =[15,35+(floor(fvar(3)*.4)*5)+(floor(fvar(3)*.4)*5)]
trigger1= 1||var(18):=cond((power>750|| root,var(20)>400) &&random%2,1430,1400)

[State 12121, Null]
type = Null
triggerall = root,statetype!=A
triggerall = (root,ctrl || root,stateno=20 || (root,stateno=[100,101]))&& random < (300 * (var(59) ** 2 / 64.0))
;specific for stopping crouch attacks
trigger1= (fvar(1) = [42, 75+(floor(fvar(3)*.4)*5)]) && enemynear,StateType = C && enemynear,MoveType = A
trigger1= 1||var(18):=250
trigger2= (fvar(1) = [42, 65+(floor(fvar(3)*.4)*5)]) && enemynear,StateType = C && enemynear,MoveType = A
trigger2= 1||var(18):=230
trigger3= (fvar(1) = [40, 55+(floor(fvar(3)*.4)*5)]) && enemynear,StateType = C && enemynear,MoveType = A
trigger3= 1||var(18):=1300

;lights
[State 20, Null]
type = Null
triggerall = root,statetype!=A&& var(14)
triggerall = (root,ctrl || root,stateno=20 || (root,stateno=[100,101]))&& random < (500 * (var(59) ** 2 / 64.0))
triggerall = fvar(1) < 55 + (floor(fvar(3) * .4) * 5) && !var(2) && !var(3) && (!var(0) || fvar(1) > 35) && (fvar(1) > 25 || Random <= (225 * (var(59) ** 2 / 64.0)))
triggerall = (enemynear,MoveType != H  ) && var(18)=0
trigger1=(var(14) || fvar(2) = [-40+(floor(enemynear,Vel Y*.4)*-10), -15]) && fvar(1) < 40
trigger1= 1|| (var(18):=Cond((fvar(2) < -40 || enemynear,StateType = S)&&fvar(1) > 30 + (floor(fvar(3) * .4) * 5), 200, 400))
trigger2 = (fvar(1) > 25 || Random <= (125 * (var(59) ** 2 / 64.0))) && var(14) && var(18)=0
trigger2= 1|| (var(18):=Cond((fvar(2) > -5 || enemynear,StateType = S)&&fvar(1) < 45 + (floor(fvar(3) * .4) * 5), 430, 230))	

;mediums
[State 21, Null]
type = Null
triggerall = root,statetype!=A && enemynear,statetype!=L && var(14)
triggerall = (root,ctrl || root,stateno=20 || (root,stateno=[100,101]))&& random < (500 * (var(59) ** 2 / 64.0))			
triggerall = !var(2) && (!var(3) || fvar(2) >-10)&& (!var(0) || fvar(1) >35)
trigger1= (fvar(1)=[35,45]) && (var(14)|| fvar(2) =[-55+(floor(fvar(3) * .4) * 5)*5,-15])  
trigger1= 1||(var(18):=cond(fvar(2)<-19||fvar(1)>40&&enemynear,statetype!=C,210,410))
trigger2= (fvar(1)=[35,50+(floor(fvar(3) * .4) * 5)*5])  &&!var(18)
trigger2= 1||(var(18):=cond((fvar(2)<-49+(floor(fvar(3) * .4) * 5)*5||fvar(1)<15)&& (enemynear,statetype!=C),240,440))
[State 21, Null]
type = Null
trigger1 = fvar(1)<0
trigger1 = (var(18)=[210,211])||(var(18)=[240,241])||(var(18)=410)||(var(18)=440)
trigger1= 1||var(18):=0

;heavies
[State 22, Null]
type = Null
triggerall = root,statetype!=A
triggerall = (root,ctrl || root,stateno=20 || (root,stateno=[100,101]))&& random < (125 * (var(59) ** 2 / 64.0))			
triggerall =  fvar(1) <80-(!var(14)*10) && !var(2) && (!var(3) || fvar(2) >-10)&& (!var(0) || fvar(1) >35)

trigger1= (fvar(1)=[35,70])  &&!var(18) && enemynear,statetype=S
trigger1= 1||(var(18):=450)


;jump in
[State 23, Null]
type = Null
triggerall = root,statetype!=A
triggerall = var(14)
trigger1 =  var(2)>6 && fvar(1) <55
trigger1= 1||var(18):=cond(fvar(1)<15,220,440)
trigger2= var(2)>3 && fvar(1) <=30
trigger2= 1||var(18):=cond(enemynear,statetype=S&&fvar(1)<40,cond(fvar(1)<15,230,200),cond(fvar(1)<30,400,430))

;links
[State 24, Null]
type = Null
triggerall = root,statetype!=A
triggerall = var(14) && (root,ctrl || root,stateno=20 || (root,stateno=[100,101]))
trigger1 =  var(13)>3 && fvar(1) <35
trigger1= 1||var(18):=410


;dodge followup
[State 25, Null]
type = Null
triggerall = root,stateno=700
trigger1= var(14) && fvar(1)=[-5,65]
trigger1 = var(18):=241
trigger2= (var(14)||fvar(2) =[-45+(floor(enemynear,Vel Y * .4) * 5)*5,-15]) && fvar(1)=[5,50+(floor(fvar(3)*.4)*5)]
trigger2 = var(18):=212






;jump attacks
[State 19, Null]
type = Null
triggerall = root,statetype=A && root,ctrl
triggerall = !var(3) || enemynear,pos y > -20
trigger1 =  var(7) && root,vel x >0 && (enemynear,stateno=5120 || var(14)& !var(3)) &&  root,vel y >-2 && fvar(2) <80
trigger1= 1||(var(19):=630)


[State 19, Null]
type = Null
triggerall = root,statetype=A&& root,ctrl;&& random < (350 * (var(59) ** 2 / 64.0))
triggerall= !var(3) &&(root,vel y >0 ||enemynear,statetype=A && enemynear,stateno!=[800,899]) && !var(19)
triggerall =enemynear,HitDefAttr != SCA,SA || root,Facing != enemynear,Facing ||  var(59)<6
trigger1= (fvar(1) =[5,( 80 + (floor(fvar(3)*.4)*5)+(floor(root,vel x*.4)*5))]) && fvar(2) =[-30,25+((enemynear,statetype=S||enemynear,anim=5120)*60)+((enemynear,statetype=C)*45)] 
trigger1= 1||var(19):=cond(root,vel x,650,651)
trigger2= (fvar(1) =[-8,( 65 + (floor(fvar(3)*.4)*5)+(floor(root,vel x*.4)*5))]) && fvar(2) =[-15,35+((enemynear,statetype=S||enemynear,anim=5120)*60)+((enemynear,statetype=C)*45)] 
trigger2= 1||var(19):=620
trigger3= (fvar(1) =[-8,( 50 + (floor(fvar(3)*.4)*5)+(floor(root,vel x*.4)*5))]) && fvar(2) =[-15,35+((enemynear,statetype=S||enemynear,anim=5120)*60)+((enemynear,statetype=C)*45)] 
trigger3= 1||var(19):=640
trigger4= (fvar(1) =[-8,( 45 + (floor(fvar(3)*.4)*5)+(floor(root,vel x*.4)*5))]) && fvar(2) =[-15,35+((enemynear,statetype=S||enemynear,anim=5120)*50)+((enemynear,statetype=C)*35)] 
trigger4= 1||var(19):=610
trigger5=( fvar(1) =[-8,( 40 + (floor(fvar(3)*.4)*5)+(floor(root,vel x*.4)*5))]) && fvar(2) =[-15,35+((enemynear,statetype=S||enemynear,anim=5120)*40)+((enemynear,statetype=C)*25)] 
trigger5= 1||var(19):=600
;super kick
[State 0, Null]
type = Null
triggerall = root,statetype=A && root,ctrl
triggerall = (root,stateno=50)&& random < (350 * (var(59) ** 2 / 64.0)) && !var(3) && pos y <= -50
triggerall = (fvar(4) > .20 && fvar(4) <= 1.25+(power>750|| root,var(20)>400)*.45)
trigger1= (enemynear,movetype!=H) 
trigger1= 1||var(19):=cond((power>750|| root,var(20)>400) &&random%2,1230,1200)
trigger1= 1||var(15):=cond((fvar(4)=[.60,.80]),1,2)*(var(19)=1200)


;shoko
[State 34, Null]
type = Null
triggerall = (root,ctrl || root,stateno=20 || (root,stateno=[100,101])) && (power>=1000 || root,var(20))
triggerall = enemynear,numproj>0 && (enemynear,stateno!=5040 || !var(14) &&(fvar(2)=[-50,-15]))
trigger1= (fvar(1) =[55-(enemynear,hitfall)*65,( 180 + floor(fvar(3)*.4)*5)])&&(enemynear,movetype=A||enemynear,numproj>0) && ((fvar(2) =[-65,5])||var(14))
trigger1 = 1||(var(18):=cond(power>=(2000+ (root,var(20))*-1000)&&random%2,3050,3000))
trigger1= 1||var(15):=cond(enemynear,movetype=A,2,1)*(var(18)=3000)
[State 0, VarSet]
type = VarSet
trigger1 = var(18)=[3000,3050]
trigger1 = fvar(1)<0 && !enemynear,hitfall
v = 18   ;fv = 10
value = 0


;proximity failsafe
[State 0, Null]
type = Null
triggerall = root,stateno!=[220,251] 
trigger1 = (var(18)=230||var(18)=220||var(18)=240||var(18)=250) && fvar(1)<=15||var(18)=210 && fvar(1)<=10
trigger1 = var(18):=var(18)+1
;max failsafe
[State 0, Null]
type = Null
triggerall = root,stateno!=[3000,3200] 
trigger1 = (var(18)=3000||var(18)=3100)&& root,var(20)
trigger1 = var(18):=var(18)+50

;--juggles
[State 55, Null]
type = Null
triggerall =!var(8)&& var(5)&& !var(3)&& fvar(2)<-25 &&(root,ctrl || root,stateno=20 || (root,stateno=[100,101])) &&enemynear,statetype!=L&& root,stateno!=[800,899]
trigger1=(fvar(1)=[-8,55])&& random < (400 * (var(59) ** 2 / 64.0))
trigger1 = var(18):=1110
trigger2 =(power>600|| root,var(20)>400)&&fvar(2)<-25  && var(18)=0&& fvar(1)=[10,75]
trigger2= (fvar(2)=[-45,-20]) && random < (350 * (var(59) ** 2 / 64.0)) 
trigger2 = var(18):=245


[State 55, Null]
type = Null
triggerall =!var(8)&& var(4)=1&& fvar(2)<-25 &&(root,ctrl || root,stateno=20 || (root,stateno=[100,101])) &&enemynear,statetype!=L&& root,stateno!=[800,899]
trigger1=( random < (400 * (var(59) ** 2 / 64.0))&& fvar(1)=[-8,55]) && (power >750 || root,var(20)>400)
trigger1 = var(18):=1130
trigger2 = (var(1)) && root,movehit=1
trigger2 = var(18):=cond(power>=(2000+ (root,var(20))*-1000)&&random%2,3150,3100)
trigger2= 1||var(15):=2*(var(19)=3100)
;--movehit
[State 0, Null]
type = Null
triggerall = root,statetype!=A
triggerall = var(13)>7 && var(14) && root,movecontact
trigger1 = var(10) && fvar(1)>25|| var(11) && fvar(1)<45|| var(12)
trigger1 = var(18):=246
trigger2 =  (var(11) || var(12)) && frontedgebodydist <50
trigger2 = var(18):=301

[State 0, Null]
type = Null
triggerall = var(13)>9 && var(14) && root,stateno=301 && root,movecontact
trigger1 = var(19):=cond(root,var(20)||root,power>1000,1230,1200)
trigger1 = var(15):=2*(var(19)=1200)

;-supers
[State 26, Null]
type = Null
triggerall = root,statetype!=A&& var(18)=0&& (power>=1000 || root,var(20))
trigger1= var(13)>3 && var(14) && random < (650 * (var(59) ** 2 / 64.0))
trigger1 = ((root,stateno=[245,246])||root,stateno=440 && fvar(1)=[35,50]) && root,movehit=1 && (power= 3000 || root,var(20)&&power>=2000)
trigger1 = var(18):=3200
trigger2= var(13)>3 && var(14) 
trigger2 = (var(1)) && (root,movehit=1 || cond(root,numhelper(1010),helper(1010),movecontact,0))&& (power= 3000 || root,var(20)&&power>=2000)
trigger2 = var(18):=3200
trigger3= var(13)>3 && var(14) && random < (350 * (var(59) ** 2 / 64.0))&& (power>= 1000 || root,var(20))
trigger3 = ((root,stateno=[245,246])||root,stateno=440 && fvar(1)=[35,50]) && root,movehit=1
trigger3 = var(18):=cond(power>=(2000+ (root,var(20))*-1000)&&random%2,3150,3100)
trigger3= 1||var(15):=2*(var(19)=3100)
trigger4= var(13)>3 && var(14) 
trigger4 = (var(1)) && (root,movehit=1 || cond(root,numhelper(1010),helper(1010),movecontact,0))&& (power>= 1000 || root,var(20))
trigger4 = var(18):=cond(power>=(2000+ (root,var(20))*-1000)&&random%2,3150,3100)
trigger4= 1||var(15):=2*(var(19)=3100)
trigger5= var(13)>14 && var(14) && random < (350 * (var(59) ** 2 / 64.0))&& (power>= 1000 || root,var(20))
trigger5 = ((root,stateno=[245,246])||root,stateno=440 && fvar(1)=[40,60]) && root,movehit=1
trigger5 = var(18):=cond(power>=(2000+ (root,var(20))*-1000)&&random%2,3050,3000)
trigger5= 1||var(15):=2*(var(19)=3100)
trigger6= var(13)>14 && var(14) && fvar(1)=[0,95]
trigger6 = (var(1)) && (root,movehit=1 || cond(root,numhelper(1010),helper(1010),movecontact,0))&& (power>= 1000 || root,var(20))
trigger6 = 1||(var(18):=cond(power>=(2000+ (root,var(20))*-1000)&&random%2,3050,3000))
trigger6= 1||var(15):=2*(var(19)=3000)
;---dp
[State 27, Null]
type = Null
trigger1 = var(4)>1 && (root,stateno=[245,246]) && root,movehit
trigger1=  var(18)=0
trigger1 = (var(18):=cond((power>700|| root,var(20)>400),1130,1110))

;-Hien
[State 28, Null]
type = Null
triggerall = root,statetype!=A&& var(18)=0
triggerall = var(13)>7 && var(14) && random < (350 * (var(59) ** 2 / 64.0))
trigger1 = ((root,stateno=[245,246])||root,stateno=440 && fvar(1)>40) && root,movehit=1
trigger1 = var(18):=cond((power>750|| root,var(20)>400)&&random%2,1530,1500+(random%3)*10)

;-zanretsu
[State 29, Null]
type = Null
triggerall = root,statetype!=A && var(18)=0 && fvar(1)=[0,35]
triggerall = var(13)>7 && var(14) && random < (350 * (var(59) ** 2 / 64.0))
trigger1 = ((root,stateno=[245,246])||var(12)) && root,movehit=1
trigger1 = var(18):=cond((power>750|| root,var(20)>400)&&random%2,1330,1300)
trigger1= 1||var(15):=(random%3)*(var(19)=1300)



[State 0, Null]
type = Null
trigger1= var(0)>0
trigger1= var(0):=var(0)-1


;------------|walking|------------------
[State 0, Null]
type = Null 
trigger1 = var(24):=((enemynear,movetype !=A)|| fvar(1) >140)|| (enemynear,statetype=L  && fvar(1)>70) ||var(2)>0
trigger2 = var(24):= (backedgebodydist >40 && (enemynear,movetype =A ||enemynear,statetype!=L  && fvar(1) <30))*-1


;-----------|Jump|-----------------
[State 1, Null]
type = varset
triggerall = !var(18) &&  cond(root,AIlevel >0,random <ceil(((1699*1.0)*(fvar(6)/(root,AIlevel*1.0)))),0)||enemynear,hitdefattr=SC,AT 
triggerall =statetype != A &&  (!var(0) )  && stateno!=40 && statetype!=A
triggerall= (fvar(1)>65+((enemynear,movetype!=A&&var(14))*45) || frontedgebodydist <50||var(6)||enemynear,stateno=5040&& fvar(2) >-40)|| enemynear,hitdefattr=SC,AT&&random<(455 * (var(59) ** 2 / 64.0))
trigger1 =enemynear,hitdefattr=SC,AT 
trigger2 =((fvar(1)  =[70,90])|| fvar(1) <50||frontedgedist <30) &&enemynear,movetype!=H &&!var(30)
trigger3 =var(6) && (fvar(1) <60  ||frontedgedist <60 )  &&enemynear,movetype!=H&&!var(30)
trigger4 =enemynear,stateno=5040 && (fvar(1) =[-20,60])&&!var(30)
var(30)=1
[State 2, Null]
type = varset
triggerall =stateno!=40
trigger1 =statetype = A ||  movetype=H && stateno!=[120,155]
trigger2=prevstateno=5120 && enemynear,statetype=A|| fvar(1)  <80 && frontedgebodydist >60 && !var(3)
trigger3=  var(0)>0 && enemynear,hitdefattr!=SC,AT  || fvar(1) >180
var(30)=0

[State 3, Null]
type = Null
trigger1= root,stateno= 40 && root,time=1
trigger1 = 1||var(31):=0
trigger2= root,stateno= 40 && root,time=2
trigger2 = fvar(1) >=60 || (enemynear,stateno=5120||enemynear,movetype=H )&&fvar(1) >=20 || enemynear,statetype=A && fvar(1) >=60
trigger2 = var(31):=1
trigger3= root,stateno= 40 && root,time=2
trigger3 = fvar(1)< 15 && enemynear,movetype =A && backedgebodydist >30 && frontedgebodydist >60
trigger3 = var(31):=-1


[State 0, ParentVarSet]
type = ParentVarSet
triggerall = root,prevstateno!=100
trigger1 =root,time=2&& root,stateno=40&& enemynear,anim=5120 && abs(enemynear,animtime) < 5 && fvar(1) =[20,50]
v =  3
value = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = !root,var(3)
trigger1 =root,time=2&& root,stateno=40&& enemynear,anim=5120 && abs(enemynear,animtime) < 5 && fvar(1) =[50,80]
v =  3
value = 2

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = !root,var(3) 
trigger1 =root,time=2&& root,stateno=40&& enemynear,anim=5120 && abs(enemynear,animtime) < 5 && fvar(1) =[100,130]
v =  3
value = 3

[State 0, VarSet]
type = Varset;how often should I jump?
trigger1 = time=0
fv = 6   ;fv = 10
value = 1.0

[State 0, VarSet]
type = Varset
triggerall = var(39)
triggerall=enemy,stateno=[200,699]
trigger1 = root,movetype=H && root,statetype=A && root,stateno!=[120,155]
trigger1 = root,gethitvar(hitshaketime)=1
fv = 6   ;fv = 10
value = fvar(6)*.85

[State 0, VarSet]
type = Varset
triggerall = var(39)
triggerall=enemy,stateno=[1000,1999]
trigger1 = root,movetype=H && root,statetype=A && root,stateno!=[120,155]
trigger1 = root,gethitvar(hitshaketime)=1
fv = 6   ;fv = 10
value = fvar(6)*.70

[State 0, VarAdd]
type = VarAdd
trigger1 = fvar(6)<1.0 && time%240=0
fv = 6    ;fv = 
value = .15*fvar(6)
;ignorehitpause = 
;persistent = 


[State 0, VarSet]
type = Varset
trigger1 =root,statetype=A&& root,movetype!=H
v = 39   ;fv = 10
value = 1
ignorehitpause = 1
[State 0, VarSet]
type = Varset
trigger1 =root,statetype=A&&root,movetype=H&& root,stateno=[5030,5050]
v =39   ;fv = 10
value = 2
ignorehitpause = 1
[State 0, VarSet]
type = Varset
trigger1 =root,statetype!=A
v = 39  ;fv = 10
value = 0
ignorehitpause = 1
[State 0, VarSet]
type = Varset
trigger1 =var(40)=2
v = 41   ;fv = 10
value = 1
ignorehitpause = 1
[State 0, VarSet]
type = Varset
triggerall =root,AILevel>0
trigger1 =root,movehit
trigger2 = root,var(15)
trigger3= var(42)%(30*root,AIlevel)=0
v = 41   ;fv = 10
value =0
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 =  var(41)=0
v = 42    ;fv = 10
value = 0
[State 0, VarSet]
type = Varadd
trigger1 = var(41)=1
v = 42    ;fv = 10
value = 1


;projectile
[State 20, Null]
type = Null
triggerall = root,statetype!=A
triggerall =  cond(numhelper(1010),helper(1010),stateno = 1015,!root,numhelper(1010))
trigger1= (root,ctrl || root,stateno=20 || (root,stateno=[100,101])) && !var(18) && fvar(2)>-45
trigger1= ((fvar(2) =[-55- (floor(enemynear,vel y*.4)*5),-5])|| var(14)||enemynear,anim=5120) && cond(numhelper(1010),helper(1010),stateno = 1015,1) && random <= (175* (var(59) ** 2 / 64.0))
trigger1= fvar(1) =[90-(enemynear,time>floor(abs(enemynear,animtime)*.5)&&enemynear,anim=5120)*60,200 + (floor(fvar(3)*.4)*5)] 
trigger1= 1||var(18):=cond(enemynear,numproj && (power>750|| root,var(20)>400),1030,1000)
trigger1= 1||var(15):=cond(enemynear,numproj,random%3,0)*(var(18)=1000)
trigger2= var(12) && root,movecontact&& !enemynear,hitfall && enemynear,statetype=A && root,frontedgebodydist >70
trigger2 = var(18):=1000
trigger2 = 1||var(15):=cond(enemynear,backedgebodydist >60,1,0)

[State 0, VarSet]
type = VarSet
trigger1 = root,stateno=var(18)|| root,statetype=A && var(18) || root,movetype=H&&root,anim!=5120
v = 18 
value = 0

[State 0, VarSet]
type = VarSet
trigger1 = root,stateno=var(19)|| root,statetype!=A && var(19)|| root,movetype=H
trigger2 = var(19)>1000 && root,pos y >-50 && root,stateno!=301
v = 19
value = 0

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = root,stateno!=[800,3999]
v = 10
value = var(15)



[State 0, DisplayToClipboard];Attack 
type = DisplayToClipboard
trigger1 = 1
text = "%f %f %d %d %d"
params= fvar(2),fvar(1),root,var(3),var(19),var(18)

