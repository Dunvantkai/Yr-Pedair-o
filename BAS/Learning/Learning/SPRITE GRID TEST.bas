5 CLS
10 DIM SBAH$(3,3,3)
20 SBAH$(0,1,0)="K"
21 SBAH$(0,1,3)="L"
30 FOR X=0 TO 3 : FOR Y=0 TO 3
40 PRINTTAB(X,Y) SBAH$(0,X,Y)
50 NEXT Y
60 NEXT X