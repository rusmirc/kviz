1 CLS :                        
COLOR 5, 2
PRINT "                                                                    "
PRINT "                                                                    "
PRINT "                                                                    "
PRINT "                         Dobrodosli u kviz                          "
PRINT "                                                                    "
PRINT "                   ฒฒฒ   ฒฒฒฒ  ฒ   ฒ                                "
PRINT "                   ฒ  ฒ  ฒ     ฒฒ  ฒ                                "
PRINT "                   ฒฒฒ   ฒฒฒ   ฒ ฒ ฒ  ฒฒฒ                           "
PRINT "                   ฒฒ    ฒ     ฒ  ฒฒ  ฒ  ฒ                          "
PRINT "                   ฒ ฒ   ฒฒฒฒ  ฒ   ฒ  ฒ  ฒ                          "
PRINT "                                                                    "
PRINT "                                                                    "
PRINT "                                                                    "
 COLOR 5, 0: LOCATE 15, 26: PRINT "Press any key "
 COLOR 5, 0
3 g$ = INKEY$
 IF g$ = "" THEN 3
 IF g$ = CHR$(27) THEN SYSTEM
CLS
GOSUB 10000
LOCATE 3, 12: PRINT "ษอออออออออออออออออออออออออออออออออออออออออออออออออออป"
LOCATE 4, 12: PRINT "บ                                                   บ"
LOCATE 5, 12: PRINT "บ                                                   บ"
LOCATE 6, 12: PRINT "บ                                                   บ"
LOCATE 7, 12: PRINT "บ                                                   บ"
LOCATE 8, 12: PRINT "ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ"

LOCATE 9, 13:  PRINT "ษอออออออออออออออออออออออออออออออออออออออออออออออออป"
LOCATE 10, 13: PRINT "บ                                                 บ"
LOCATE 11, 13: PRINT "บ                                                 บ"
LOCATE 12, 13: PRINT "บ                                                 บ"
LOCATE 13, 13: PRINT "ศอออออออออออออออออออออออออออออออออออออออออออออออออผ"
    
   COLOR 5, 0


50 b = INT(RND * 11) * 10
51 b = 0

100 LOCATE 5, 13: PRINT "1. Koji je glavni grad Rusije?"
120 LOCATE 10, 15: PRINT "1. Berlin   "
130 LOCATE 10, 35: PRINT "2. Zagreb   "
140 LOCATE 12, 15: PRINT "3. Moskva   "
150 LOCATE 12, 35: PRINT "4. Tokio    "
160 a$ = "3"


170 COLOR 21, 0: LOCATE 15, 26: PRINT "Konacan odgovor (1 - 4): "
COLOR 14, 0
180 g$ = INKEY$
185 IF g$ = "" THEN 180
190 IF g$ = CHR$(27) THEN SYSTEM
195 j = VAL(g$)
196 IF j > 0 AND j = VAL(a$) AND j < 5 THEN GOSUB 2000 ELSE GOSUB 3000


200 LOCATE 5, 13: PRINT "2. Koji je glavni grad Egipta?     "
220 LOCATE 10, 15: PRINT "1. Kairo    "
230 LOCATE 10, 35: PRINT "2. Sidnej   "
240 LOCATE 12, 15: PRINT "3. Moskva   "
250 LOCATE 12, 35: PRINT "4. Sietl    "
260 a$ = "1"

300 COLOR 26, 0: LOCATE 15, 26: PRINT "Konacan odgovor (1 - 4): "
LOCATE 21, 16: PRINT "                                                     "
COLOR 11, 0
380 h$ = INKEY$
385 IF h$ = "" THEN 380
390 IF h$ = CHR$(27) THEN SYSTEM
395 i = VAL(h$)
396 IF i > 0 AND i = VAL(a$) AND i < 5 THEN GOSUB 2000 ELSE GOSUB 3000

400 LOCATE 5, 13: PRINT "3. Koji je glavni grad Alzira?       "
420 LOCATE 10, 15: PRINT "1. Kairo    "
430 LOCATE 10, 35: PRINT "2. Sidnej   "
440 LOCATE 12, 15: PRINT "3. Alzir   "
450 LOCATE 12, 35: PRINT "4. Sietl    "
460 a$ = "3"

700 COLOR 26, 0: LOCATE 15, 26: PRINT "Konacan odgovor (1 - 4): "
LOCATE 21, 16: PRINT "                                                        "
COLOR 11, 0
780 h$ = INKEY$
785 IF h$ = "" THEN 780
790 IF h$ = CHR$(27) THEN SYSTEM
795 i = VAL(h$)
796 IF i > 0 AND i = VAL(a$) AND i < 5 THEN GOSUB 2000 ELSE GOTO 3000

1310 a$ = INKEY$: IF a$ = "" OR a$ = " " THEN 1310
      IF a$ = "x" OR a$ = "X" THEN CLS
   COLOR 4, 0
   LOCATE 17, 23: PRINT "          KVIZ 0.03."
   LOCATE 18, 23: PRINT "       Decembar 2020.god"
   LOCATE 19, 23: PRINT "       < RENN design >"
GOSUB 10100
  IF a$ = CHR$(27) THEN SYSTEM


2000 REM tac
GOSUB 10100
COLOR 2, 0: LOCATE 15, 26: PRINT "    TACAN ODGOVOR!             "
LOCATE 21, 16: PRINT "Stisni <space> za nastavak ili <esc> za zaustavljanje    "
COLOR 5, 0
b = b + 100
IF b = 100 THEN LOCATE 1, 1: PRINT "  1: 200"; b
IF b = 200 THEN LOCATE 2, 1: PRINT "  2: 300"; b
IF b = 300 THEN LOCATE 3, 1: PRINT "  3: 500"; b
COLOR 14, 0
FOR ss = 1 TO 33000: NEXT ss
2310 a$ = INKEY$: IF a$ = "" THEN 2310
RETURN

3000 REM netac
GOSUB 10000
COLOR 4, 0: LOCATE 15, 26: PRINT "   Odgovor nije tacan!          "
LOCATE 20, 15: PRINT "Osvojeni iznos:", b
COLOR 14, 0
FOR dd = 1 TO 33000: NEXT dd
3310 a$ = INKEY$: IF a$ = "" THEN 3310
GOTO 1310

10000 REM muzika za dobitak
      PLAY "l32mlmbcdceg"
      RETURN
10100 REM zvuk
      i = 1
      FOR g = 1 TO 2: z = TIMER: z = z + 510: RANDOMIZE z
	fe = CINT(390 * RND + 100): fe = ABS(fe)
		IF i > 6 THEN i = 1
		SOUND fe, i + 2: FOR tu = 1 TO 10: NEXT tu
      NEXT g: RETURN
END

