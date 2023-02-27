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


--Xevents -- genaues Nachvollziehen der Statement 
--inkl Zeiten und Wartestatistiken

CREATE EVENT SESSION [OnlyWaits] ON SERVER 
ADD EVENT sqlos.wait_completed(
    ACTION(sqlserver.sql_text)
    WHERE ([sqlserver].[like_i_sql_unicode_string]([sqlserver].[database_name],N'nwindbig')))
WITH (MAX_MEMORY=4096 KB,EVENT_RETENTION_MODE=ALLOW_SINGLE_EVENT_LOSS,MAX_DISPATCH_LATENCY=30 SECONDS,MAX_EVENT_SIZE=0 KB,MEMORY_PARTITION_MODE=NONE,TRACK_CAUSALITY=ON,STARTUP_STATE=OFF)
GO



