--Default: read committed
--erst nach Commit lesen
--read uncommmited
--Lesen w�hrend der �nderung (man liest , was gerade ge��ndert wurde, ohne auf Best�tigung zu warten)
----> evtl falsche Daten


set transaction isolation level REPEATABLE READ		   --Lesen hindert Updates aber keine INSERTS
begin tran
select * from bestx

rollback


set transaction isolation level SERIALIZABLE  --Lesen hindert nun auch Updates und! Inserts
begin tran
select * from bestx


