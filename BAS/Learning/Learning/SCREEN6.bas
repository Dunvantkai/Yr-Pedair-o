   10 MODE 7
   20 BL$=CHR$(255) :B$=CHR$(8) :D$=CHR$(10) :REM BLOCK
   30 L$=CHR$(141) : Y$=CHR$(131) : M$=CHR$(133) :REM COLOURS
   40 FOR LW=3 TO 20 : PRINTTAB(12,LW)CHR$(255) : NEXT LW     :REM LEFT BLOCKS RENDER
   50 FOR RW=3 TO 20 : PRINTTAB(26,RW)CHR$(255) : NEXT RW     :REM RIGHT BLOCKS RENDER
   60 FOR BW=12 TO 26 : PRINTTAB(BW,21)CHR$(255) : NEXT BW    :REM BOTTOM BLOCKS RENDER
   70 FOR LC=3 TO 21 : PRINTTAB(11,LC)CHR$(145) : NEXT LC     :REM LEFT AND BOTTOM BLOCK GRAFIC CONTROLL
   80 FOR RC=3 TO 20 : PRINTTAB(25,RC)CHR$(145) : NEXT RC     :REM RIGHT BLOCK GRAFIC CONTROLL
   90 FOR MC1=3 TO 7 : PRINTTAB(13,MC1)CHR$(130) : NEXT MC1   :REM 1ST MIDDLE GAME TEXT RENDER
  100 FOR MC2=8 TO 11 : PRINTTAB(13,MC2)CHR$(131) : NEXT MC2  :REM 2ND MIDDLE GAME TEXT RENDER
  110 FOR MC3=12 TO 15 :PRINTTAB(13,MC3)CHR$(132) : NEXT MC3  :REM 3RD MIDDLE GAME TEXT RENDER
  120 FOR MC4=16 TO 20 :PRINTTAB(13,MC4)CHR$(133) : NEXT MC4  :REM 4TH MIDDLE GAME TEXT RENDER
  130 PRINTTAB(13,0)L$Y$"PEDAIR--O" : PRINTTAB(13,1)L$M$"PEDAIR--O"
  140 PRINTTAB(30,13)CHR$(135)"NEXT :"
  150 FOR WBN=30 TO 37 : PRINTTAB(WBN,12)BL$ : NEXT WBN   :REM WRIGHT BOTTOM LINE FOR NEXT
  160 FOR WLN=6 TO 11 : PRINTTAB(30,WLN)BL$ : NEXT WLN   :REM WRIGHT LEFT LINE FOR NEXT
  170 FOR WRN=6 TO 11 : PRINTTAB(37,WRN)BL$ : NEXT WRN   :REM WRIGHT RIGHT LEIN FOR NEXT
  180 FOR WLT=6 TO 10 : PRINTTAB(31,WLT)CHR$(135) : NEXT WLT  :REM WRIGHT LEFT TEXT MODE
  190 FOR WRT=6 TO 10 : PRINTTAB(36,WRT)CHR$(145) : NEXT WRT
  200 PRINTTAB(0,6)CHR$(134)"Controls:"
  210 PRINTTAB(1,8)"Z = LEFT"
  220 PRINTTAB(1,10)"X = RIGHT"
  230 PRINTTAB(1,12)"O = ROTATE"
  240 PRINTTAB(1,14)"P = DROP"
  250 PRINTTAB(1,16)"L = EXIT"
