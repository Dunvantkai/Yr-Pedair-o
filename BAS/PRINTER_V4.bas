    1 MODE 7
    2 P=0
    3 PRINT "W,A,S,D TO MOVE Q TO PRINT BLOCK"
    4 DIM ARRAY$(9,19)
    5 BL$=CHR$(255) :REM BLOCK  :
    6 NBL$=" "
    7 RBL$=NBL$
    8 PRINT "E, TO CAL ARRAY DONT Q OUTSIDE 9,19 GRID"
    9 DIM IBA$(3) :REM I BLOCK
   10 IBA$(0)=BL$+D$+B$+BL$+D$+B$+BL$+D$+B$+BL$
   11 IBA$(1)=BL$+BL$+BL$+BL$
   12 IBA$(2)=BL$+D$+B$+BL$+D$+B$+BL$+D$+B$+BL$    :REM LOOP 01
   13 IBA$(3)=BL$+BL$+BL$+BL$                      :REM LOOP 02
   14 DIM IBAG$(3) :REM I BLOCK GOUEST
   15 IBAG$(0)=NBL$+D$+B$+NBL$+D$+B$+NBL$+D$+B$+NBL$
   16 IBAG$(1)=NBL$+NBL$+NBL$+NBL$
   17 IBAG$(2)=NBL$+D$+B$+NBL$+D$+B$+NBL$+D$+B$+NBL$    :REM LOOP 01
   18 IBAG$(3)=NBL$+NBL$+NBL$+NBL$                      :REM LOOP 02
   19 Y=5
   20 X=5
   21 REM LOOP
   22 K=INKEY(0)
   23 IF K=87 THEN PRINTTAB(X,Y)IBAG$(0) : Y=Y-1 : RBL$=NBL$ : GOTO 27:REM W
   24 IF K=83 THEN PRINTTAB(X,Y)IBAG$(0) : Y=Y+1 : RBL$=NBL$ : GOTO 27:REM S
   25 IF K=68 THEN PRINTTAB(X,Y)IBAG$(0) : X=X+1 : RBL$=NBL$ : GOTO 27:REM D
   26 IF K=65 THEN PRINTTAB(X,Y)IBAG$(0) : X=X-1 : RBL$=NBL$ : GOTO 27:REM A
   27 IF K=81 THEN ARRAY$(X,Y)=BL$ : GOTO 28 :REM ADDS TO ARRAY
   28 IF K=69 THEN GOTO 21
   29 GOTO 22
   30 CLS
    3 FOR XA=0 TO 9
   23   FOR YA=0 TO 19
   24     IF ARRAY$(XA,YA)=BL$ THEN PRINTTAB(XA,YA)ARRAY$(XA,YA)
   25   NEXT YA : NEXT XA
   27 PRINTTAB(X,Y)IBA$(0) : PRINTTAB(10,20)X Y : GOTO 21
   28 RBL$=BL$ : GOTO 12



