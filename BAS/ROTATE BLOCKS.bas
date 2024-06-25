   10 BL$=CHR$(255) :REM SMAIl BLOCK
   20 B$=CHR$(8)    :REM CURSOR BACK
   30 F$=CHR$(9)    :REM CURSOR FORWARD
   40 D$=CHR$(10)   :REM CURSOR DOWN
   50 U$=CHR$(11)   :REM CURSOR UP
   60 MODE 7
   70 DIM OBA$(3) :REM O BLOCK
   80 OBA$(0)=BL$+BL$+D$+B$+B$+BL$+BL$
   90 OBA$(0)=BL$+BL$+D$+B$+B$+BL$+BL$             :REM LOOP 01
  100 OBA$(0)=BL$+BL$+D$+B$+B$+BL$+BL$             :REM LOOP 02
  110 OBA$(0)=BL$+BL$+D$+B$+B$+BL$+BL$             :REM LOOP 03
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
  410 X=1
  430 PRINTTAB(10,10)TBA$(X)

