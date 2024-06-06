
   10 MODE 2
   20 X = 100: Y = 100
   30 REPEAT
   50   K$ = GET$
   60   IF K$ = CHR$(129) THEN X = X - 5
   70   IF K$ = CHR$(131) THEN X = X + 5
   80   IF K$ = CHR$(130) THEN Y = Y - 5
   90   IF K$ = CHR$(132) THEN Y = Y + 5
  110   IF X > 620 THEN X = 620
  120   IF Y < 0 THEN Y = 0
  130   IF Y > 380 THEN Y = 380
  140 UNTIL FALSE
