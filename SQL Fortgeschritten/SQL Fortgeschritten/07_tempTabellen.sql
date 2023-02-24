-- #tabelle   ##tabelle
--lokale       globale 


--Lebensdauer
--bis die Session beendet wird
--oder sie gel�scht wird
--lokale : G�ltigkeit nur in der Erstellersession

--globale: existiert nur solange bis... Session geschlossen wird oder gel�scht

--proc #proc
-- drop table #t
--jetzt mit #tabellen
select top 1 * from orders order by freight desc
UNION
select top 1 * from orders order by freight asc


select top 1 * into #t  from  orders  order by freight desc
select top 1 * into #t2 from orders order by freight asc


select * from #t
union all
select * from #t2



--Anzahl der Kunden pro Stadt und Land	    aus customers
select country, city, count(*) from customers
group by   country, city order by 1,2	--69

select country, city, count(*) from customers
group by   country, city with rollup	  --91
order by 1,2


--Ergebnis in temp Tabelle schreiben
--und dann diese (ohne weitere Berechnungen machen zu m�ssen ) abfragen
select country, city, count(*) from customers
group by   country, city with cube			--160
order by 1,2

--und das Resultat in #zt wegschreiben  und darauf sp�ter immer abfragen
















select * into #t from customers where city = 'Graz'

select * from #t


select * into ##t from customers where city = 'Graz'
select * from ##t

