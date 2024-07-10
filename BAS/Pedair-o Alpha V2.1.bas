   10 MODE 7
   20 BL$=CHR$(255) :REM BLOCK
   30 NBL$=" "      :REM NO BLOCK
   40 B$=CHR$(8)    :REM CURSOR BACK
   50 F$=CHR$(9)    :REM CURSOR FORWARD
   60 D$=CHR$(10)   :REM CURSOR DOWN
   70 U$=CHR$(11)   :REM CURSOR UP
   80 DIM SET$(3) : DIM NSET$(3) :REM SET$ TO SELECT THE CURRTED SHAPE AND NSET$ FOR THE WHITE OVER OF SAID SET
   90 X=1 : Y=1 : R=0 :REM X Y AND ROTAION
   95 DIM SCREEN$(23,23) : DIM SETHB$(3,3,3)  :REM SCREAN SIZE AND SELECTED HITBOX FOR THE SPITES
  100 REM COLOUR
  110 L$=CHR$(141) : ST$=CHR$(137) : G$=CHR$(130)
  120 Y$=CHR$(131) : GL$=CHR$(132) : M$=CHR$(133)
  130 C$=CHR$(134) : FL$=CHR$(136) : R$=CHR$(129)
  140 DIM PRI$(1)
  150 PRI$(0)="PRESS W,A,S,D TO MOVE AND Q TO ROTATE  "
  160 PRI$(1)="PRESS E TO PRINT AND PRESS L TO QUIT"
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
  505 PRINT"GRAPHIC BLOCKS DEFINED"
  510 DIM EOBA$(3) :REM EMPTY O BLOCK
  520 EOBA$(0)=NBL$+NBL$+D$+B$+B$+NBL$+NBL$
  530 EOBA$(1)=NBL$+NBL$+D$+B$+B$+NBL$+NBL$             :REM LOOP 01
  540 EOBA$(2)=NBL$+NBL$+D$+B$+B$+NBL$+NBL$             :REM LOOP 02
  550 EOBA$(3)=NBL$+NBL$+D$+B$+B$+NBL$+NBL$             :REM LOOP 03
  560 DIM EIBA$(3) :REM EMPTY I BLOCK
  570 EIBA$(0)=NBL$+D$+B$+NBL$+D$+B$+NBL$+D$+B$+NBL$
  580 EIBA$(1)=NBL$+NBL$+NBL$+NBL$
  590 EIBA$(2)=NBL$+D$+B$+NBL$+D$+B$+NBL$+D$+B$+NBL$    :REM LOOP 01
  600 EIBA$(3)=NBL$+NBL$+NBL$+NBL$                      :REM LOOP 02
  610 DIM ESBA$(3) :REM EMPTY S BLOCK
  620 ESBA$(0)=F$+NBL$+NBL$+D$+B$+B$+B$+NBL$+NBL$+F$
  630 ESBA$(1)=NBL$+D$+B$+NBL$+NBL$+D$+B$+NBL$
  640 ESBA$(2)=F$+NBL$+NBL$+D$+B$+B$+B$+NBL$+NBL$+F$    :REM LOOP 01
  650 ESBA$(3)=NBL$+D$+B$+NBL$+NBL$+D$+B$+NBL$          :REM LOOP 02
  660 DIM EZBA$(3) :REM EMPTY Z BLOCK
  670 EZBA$(0)=NBL$+NBL$+D$+B$+B$+F$+NBL$+NBL$
  680 EZBA$(1)=F$+NBL$+D$+B$+B$+NBL$+NBL$+D$+B$+B$+NBL$
  690 EZBA$(2)=NBL$+NBL$+D$+B$+B$+F$+NBL$+NBL$          :REM LOOP 01
  700 EZBA$(3)=F$+NBL$+D$+B$+B$+NBL$+NBL$+D$+B$+B$+NBL$ :REM LOOP 02
  710 DIM ELBA$(3) :REM EMPTY L BLOCK
  720 ELBA$(0)=NBL$+D$+B$+NBL$+D$+B$+NBL$+NBL$
  730 ELBA$(1)=NBL$+NBL$+NBL$+D$+B$+B$+B$+NBL$
  740 ELBA$(2)=NBL$+NBL$+D$+B$+NBL$+D$+B$+NBL$
  750 ELBA$(3)=F$+F$+NBL$+D$+B$+B$+B$+NBL$+NBL$+NBL$
  760 DIM EJBA$(3) :REM EMPTY J BLOCK
  770 EJBA$(0)=F$+NBL$+D$+B$+NBL$+D$+B$+B$+NBL$+NBL$
  780 EJBA$(1)=NBL$+D$+B$+NBL$+NBL$+NBL$
  790 EJBA$(2)=NBL$+NBL$+D$+B$+B$+NBL$+D$+B$+NBL$
  800 EJBA$(3)=NBL$+NBL$+NBL$+D$+B$+NBL$
  810 DIM ETBA$(3) :REM EMPTY T BLOCK
  820 ETBA$(0)=NBL$+NBL$+NBL$+D$+B$+B$+NBL$
  830 ETBA$(1)=F$+NBL$+D$+B$+B$+NBL$+NBL$+D$+B$+NBL$
  840 ETBA$(2)=F$+NBL$+D$+B$+B$+NBL$+NBL$+NBL$
  850 ETBA$(3)=NBL$+D$+B$+NBL$+NBL$+D$+B$+B$+NBL$
  855 PRINT"EMPTY GRAPHIC BLOCKS DEFINED"
  860 DIM OBAH$(3,3,3) :REM O BLOCK HIT BOX
  870 OBAH$(0,0,0)=BL$ :OBAH$(0,1,0)=BL$ :OBAH$(0,0,1)=BL$ :OBAH$(0,1,1)=BL$
  880 OBAH$(1,0,0)=BL$ :OBAH$(1,1,0)=BL$ :OBAH$(1,0,1)=BL$ :OBAH$(1,1,1)=BL$  :REM LOOP 01
  890 OBAH$(2,0,0)=BL$ :OBAH$(2,1,0)=BL$ :OBAH$(2,0,1)=BL$ :OBAH$(2,1,1)=BL$  :REM LOOP 02
  900 OBAH$(3,0,0)=BL$ :OBAH$(3,1,0)=BL$ :OBAH$(3,0,1)=BL$ :OBAH$(3,1,1)=BL$  :REM LOOP 03
  910 DIM IBAH$(3,3,3) :REM I BLOCK HIT BOX
  920 IBAH$(0,0,0)=BL$ :IBAH$(0,0,1)=BL$ :IBAH$(0,0,2)=BL$ :IBAH$(0,0,3)=BL$
  930 IBAH$(1,0,0)=BL$ :IBAH$(1,1,0)=BL$ :IBAH$(1,2,0)=BL$ :IBAH$(1,3,0)=BL$
  940 IBAH$(2,0,0)=BL$ :IBAH$(2,0,1)=BL$ :IBAH$(2,0,2)=BL$ :IBAH$(2,0,3)=BL$  :REM LOOP 01
  950 IBAH$(3,0,0)=BL$ :IBAH$(3,1,0)=BL$ :IBAH$(3,2,0)=BL$ :IBAH$(3,3,0)=BL$  :REM LOOP 02
  960 DIM SBAH$(3,3,3) :REM S BLOCK HIT BOX
  970 SBAH$(0,1,0)=BL$ :SBAH$(0,2,0)=BL$ :SBAH$(0,0,1)=BL$ :SBAH$(0,1,1)=BL$
  980 SBAH$(1,0,0)=BL$ :SBAH$(1,0,1)=BL$ :SBAH$(1,1,1)=BL$ :SBAH$(1,1,2)=BL$
  990 SBAH$(2,1,0)=BL$ :SBAH$(2,2,0)=BL$ :SBAH$(2,0,1)=BL$ :SBAH$(2,1,1)=BL$  :REM LOOP 01
 1000 SBAH$(3,0,0)=BL$ :SBAH$(3,0,1)=BL$ :SBAH$(3,1,1)=BL$ :SBAH$(3,1,2)=BL$  :REM LOOP 02
 1010 DIM ZBAH$(3,3,3) :REM Z BLOCK HIT BOX
 1020 ZBAH$(0,0,0)=BL$ :ZBAH$(0,1,0)=BL$ :ZBAH$(0,1,1)=BL$ :ZBAH$(0,2,1)=BL$
 1030 ZBAH$(1,1,0)=BL$ :ZBAH$(1,0,1)=BL$ :ZBAH$(1,1,1)=BL$ :ZBAH$(1,0,2)=BL$
 1040 ZBAH$(2,0,0)=BL$ :ZBAH$(2,1,0)=BL$ :ZBAH$(2,1,1)=BL$ :ZBAH$(2,2,1)=BL$  :REM LOOP 01
 1050 ZBAH$(3,1,0)=BL$ :ZBAH$(3,0,1)=BL$ :ZBAH$(3,1,1)=BL$ :ZBAH$(3,0,2)=BL$  :REM LOOP 02
 1060 DIM LBAH$(3,3,3) :REM L BLOCK HIT BOX
 1070 LBAH$(0,0,0)=BL$ :LBAH$(0,0,1)=BL$ :LBAH$(0,0,2)=BL$ :LBAH$(0,1,2)=BL$
 1080 LBAH$(1,0,0)=BL$ :LBAH$(1,1,0)=BL$ :LBAH$(1,2,0)=BL$ :LBAH$(1,0,1)=BL$
 1090 LBAH$(2,0,0)=BL$ :LBAH$(2,1,0)=BL$ :LBAH$(2,1,1)=BL$ :LBAH$(2,1,2)=BL$
 1100 LBAH$(3,2,0)=BL$ :LBAH$(3,0,1)=BL$ :LBAH$(3,1,1)=BL$ :LBAH$(3,2,1)=BL$
 1110 DIM JBAH$(3,3,3) :REM J BLOCK HIT BOX
 1120 JBAH$(0,1,0)=BL$ :JBAH$(0,1,1)=BL$ :JBAH$(0,0,2)=BL$ :JBAH$(0,1,2)=BL$
 1130 JBAH$(1,0,0)=BL$ :JBAH$(1,0,1)=BL$ :JBAH$(1,1,1)=BL$ :JBAH$(1,2,1)=BL$
 1140 JBAH$(2,0,0)=BL$ :JBAH$(2,1,0)=BL$ :JBAH$(2,0,1)=BL$ :JBAH$(2,0,2)=BL$
 1150 JBAH$(3,0,0)=BL$ :JBAH$(3,1,0)=BL$ :JBAH$(3,2,0)=BL$ :JBAH$(3,2,1)=BL$
 1160 DIM TBAH$(3,3,3) :REM T BLOCK HIT BOX
 1170 TBAH$(0,0,0)=BL$ :TBAH$(0,1,0)=BL$ :TBAH$(0,2,0)=BL$ :TBAH$(0,1,0)=BL$
 1180 TBAH$(1,1,0)=BL$ :TBAH$(1,0,1)=BL$ :TBAH$(1,1,1)=BL$ :TBAH$(1,1,2)=BL$
 1190 TBAH$(2,1,0)=BL$ :TBAH$(2,0,1)=BL$ :TBAH$(2,1,1)=BL$ :TBAH$(2,2,1)=BL$
 1200 TBAH$(3,0,0)=BL$ :TBAH$(3,0,1)=BL$ :TBAH$(3,1,1)=BL$ :TBAH$(3,0,2)=BL$
 1210 PRINT"HIT BOX BLOCKS DEFINED"
 1510 PROC_Main
 1520 DEF PROC_Main
 1525 PROC_Title
 1530 REM PROC_ShapeID
 1540 PROC_PlayerInput
 1550 REM PROC_Print
 1551 ENDPROC
 1552 DEF PROC_Title
 1553 CLS
 1554 PRINTTAB(9,0) L$Y$"CROESO I PEDAIR-O" : PRINTTAB(9,1)L$M$"CROESO I PEDAIR-O"
 1555 PRINTTAB(2,3) R$"Options  for PEDAIR-O:" : PRINTTAB(2,5)"S - To Show a List Of Shapes"
 1556 PRINTTAB(2,7) GL$"Controls:"
 1557 PRINTTAB(2,9) "Z - To Move Left"
 1558 PRINTTAB(2,11) "X - To Move Right"
 1559 PRINTTAB(2,13) "RIGHT SHIFT - To Rotate"
 1560 PRINTTAB(2,16) FL$"SPACE" ; :PRINT ST$"- To Start The Game"
 1561 PRINTTAB(2,18) "     L - To Exit From Game" : PRINTTAB(9,20)"MAKE BY" ; : PRINT R$"Dunvant_Kai"
 1562 K%=INKEY(0)  :REM 562
 1563 IF K%=32 THEN PROC_Random : ENDPROC  :REM START GAME
 1564 IF K%=76 THEN CLS : PRINTTAB(4,5)"THANK YOU FOR PLAYER MY GAME ^^" : PRINTTAB(9,10)"MAKE BY"; : PRINT R$"Dunvant_Kai" : PRINTTAB(9,20)LBA$(0) :END : LEAVE GAME
 1565 IF K%=83 THEN PROC_ShapeID : ENDPROC  : OPEN SHAPES
 1566 GOTO 1562 :REM 562
 1567 ENDPROC
 1568 DEF PROC_Random
 1569 RAND%=RND(7)   :REM CHANGE BACK TO 7 AFTER DONE
 1570 IF RAND% = 1 THEN CLS : FOR S=0 TO 3 : SET$(S)=OBA$(S) : NSET$(S)=EOBA$(S) : NEXT S : FOR Z=0 TO 3 : FOR SX=0 TO 3 : FOR SY=0 TO 3 : SETHB$(Z,SX,SY)=OBAH$(Z,SX,SY) :NEXT SY :NEXT SX :NEXT Z :PRINT R$PRI$(0)R$PRI$(1)
 1571 IF RAND% = 2 THEN CLS : FOR S=0 TO 3 : SET$(S)=TBA$(S) : NSET$(S)=ETBA$(S) : NEXT S : FOR Z=0 TO 3 : FOR SX=0 TO 3 : FOR SY=0 TO 3 : SETHB$(Z,SX,SY)=TBAH$(Z,SX,SY) :NEXT SY :NEXT SX :NEXT Z :PRINT R$PRI$(0)R$PRI$(1)
 1572 IF RAND% = 3 THEN CLS : FOR S=0 TO 3 : SET$(S)=SBA$(S) : NSET$(S)=ESBA$(S) : NEXT S : FOR Z=0 TO 3 : FOR SX=0 TO 3 : FOR SY=0 TO 3 : SETHB$(Z,SX,SY)=SBAH$(Z,SX,SY) :NEXT SY :NEXT SX :NEXT Z :PRINT R$PRI$(0)R$PRI$(1)
 1573 IF RAND% = 4 THEN CLS : FOR S=0 TO 3 : SET$(S)=ZBA$(S) : NSET$(S)=EZBA$(S) : NEXT S : FOR Z=0 TO 3 : FOR SX=0 TO 3 : FOR SY=0 TO 3 : SETHB$(Z,SX,SY)=ZBAH$(Z,SX,SY) :NEXT SY :NEXT SX :NEXT Z :PRINT R$PRI$(0)R$PRI$(1)
 1574 IF RAND% = 5 THEN CLS : FOR S=0 TO 3 : SET$(S)=LBA$(S) : NSET$(S)=ELBA$(S) : NEXT S : FOR Z=0 TO 3 : FOR SX=0 TO 3 : FOR SY=0 TO 3 : SETHB$(Z,SX,SY)=LBAH$(Z,SX,SY) :NEXT SY :NEXT SX :NEXT Z :PRINT R$PRI$(0)R$PRI$(1)
 1575 IF RAND% = 6 THEN CLS : FOR S=0 TO 3 : SET$(S)=JBA$(S) : NSET$(S)=EJBA$(S) : NEXT S : FOR Z=0 TO 3 : FOR SX=0 TO 3 : FOR SY=0 TO 3 : SETHB$(Z,SX,SY)=JBAH$(Z,SX,SY) :NEXT SY :NEXT SX :NEXT Z :PRINT R$PRI$(0)R$PRI$(1)
 1576 IF RAND% = 7 THEN CLS : FOR S=0 TO 3 : SET$(S)=IBA$(S) : NSET$(S)=EIBA$(S) : NEXT S : FOR Z=0 TO 3 : FOR SX=0 TO 3 : FOR SY=0 TO 3 : SETHB$(Z,SX,SY)=IBAH$(Z,SX,SY) :NEXT SY :NEXT SX :NEXT Z :PRINT R$PRI$(0)R$PRI$(1)
 1577 REM FOR SX=0 TO 3 : FOR SY=0 TO 3 : PRINTTAB(SX+5,SY+5) SETHB$(2,SX,SY) :NEXT SY :NEXT SX : INPUT A$
 1578 PROC_PlayerInput : ENDPROC
 1579 DEF PROC_ShapeID
 1580 CLS
 1590 PRINTTAB(0,0)OBA$(0) ; :PRINT " BLOCK O"
 1600 PRINTTAB(20,0)TBA$(0) ; :PRINT " BLOCK T"
 1610 PRINTTAB(0,5)SBA$(0) ; :PRINT " BLOCK S"
 1620 PRINTTAB(20,5)ZBA$(0) ; :PRINT " BLOCK Z"
 1630 PRINTTAB(0,10)LBA$(0) ; :PRINT " BLOCK L"
 1640 PRINTTAB(20,10)JBA$(0) ; :PRINT " BLOCK J"
 1650 PRINTTAB(0,15)IBA$(0) ; :PRINT " BLOCK I"
 1651 PRINTTAB(5,21)"L - TO GO BACK TO MAIN MENU"
 1652 K%=INKEY(0)  :REM 652
 1653 IF K%=76 THEN PROC_Title
 1654 GOTO 1652 :REM 652
 1760 ENDPROC
 1770 DEF PROC_PlayerInput
 1780 REM WHILE TRUE:REM REPEAT
 1790 K%=INKEY(0)   :REM 790
 1800 IF X>38 THEN X=38
 1810 IF X<0 THEN X=0
 1820 IF Y>15 THEN Y=14
 1830 IF Y<0 THEN Y=0
 1840 IF K%=87 OR K%=119 THEN PRINTTAB(X,Y)NSET$(R) : Y=Y-1 :PROC_Print :REM W
 1850 IF K%=83 OR K%=115 THEN PRINTTAB(X,Y)NSET$(R) : Y=Y+1 :PROC_Print :REM S
 1860 IF K%=68 OR K%=100 THEN PRINTTAB(X,Y)NSET$(R) : X=X+1 :PROC_Print :REM D
 1870 IF K%=65 OR K%=97  THEN PRINTTAB(X,Y)NSET$(R) : X=X-1 :PROC_Print :REM A
 1880 IF K%=81 OR K%=113 THEN PRINTTAB(X,Y)NSET$(R) : R=R+1 :IF R>3 THEN R=0 :REM ROTATES PEASE AND MAKE SURE IT STAYS IN BOUNDS
 1890 IF K%=81 OR K%=113 THEN PROC_Print :REM Q TO ROTAE
 1900 IF K%=69 OR K%=101 THEN FOR SX=0 TO 3 : FOR SY=0 TO 3 : SCREEN$(SX+X,SY+Y)=SCREEN$(SX+X,SY+Y)+SETHB$(R,SX,SY) : NEXT SY : NEXT SX
 1905 IF K%=76 THEN PROC_RESET
 1910 GOTO 1790 :REM UNTIL FALSE FIX LATTER CANT BE LEFT  :REM 790
 1920 ENDPROC
 1930 DEF PROC_Print
 1940 REM PRINT SBL$ :REM CLS
 1950 PRINTTAB(X,Y)SET$(R)
 1955 FOR SX=0 TO 23 : FOR SY=0 TO 23 : PRINTTAB(SX,SY) SCREEN$(SX,SY) : NEXT SY : NEXT SX
 1970 REMPRINTLEN(SET$(I))
 1980 REM PROC_PlayerInput
 1990 ENDPROC
 2000 DEF PROC_RESET
 2010 X=1
 2020 Y=1
 2030 R=0
 2040 PROC_Main
 2050 END PROC
