   10 MODE 7
   20 BL$=CHR$(255) :REM BLOCK
   30 B$=CHR$(8)    :REM CURSOR BACK
   40 F$=CHR$(9)    :REM CURSOR FORWARD
   50 D$=CHR$(10)   :REM CURSOR DOWN
   60 U$=CHR$(11)   :REM CURSOR UP
   70 DIM SET$(3)
   80 X=1
   90 Y=1
  100 P=1
  110 Z=0
  120 R=0
  130 GR$=CHR$(129)
  140 DIM PRI$(1)
  150 PRI$(0)="PRESS W,A,S,D TO MOVE AND Q TO ROTATE  "
  160 PRI$(1)="PRESS E TO QUIT"
  170 DIM OBA$(3) :REM O BLOCK
  180 OBA$(0)=BL$+BL$+D$+B$+B$+BL$+BL$
  190 OBA$(1)=BL$+BL$+D$+B$+B$+BL$+BL$             :REM LOOP 01
  200 OBA$(2)=BL$+BL$+D$+B$+B$+BL$+BL$             :REM LOOP 02
  210 OBA$(3)=BL$+BL$+D$+B$+B$+BL$+BL$             :REM LOOP 03
  220 DIM IBA$(3) :REM I BLOCK
  230 IBA$(0)=BL$+D$+B$+BL$+D$+B$+BL$+D$+B$+BL$
  240 IBA$(1)=BL$+BL$+BL$+BL$
  250 IBA$(2)=BL$+D$+B$+BL$+D$+B$+BL$+D$+B$+BL$    :REM LOOP 01
  260 IBA$(3)=BL$+BL$+BL$+BL$                      :REM LOOP 02
  270 DIM SBA$(3) :REM S BLOCK
  280 SBA$(0)=F$+BL$+BL$+D$+B$+B$+B$+BL$+BL$+F$
  290 SBA$(1)=BL$+D$+B$+BL$+BL$+D$+B$+BL$
  300 SBA$(2)=F$+BL$+BL$+D$+B$+B$+B$+BL$+BL$+F$    :REM LOOP 01
  310 SBA$(3)=BL$+D$+B$+BL$+BL$+D$+B$+BL$          :REM LOOP 02
  310 DIM ZBA$(3) :REM Z BLOCK
  320 ZBA$(0)=BL$+BL$+D$+B$+B$+F$+BL$+BL$
  330 ZBA$(1)=F$+BL$+D$+B$+B$+BL$+BL$+D$+B$+B$+BL$
  340 ZBA$(2)=BL$+BL$+D$+B$+B$+F$+BL$+BL$          :REM LOOP 01
  350 ZBA$(3)=F$+BL$+D$+B$+B$+BL$+BL$+D$+B$+B$+BL$ :REM LOOP 02
  360 DIM LBA$(3) :REM L BLOCK
  370 LBA$(0)=BL$+D$+B$+BL$+D$+B$+BL$+BL$
  380 LBA$(1)=BL$+BL$+BL$+D$+B$+B$+B$+BL$
  390 LBA$(2)=BL$+BL$+D$+B$+BL$+D$+B$+BL$
  400 LBA$(3)=F$+F$+BL$+D$+B$+B$+B$+BL$+BL$+BL$
  410 DIM JBA$(3) :REM J BLOCK
  420 JBA$(0)=F$+BL$+D$+B$+BL$+D$+B$+B$+BL$+BL$
  430 JBA$(1)=BL$+D$+B$+BL$+BL$+BL$
  440 JBA$(2)=BL$+BL$+D$+B$+B$+BL$+D$+B$+BL$
  450 JBA$(3)=BL$+BL$+BL$+D$+B$+BL$
  460 DIM TBA$(3) :REM T BLOCK
  470 TBA$(0)=BL$+BL$+BL$+D$+B$+B$+BL$
  480 TBA$(1)=F$+BL$+D$+B$+B$+BL$+BL$+D$+B$+BL$
  490 TBA$(2)=F$+BL$+D$+B$+B$+BL$+BL$+BL$
  500 TBA$(3)=BL$+D$+B$+BL$+BL$+D$+B$+B$+BL$
  510 PROC_Main
  520 DEF PROC_Main
  530 PROC_ShapeID
  540 PROC_PlayerInput
  550 REM PROC_Print
  560 ENDPROC
  570 DEF PROC_ShapeID
  580 CLS
  590 PRINTTAB(0,0)OBA$(0) ; :PRINT " BLOCK O"
  600 PRINTTAB(20,0)TBA$(0) ; :PRINT " BLOCK T"
  610 PRINTTAB(0,5)SBA$(0) ; :PRINT " BLOCK S"
  620 PRINTTAB(20,5)ZBA$(0) ; :PRINT " BLOCK Z"
  630 PRINTTAB(0,10)LBA$(0) ; :PRINT " BLOCK L"
  640 PRINTTAB(20,10)JBA$(0) ; :PRINT " BLOCK J"
  650 PRINTTAB(0,15)IBA$(0) ; :PRINT " BLOCK I"
  660 PRINT :
  670 PRINT "PLEASE ENTER A SHAPE ID " ;
  680 INPUT SEB$
  690 IF SEB$="O" OR SEB$="o" THEN CLS : FOR S=0 TO 3 : SET$(S)=OBA$(S) : NEXT S : PRINT GR$PRI$(0)GR$PRI$(1) :REM COMPY THE SELEECTED ARARY SEB$ TO SET TO DISPLAY SET$
  700 IF SEB$="T" OR SEB$="t" THEN CLS : FOR S=0 TO 3 : SET$(S)=TBA$(S) : NEXT S : PRINT GR$PRI$(0)GR$PRI$(1)
  710 IF SEB$="S" OR SEB$="s" THEN CLS : FOR S=0 TO 3 : SET$(S)=SBA$(S) : NEXT S : PRINT GR$PRI$(0)GR$PRI$(1)
  720 IF SEB$="Z" OR SEB$="z" THEN CLS : FOR S=0 TO 3 : SET$(S)=ZBA$(S) : NEXT S : PRINT GR$PRI$(0)GR$PRI$(1)
  730 IF SEB$="L" OR SEB$="l" THEN CLS : FOR S=0 TO 3 : SET$(S)=LBA$(S) : NEXT S : PRINT GR$PRI$(0)GR$PRI$(1)
  740 IF SEB$="J" OR SEB$="j" THEN CLS : FOR S=0 TO 3 : SET$(S)=JBA$(S) : NEXT S : PRINT GR$PRI$(0)GR$PRI$(1)
  750 IF SEB$="I" OR SEB$="i" THEN CLS : FOR S=0 TO 3 : SET$(S)=IBA$(S) : NEXT S : PRINT GR$PRI$(0)GR$PRI$(1)
  760 ENDPROC
  770 DEF PROC_PlayerInput
  780 REM WHILE TRUE:REM REPEAT
  790 K=INKEY(0)
  800 IF X>38 THEN X=38
  810 IF X<0 THEN X=0
  820 IF Y>15 THEN Y=14
  830 IF Y<0 THEN Y=0
  840 IF K=87 OR K=119 THEN Y=Y-1 :PROC_Print :REM W
  850 IF K=83 OR K=115 THEN Y=Y+1 :PROC_Print :REM S
  860 IF K=68 OR K=100 THEN X=X+1 :PROC_Print :REM D
  870 IF K=65 OR K=97  THEN X=X-1 :PROC_Print :REM A
  880 IF K=81 OR K=113 THEN R=R+1 :IF R>3 THEN R=0 :REM FIXING BOUNDS Q
  890 IF K=81 OR K=113 THEN PROC_Print :REM Q TO ROTAE
  900 IF K=69 OR K=101 PROC_RESET
  910 GOTO 790 :REM UNTIL FALSE FIX LATTER CANT BE LEFT
  920 ENDPROC
  930 DEF PROC_Print
  940 CLS
  950 PRINT TAB(X,Y)SET$(R)
  970 REMPRINTLEN(SET$(I))
  980 PROC_PlayerInput
  990 END PROC
 1000 DEF PROC_RESET
 1010 X=1
 1020 Y=1
 1030 R=0
 1040 PROC_Main
 1050 END PROC
