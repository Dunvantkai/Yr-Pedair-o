   10 MODE 7
   20 BL$=CHR$(255) :REM BLOCK
   30 B$=CHR$(8)    :REM CURSOR BACK
   40 F$=CHR$(9)    :REM CURSOR FORWARD
   50 D$=CHR$(10)   :REM CURSOR DOWN
   60 U$=CHR$(11)   :REM CURSOR UP
   61 DIM SET$(3)
   64 X=1
   65 Y=1
   70 Z=0
   71 I=0
   72 GR$=CHR$(129)
   73 PRI$="PRESS W,A,S,D TO MOVE AND Q TO RESTART"
   74 DIM OBA$(3) :REM O BLOCK
   80 OBA$(0)=BL$+BL$+D$+B$+B$+BL$+BL$
   90 OBA$(1)=BL$+BL$+D$+B$+B$+BL$+BL$             :REM LOOP 01
  100 OBA$(2)=BL$+BL$+D$+B$+B$+BL$+BL$             :REM LOOP 02
  110 OBA$(3)=BL$+BL$+D$+B$+B$+BL$+BL$             :REM LOOP 03
  120 DIM IBA$(3) :REM I BLOCK
  130 IBA$(0)=BL$+D$+B$+BL$+D$+B$+BL$+D$+B$+BL$
  140 IBA$(1)=BL$+BL$+BL$+BL$
  150 IBA$(2)=BL$+D$+B$+BL$+D$+B$+BL$+D$+B$+BL$    :REM LOOP 01
  160 IBA$(3)=BL$+BL$+BL$+BL$                      :REM LOOP 02
  170 DIM SBA$(3) :REM S BLOCK
  180 SBA$(0)=F$+BL$+BL$+D$+B$+B$+B$+BL$+BL$+F$
  190 SBA$(1)=BL$+D$+B$+BL$+BL$+D$+B$+BL$
  200 SBA$(2)=F$+BL$+BL$+D$+B$+B$+B$+BL$+BL$+F$    :REM LOOP 01
  210 SBA$(3)=BL$+D$+B$+BL$+BL$+D$+B$+BL$          :REM LOOP 02
  210 DIM ZBA$(3) :REM Z BLOCK
  220 ZBA$(0)=BL$+BL$+D$+B$+B$+F$+BL$+BL$
  230 ZBA$(1)=F$+BL$+D$+B$+B$+BL$+BL$+D$+B$+B$+BL$
  240 ZBA$(2)=BL$+BL$+D$+B$+B$+F$+BL$+BL$          :REM LOOP 01
  250 ZBA$(3)=F$+BL$+D$+B$+B$+BL$+BL$+D$+B$+B$+BL$ :REM LOOP 02
  260 DIM LBA$(3) :REM L BLOCK
  270 LBA$(0)=BL$+D$+B$+BL$+D$+B$+BL$+BL$
  280 LBA$(1)=BL$+BL$+BL$+D$+B$+B$+B$+BL$
  290 LBA$(2)=BL$+BL$+D$+B$+BL$+D$+B$+BL$
  300 LBA$(3)=F$+F$+BL$+D$+B$+B$+B$+BL$+BL$+BL$
  310 DIM JBA$(3) :REM J BLOCK
  320 JBA$(0)=F$+BL$+D$+B$+BL$+D$+B$+B$+BL$+BL$
  330 JBA$(1)=BL$+D$+B$+BL$+BL$+BL$
  340 JBA$(2)=BL$+BL$+D$+B$+B$+BL$+D$+B$+BL$
  350 JBA$(3)=BL$+BL$+BL$+D$+B$+BL$
  360 DIM TBA$(3) :REM T BLOCK
  370 TBA$(0)=BL$+BL$+BL$+D$+B$+B$+BL$
  380 TBA$(1)=F$+BL$+D$+B$+B$+BL$+BL$+D$+B$+BL$
  390 TBA$(2)=F$+BL$+D$+B$+B$+BL$+BL$+BL$
  400 TBA$(3)=BL$+D$+B$+BL$+BL$+D$+B$+B$+BL$
 1150 PRINTTAB(0,0)OBA$(0) ; :PRINT " BLOCK O"
 1160 PRINTTAB(20,0)TBA$(0) ; :PRINT " BLOCK T"
 1170 PRINTTAB(0,5)SBA$(0) ; :PRINT " BLOCK S"
 1180 PRINTTAB(20,5)ZBA$(0) ; :PRINT " BLOCK Z"
 1190 PRINTTAB(0,10)LBA$(0) ; :PRINT " BLOCK L"
 1200 PRINTTAB(20,10)JBA$(0) ; :PRINT " BLOCK J"
 1210 PRINTTAB(0,15)IBA$(0) ; :PRINT " BLOCK I"
 1215 PRINT :
 1220 PRINT "PLEASE ENTER A SHAPE ID " ;
 1230 INPUT SEB$
 1240 IF SEB$="O" THEN CLS : FOR S=0 TO 3 : SET$(S)=OBA$(S) : NEXT S : PRINT GR$PRI$ :REM COMPY THE SELEECTED ARARY SEB$ TO SET TO DISPLAY SET$
 1250 IF SEB$="T" THEN CLS : FOR S=0 TO 3 : SET$(S)=TBA$(S) : NEXT S : PRINT GR$PRI$
 1260 IF SEB$="S" THEN CLS : FOR S=0 TO 3 : SET$(S)=SBA$(S) : NEXT S : PRINT GR$PRI$
 1270 IF SEB$="Z" THEN CLS : FOR S=0 TO 3 : SET$(S)=ZBA$(S) : NEXT S : PRINT GR$PRI$
 1280 IF SEB$="L" THEN CLS : FOR S=0 TO 3 : SET$(S)=LBA$(S) : NEXT S : PRINT GR$PRI$
 1290 IF SEB$="J" THEN CLS : FOR S=0 TO 3 : SET$(S)=JBA$(S) : NEXT S : PRINT GR$PRI$
 1300 IF SEB$="I" THEN CLS : FOR S=0 TO 3 : SET$(S)=IBA$(S) : NEXT S : PRINT GR$PRI$
 1310 REM CALL TO LOOP
 1320 K=INKEY(0)
 1330 IF K=87 THEN GOTO 1420 :REM W
 1340 IF K=83 THEN GOTO 1430 :REM S
 1350 IF K=68 THEN GOTO 1440 :REM D
 1360 IF K=65 THEN GOTO 1450 :REM A
 1365 IF K=81 THEN GOTO 1451 :REM Q TO ROTAE
 1370 IF X>38 THEN X=38
 1380 IF X<0 THEN X=0
 1390 IF Y>25 THEN Y=25
 1400 IF Y<0 THEN Y=0
 1410 IF Z=0 GOTO 1310 ELSE PRINT "Z WAS CHANEDS" : END
 1420 Y=Y-1 : GOTO 1455 :REM W
 1430 Y=Y+1 : GOTO 1455 :REM S
 1440 X=X+1 : GOTO 1455 :REM D
 1450 X=X-1 : GOTO 1455 :REM A
 1451 I=I+1 :IF I>3 THEN I=0 : GOTO 1455
 1455 :REM
 1460 CLS
 1470 PRINT TAB(X,Y)SET$(I)
 1480 GOTO 1310

