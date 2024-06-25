   10 BL$=CHR$(255) :REM BLOCK
   20 B$=CHR$(8)    :REM CURSOR BACK
   30 F$=CHR$(9)    :REM CURSOR FORWARD
   40 D$=CHR$(10)   :REM CURSOR DOWN
   50 U$=CHR$(11)   :REM CURSOR UP
   60 MODE 7
   70 DIM OBA$(0)
   80 OBA$(0)=BL$+BL$+D$+B$+B$+BL$+BL$
   90 DIM IBA$(1)
  100 IBA$(0)=BL$+D$+B$+BL$+D$+B$+BL$+D$+B$+BL$
  110 IBA$(1)=BL$+BL$+BL$+BL$
  120 DIM SBA$(1)
  130 SBA$(0)=F$+BL$+BL$+D$+B$+B$+B$+BL$+BL$+F$
  140 SBA$(1)=BL$+D$+B$+BL$+BL$+D$+B$+BL$
  150 DIM ZBA$(1)
  160 ZBA$(0)=BL$+BL$+D$+B$+B$+F$+BL$+BL$
  170 ZBA$(1)=F$+BL$+D$+B$+B$+BL$+BL$+D$+B$+B$+BL$
  180 DIM LBA$(3)
  190 LBA$(0)=BL$+D$+B$+BL$+D$+B$+BL$+BL$
  200 LBA$(1)=BL$+BL$+BL$+D$+B$+B$+B$+BL$
  210 LBA$(2)=BL$+BL$+D$+B$+BL$+D$+B$+BL$
  220 LBA$(3)=F$+F$+BL$+D$+B$+B$+B$+BL$+BL$+BL$
  230 DIM JBA$(3)
  230 PRINTTAB(10,10) LBA$(3)
