---Messen von SQL  Abfragen

set statistics io, time on
--Dauer in ms  CPU in ms   Anzahl der Datentr�gerzugriffe

--Pl�ne

--Messen

--Pl�ne 
--gesch�tzter Plan: wie w�rde ich das tun
--tats Plan kommt nach AUf�hrug und ist Teil der Messung / Abfrage
--LivePlan.. mitverfolgen der laufenden Abfrage (auch im Aktivit�tsmonitor)

--Wartezust�nde


--Messen der Abfrage

set statistics io, time on 	 --im SSMS
--Dauer in ms   CPU in ms  Anzahl der Seiten 

--Ziel: 
--Auff�lligkeiten im Plan eliminieren (zb unnn�tiges Sortieren Warnsymbole)
-- IO und ms reduzieren
--Warteressourcenfeststellen und optimieren

select * from customers, orders