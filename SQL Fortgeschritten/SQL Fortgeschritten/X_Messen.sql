---Messen von SQL  Abfragen

set statistics io, time on
--Dauer in ms  CPU in ms   Anzahl der Datenträgerzugriffe

--Pläne

--Messen

--Pläne 
--geschätzter Plan: wie würde ich das tun
--tats Plan kommt nach AUführug und ist Teil der Messung / Abfrage
--LivePlan.. mitverfolgen der laufenden Abfrage (auch im Aktivitätsmonitor)

--Wartezustände


--Messen der Abfrage

set statistics io, time on 	 --im SSMS
--Dauer in ms   CPU in ms  Anzahl der Seiten 

--Ziel: 
--Auffälligkeiten im Plan eliminieren (zb unnnötiges Sortieren Warnsymbole)
-- IO und ms reduzieren
--Warteressourcenfeststellen und optimieren

select * from customers, orders