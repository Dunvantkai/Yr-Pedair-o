   10 MODE 7 : INPUT g$
   20 BL$=CHR$(255) :REM BLOCK
   30 L$=CHR$(141) : Y$=CHR$(131) : M$=CHR$(133) :REM COLOURS
   40 FOR LW=3 TO 19 : PRINTTAB(13,LW)CHR$(255) : NEXT LW     :REM LEFT BLOCKS RENDER
   50 FOR RW=3 TO 19 : PRINTTAB(25,RW)CHR$(255) : NEXT RW     :REM RIGHT BLOCKS RENDER
   60 FOR BW=13 TO 25 : PRINTTAB(BW,20)CHR$(255) : NEXT BW    :REM BOTTOM BLOCKS RENDER
   70 FOR LC=3 TO 20 : PRINTTAB(12,LC)CHR$(145) : NEXT LC     :REM LEFT AND BOTTOM BLOCK GRAFIC CONTROLL
   80 FOR RC=3 TO 19 : PRINTTAB(24,RC)CHR$(145) : NEXT RC     :REM RIGHT BLOCK GRAFIC CONTROLL
   90 FOR MC1=3 TO 7 : PRINTTAB(14,MC1)CHR$(130) : NEXT MC1   :REM 1ST MIDDLE GAME TEXT RENDER
  100 FOR MC2=8 TO 11 : PRINTTAB(14,MC2)CHR$(131) : NEXT MC2  :REM 2ND MIDDLE GAME TEXT RENDER
  110 FOR MC3=12 TO 15 :PRINTTAB(14,MC3)CHR$(132) : NEXT MC3  :REM 3RD MIDDLE GAME TEXT RENDER
  120 FOR MC4=16 TO 19 :PRINTTAB(14,MC4)CHR$(133) : NEXT MC4  :REM 4TH MIDDLE GAME TEXT RENDER
  130 PRINTTAB(13,0)L$Y$"PEDAIR--O" : PRINTTAB(13,1)L$M$"PEDAIR--O"
  140 PRINTTAB(19,23)BL$ : PRINTTAB(19,2)BL$ :REM CENTERING BLOCKS
  160 FOR MT=3 TO 19 : PRINTTAB(19,MT)BL$ : NEXT MT    :REM TEST BLOCKS

