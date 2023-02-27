--Ändern hindert Lesen nicht mehr..
--Aktive Momentaufnahmen genrieren eine Version des Originals 
--und kopieren dies in die TemPdb (Vorsicht evtl hohe Last auf tempdb)
--Ein LEser trifft auf diese Version in der Tempdb und kann ohne gesperrt zu werden
--weiter arbeiten und muss nicht auf Commit des Updaters warten
--besser als READ UNCOMMITTED = schmutzige Daten (evtl Rollback)


--Das verhalten als Stndard gesetzt werden (pro DB)


USE [master]
GO
ALTER DATABASE [Northwind] SET READ_COMMITTED_SNAPSHOT ON WITH NO_WAIT
GO

GO
ALTER DATABASE [Northwind] SET ALLOW_SNAPSHOT_ISOLATION ON
GO




select * into bestx from orders


begin tran
update bestx set freight = 1 where orderid = 10250
rollback

select @@trancount

select * from bestx order by 1
