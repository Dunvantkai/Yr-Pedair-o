    1 MODE 7
    2 P=0
    3 PRINT "W,A,S,D TO MOVE Q TO PRINT BLOCK"
    4 DIM ARRAY$(9,9)
    5 BL$=CHR$(255) :REM BLOCK
    6 NBL$=" "
    7 RBL$=NBL$
    8 PRINT "E, TO CAL ARRAY DONT Q OUTSIDE 9,9 GRID"
   10 Y=5
   11 X=5
   12 REM LOOP
   13 K=INKEY(0)
   14 IF K=87 THEN PRINTTAB(X,Y)RBL$ : Y=Y-1 : RBL$=NBL$ : GOTO 27:REM W
   15 IF K=83 THEN PRINTTAB(X,Y)RBL$ : Y=Y+1 : RBL$=NBL$ : GOTO 27:REM S
   16 IF K=68 THEN PRINTTAB(X,Y)RBL$ : X=X+1 : RBL$=NBL$ : GOTO 27:REM D
   17 IF K=65 THEN PRINTTAB(X,Y)RBL$ : X=X-1 : RBL$=NBL$ : GOTO 27:REM A
   18 IF K=81 THEN ARRAY$(X,Y)=BL$ : GOTO 28 :REM ADDS TO ARRAY
   19 IF K=69 THEN GOTO 21
   20 GOTO 13
   21 CLS
   22 FOR XA=0 TO 9
   23 FOR YA=0 TO 9
   24 IF ARRAY$(XA,YA)=BL$ THEN PRINTTAB(XA,YA)ARRAY$(XA,YA)
   25 NEXT YA : NEXT XA
   27 PRINTTAB(X,Y)BL$ : PRINTTAB(10,20)X Y : GOTO 13
   28 RBL$=BL$ : GOTO 12



