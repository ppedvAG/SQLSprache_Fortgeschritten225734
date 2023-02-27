SELECT CONVERT(varchar, GETDATE(), 104) AS Datum


SELECT CONVERT(varchar, orderdate, 104)	  from orders

SELECT CONVERT(varchar, orderdate, 102)	  from orders

 --PARSE
-- Verwenden Sie PARSE nur, um eine Zeichenfolge in ein Datum und eine Uhrzeit oder in eine Zahl zu konvertieren. 
--FÜr die allgemeine Typkonvertierungen sollten Sie auch weiterhin 
--CAST oder CONVERT verwenden. Bedenken Sie, 
--dass die Analyse des Zeichenfolgenwerts mit gewissen Leistungseinbussen 
--verbunden ist.

--übersetzt: Wenn Überhaupt, dann ist es auch noch langsamer als die anderen beiden.

--Und:

-- Für PARSE muss die .NET Framework-Common Language Runtime (CLR) vorhanden sein.


Without century (yy) 1	With century (yyyy)	Standard	Input/output 3
-	0 or 100 1, 2	Default for datetime and smalldatetime	mon dd yyyy hh:miAM (or PM)
1	101	U.S.	1 = mm/dd/yy
101 = mm/dd/yyyy
2	102	ANSI	2 = yy.mm.dd
102 = yyyy.mm.dd
3	103	British/French	3 = dd/mm/yy
103 = dd/mm/yyyy
4	104	German	4 = dd.mm.yy
104 = dd.mm.yyyy
5	105	Italian	5 = dd-mm-yy
105 = dd-mm-yyyy
6	106 1	-	6 = dd mon yy
106 = dd mon yyyy
7	107 1	-	7 = Mon dd, yy
107 = Mon dd, yyyy
8 or 24	108	-	hh:mi:ss
-	9 or 109 1, 2	Default + milliseconds	mon dd yyyy hh:mi:ss:mmmAM (or PM)
10	110	USA	10 = mm-dd-yy
110 = mm-dd-yyyy
11	111	JAPAN	11 = yy/mm/dd
111 = yyyy/mm/dd
12	112	ISO	12 = yymmdd
112 = yyyymmdd
-	13 or 113 1, 2	Europe default + milliseconds	dd mon yyyy hh:mi:ss:mmm (24-hour)
14	114	-	hh:mi:ss:mmm (24-hour)
-	20 or 120 2	ODBC canonical	yyyy-mm-dd hh:mi:ss (24-hour)
-	21 or 25 or 121 2	ODBC canonical (with milliseconds) default for time, date, datetime2, and datetimeoffset	yyyy-mm-dd hh:mi:ss.mmm (24-hour)
22	-	U.S.	mm/dd/yy hh:mi:ss AM (or PM)
-	23	ISO8601	yyyy-mm-dd
-	126 4	ISO8601	yyyy-mm-ddThh:mi:ss.mmm (no spaces) 6
-	127 8, 9	ISO8601 with time zone Z	yyyy-MM-ddThh:mm:ss.fffZ (no spaces) 6
-	130 1, 2	Hijri 5	dd mon yyyy hh:mi:ss:mmmAM 7
-	131 2	Hijri 5	dd/mm/yyyy hh:mi:ss:mmmAM