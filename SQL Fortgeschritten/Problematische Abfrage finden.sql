--Problematische Abfragen finden


select * from customers where customerid like '%ALFK'


--SEEK -- 	 herauspicken

--SCAN  a bis Z durchlesen



set statistics io, time on
select * from ku where id < 2	   --maxdop   40000  204 / 47 




alter proc gpSucheKunden @kdnr int
as
select * from ku  where  id < @kdnr

exec gpSucheKunden 2	   s		--perfekt-- seek


select * from ku where id < 33434		 --scan passt


exec gpSucheKunden 34345  --immer noch seek.. passt nicht


exec gpSucheKunden 900000--900000 Seiten obwohl nur 40000 in Tabelle -->immer noch seek.. passt nicht

dbcc freeproccache

--neuer Plan wird generiert bei nächsten Aufruf

sp_updatestats


--
--im QueryStore: Abfrage suchen... zeitlicher Verlauf ? Wie hoch war die Dauer .. welcher Plan ist der beste
--kann man nun auch erzwingen






