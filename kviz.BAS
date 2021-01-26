1 CLS :                     
COLOR 5, 2
PRINT "                                                                    "
PRINT "                                                                    "
PRINT "                                                                    "
PRINT "                     Dobrodosli u kviz !                            "
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
    
   COLOR 14, 0


50 b = INT(RND * 11) * 10
51 b = 0

100 LOCATE 5, 13: PRINT "1. Koji je glavni grad Rusije?"
120 LOCATE 10, 15: PRINT "1. Berlin   "
130 LOCATE 10, 35: PRINT "2. Zagreb   "
140 LOCATE 12, 15: PRINT "3. Moskva   "
150 LOCATE 12, 35: PRINT "4. Tokio    "
160 a$ = "3"
165 GOSUB 1500



200 LOCATE 5, 13: PRINT "2. Koji je glavni grad Egipta?     "
220 LOCATE 10, 15: PRINT "1. Kairo    "
230 LOCATE 10, 35: PRINT "2. Sarajevo   "
240 LOCATE 12, 15: PRINT "3. Moskva   "
250 LOCATE 12, 35: PRINT "4. Sietl    "
260 a$ = "1"
GOSUB 1500



400 LOCATE 5, 13: PRINT "3. Koji je glavni grad Alzira?       "
420 LOCATE 10, 15: PRINT "1. Kairo    "
430 LOCATE 10, 35: PRINT "2. Alzir    "
440 LOCATE 12, 15: PRINT "3. Sidnej   "
450 LOCATE 12, 35: PRINT "4. Beograd    "
460 a$ = "2"
GOSUB 1500

490 LOCATE 5, 13: PRINT "Koji je glavni grad Kine?                  "
500 LOCATE 10, 15: PRINT "1.  Hong Kong   "
510 LOCATE 10, 35: PRINT "2.  Peking      "
520 LOCATE 12, 15: PRINT "3.  Tokio       "
530 LOCATE 12, 35: PRINT "4.  Singapur    "
540 a$ = "2"
GOSUB 1500

590 LOCATE 5, 13: PRINT "Koji je glavni grad Argentine?               "
600 LOCATE 10, 15: PRINT "1. Buenos Aries          "
610 LOCATE 10, 35: PRINT "2. Brazilija             "
620 LOCATE 12, 15: PRINT "3. San Diego             "
630 LOCATE 12, 35: PRINT "4. Sao Paulo             "
640 a$ = "1"
GOSUB 1500

650 LOCATE 5, 13: PRINT "Kroz koji grad tece rijeka Temza             "
653 LOCATE 10, 15: PRINT "1. Berlin                "
656 LOCATE 10, 35: PRINT "2. London                "
657 LOCATE 12, 15: PRINT "3. Pariz                 "
658 LOCATE 12, 35: PRINT "4. Budinpesta            "
659 a$ = "2"
GOSUB 1500

670 LOCATE 5, 13: PRINT "Koja je drzava sa najvisom            "
671 LOCATE 6, 13: PRINT "     nadmorsom visinom?              "
672 LOCATE 10, 15: PRINT "1. Andora                    "
674 LOCATE 10, 35: PRINT "2. Nepal                     "
676 LOCATE 12, 15: PRINT "3. Svicarska                 "
682 LOCATE 12, 35: PRINT "4. Norveska           "
684 a$ = "1"
GOSUB 1500

1310 a$ = INKEY$: IF a$ = "" OR a$ = " " THEN 1310
      IF a$ = "x" OR a$ = "X" THEN CLS
   COLOR 4, 0
   LOCATE 17, 23: PRINT "          KVIZ 0.03."
   LOCATE 18, 23: PRINT "       Decembar 2020.god  "
   LOCATE 19, 23: PRINT "       < RENN design >"
GOSUB 10100
  IF a$ = CHR$(27) THEN SYSTEM

1500 REM pitanje
1510 COLOR 26, 0: LOCATE 15, 26: PRINT "Konacan odgovor (1 - 4): "
1512 COLOR 11, 0: LOCATE 18, 26: PRINT "Djoker POLA/POLA (Q)"
LOCATE 21, 16: PRINT "                                                        "
COLOR 11, 0
1580 h$ = INKEY$
1585 IF h$ = "" THEN 1580
1590 IF h$ = CHR$(27) THEN SYSTEM
1595 i = VAL(h$)
IF h$ = CHR$(81) THEN GOTO 1700 ELSE GOTO 1596
1596 IF i > 0 AND i = VAL(a$) AND i < 5 THEN GOSUB 2000 ELSE GOTO 3000
RETURN

1700 REM djok
1712 COLOR 11, 0: LOCATE 18, 26: PRINT "                    "
IF VAL(a$) < 3 THEN
LOCATE 12, 14: PRINT "                                             "
ELSE
LOCATE 10, 14: PRINT "                                             "
END IF
GOTO 1580


2000 REM tac
GOSUB 10100
COLOR 2, 0: LOCATE 15, 26: PRINT "    TACAN ODGOVOR!             "
LOCATE 18, 26: PRINT "                                     "
LOCATE 21, 16: PRINT "Stisni <space> za nastavak ili <esc> za zaustavljanje    "
COLOR 5, 0
b = b + 100
IF b = 100 THEN LOCATE 1, 1: PRINT "  1: 100  ";
IF b = 200 THEN LOCATE 2, 1: PRINT "  2: 200  ";
IF b = 300 THEN LOCATE 3, 1: PRINT "  3: 300  ";
IF b = 400 THEN LOCATE 4, 1: PRINT "  4: 500  ";
IF b = 500 THEN LOCATE 5, 1: PRINT "  5: 1000 ";
IF b = 600 THEN LOCATE 6, 1: PRINT "  6: 2000 ";
IF b = 700 THEN LOCATE 7, 1: PRINT "  7: 4000 ";
IF b = 800 THEN LOCATE 8, 1: PRINT "  8, 8000 ";
IF b = 900 THEN LOCATE 9, 1: PRINT "  9, 16000";
IF b = 1000 THEN LOCATE 10, 1: PRINT "10, 32000";
IF b = 1100 THEN LOCATE 11, 1: PRINT "11, 64000";
IF b = 1200 THEN LOCATE 12, 1: PRINT "12, 125000";
IF b = 1300 THEN LOCATE 13, 1: PRINT "13, 250000";
IF b = 1400 THEN LOCATE 14, 1: PRINT "14, 500000";
IF b = 1500 THEN LOCATE 15, 1: PRINT "15, 1000000";

COLOR 14, 0
FOR ss = 1 TO 33000: NEXT ss
2310 c$ = INKEY$: IF c$ = "" THEN 2310
RETURN

3000 REM netac
GOSUB 10000
COLOR 4, 0: LOCATE 15, 26: PRINT "   Odgovor nije tacan!          "
LOCATE 18, 26: PRINT "                            "
LOCATE 20, 15: PRINT "Osvojeni iznos:", b
COLOR 14, 0
FOR dd = 1 TO 33000: NEXT dd
3310 v$ = INKEY$: IF v$ = "" THEN 3310
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

