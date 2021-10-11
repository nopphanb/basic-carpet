10 ' * flying carpet *
20 CLS : KEY OFF: SCREEN 1
30 acc = 8: wd = 8: th = 45
40 th = 3.1415926# * th / 180
50 FOR y = -50 TO 50 STEP wd
60 x = -100: GOSUB 200: GOSUB 210: PSET (x1, y1), 1
70 FOR x = -100 TO 100 STEP acc
80 GOSUB 200: GOSUB 210
90 LINE -(x1, y1), 1
100 NEXT x
110 NEXT y
120 FOR x = -100 TO 100 STEP wd
130 y = -50: GOSUB 200: GOSUB 210: PSET (x1, y1), 1
140 FOR y = -50 TO 50 STEP acc
150 GOSUB 200: GOSUB 210
160 LINE -(x1, y1), 1
170 NEXT y
180 NEXT x
190 BEEP: LOCATE 22, 13, 0: PRINT "Flying Carpet": END
200 z = 3 * SIN(x / 8) + 8 * COS(y / 15): RETURN
210 x1 = x + y * COS(th): y1 = z + y * SIN(th)
220 x1 = INT(x1) + 160: y1 = 100 - INT(y1): RETURN
230 x1 = x + y * COS(th): y1 = z + y * SIN(th)
240 x1 = INT(x1) + 160: y1 = 100 - INT(y1): RETURN

