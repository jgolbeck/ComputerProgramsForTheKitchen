100 REM *** WEIGHT CONVERSION PROGRAM ***
110 HOME : VTAB 5 : T$ = "WEIGHT CONVERSION PROGRAM" : GOSUB 1040
120 VTAB 8 : T$ = "CONVERT POUNDS & OUNCES TO REAL NUMBERS"
130 GOSUB 1040 : PRINT
140 INPUT "ENTER POUNDS A COMMA (,) & OUNCES & PRESS RETURN "; L$, OZ$
150 GOSUB 1000
160 T$ = "THE DECIMAL VALUE OF THE ABOVE WEIGHT IS " + STR$ (WT)
170 VTAB 12: GOSUB 1040
180 VTAB 20 : T$ = "PRESS 'RETURN' TO CONTINUE" : GOSUB 1040
190 HTAB 21: GET A$ : IF A$ <> CHR$ (13) GOTO 190
200 HOME : VTAB 5 : T$ = "WEIGHT CONVERSION PROGRAM" : GOSUB 1040
210 VTAB 9 : T$ = "CONVERT REAL NUMBERS TO POUNDS & OUNCES"
220 GOSUB 1040: PRINT
230 INPUT "ENTER NUMBER TO CONVERT & PRESS 'RETURN'"; WT
240 GOSUB 1010
250 T$ = L$ + " POUNDS " + OZ$ + " OUNCES" : GOSUB 1040
260 VTAB 20 : T$ = "PRESS RETURN TO CONTINUE" : GOSUB 1040
270 HTAB 21: GET A$ : IF A$ <> CHR$ (13) GOTO 270
280 GOTO110
290 END
999 REM BEGIN SUBROUTINES
1000 WT	 = VAL (L$) + VAL (OZ$) * 0.625 : RETURN
1010 L$ = RIGHT$ (" " + STR$ ( INT (WT)),3)
1020 OZ$ = RIGHT$ (" " + STR$ ( INT (WT)),3)
1030  RETURN
1040 HTAB ((40- LEN(T$)) / 2 + 1)
1050 PRINT T$
1060 RETURN
