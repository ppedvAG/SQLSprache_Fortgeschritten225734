--Sichten Views sind gemerkte Abfrage

--Idee der Sicht.. praktisch bei:
---komplexere Abfragen

--verhalten sich wie Tabellen  und haben keine Daten
--SELECT INS UP DEL  ISN geht nur wenn kein JOIN und alle Pflichtfelder in der Sicht sind
--Sichten können Rechte haben
--wg Rechte!

--Sicht nicht zweckentfremden


create view viewname
as
Abfrage	 (Select...)

create view viewdemo1
as
select * from customers

select * from viewdemo1



create or alter  view DummeKunden
as
select c.* from customers c 
						left join orders o on c.customerid = o.customerid
		 where 
						o.orderid is null
 
select * from Dummekunden

--Sicht vKundeUmsatz


---Kunden: Customerid, companyname, country, city
--Orders orderdate, freight
--order details : orderid, productid, quantity, unitprice
--products productname, unitsinStock
--employees : lastname , firstname


create view vKundeUmsatz
as
select 
		 c.customerid, c.companyname, c.country, c.city		 --Kundezeug
		,o.orderdate, o.freight								 --Bestllkopf
		,od.orderid, od.productid, od.unitprice, od.quantity --Postitionskram
		,p.productname, p.UnitsInStock					     --Produktinfo
		,e.lastname, e.firstname							 --verchecker
		,(od.unitprice * od.quantity) as PosSumme
from customers c
		inner join orders o				on c.customerid = o.customerid
		inner join employees e			on e.employeeid = o.employeeid
		inner join [order details] od	on od.orderid	= o.orderid
		inner join products p			on p.productid	= od.productid


select * from vKundeUmsatz

--Alle Kunden in Deutschland

select distinct customerid from vKundeumsatz where country = 'Germany'

 select  customerid from customers where country = 'Germany'

 ---Probleme bei Sichten

 create table slf (id int, stadt int, land int)

 insert into slf
 select 1,10,100
 UNION ALL
 select 2,20,200
 UNION ALL
 select 3,30,300


 create view vslf
 as
 select * from slf

  select * from vslf

  alter table slf add fluss int
  update slf set fluss = id*1000

  select * from slf

  select * from vslf

  alter table slf drop column land
--jetzt  besser
 drop table slf
 create table slf (id int, stadt int, land int)

 insert into slf
 select 1,10,100
 UNION ALL
 select 2,20,200
 UNION ALL
 select 3,30,300


 create or alter view vslf with schemabinding
 as
 select id, stadt, land from dbo.slf

  select * from vslf

  alter table slf add fluss int
  update slf set fluss = id*1000

  select * from slf

  select * from vslf

  alter table slf drop column land


  /*
	view generieren

select * from sys.tables
select name from sys.columns  where object_id= object_id('customers')



SELECT STRING_AGG(CONVERT(NVARCHAR(max), ISNULL(FirstName,'N/A')), ',') AS csv 
FROM dbo.Employees;


  */

  declare @spalten as nvarchar(1000)

  select @spalten=string_Agg( name, ',') from sys.columns
  where object_id=object_id('customers')

  select @spalten

  declare @sqltext as nvarchar(max)

  set @sqltext= 'create view vdemoxy as select ' + @spalten + ' from customers'

  select @sqltext

create or alter proc gpGenView @Sichtname nvarchar(50), @Tabname nvarchar(50)
as
declare @spalten as nvarchar(1000)

select @spalten=string_Agg( name, ',') from sys.columns
			where object_id=object_id(@tabname)
select @spalten
declare @sqltext as nvarchar(max)

set @sqltext= 'create view ' + @Sichtname  + ' as select ' + @spalten + ' from ' + @Tabname

select  @sqltext

 exec gpGenView 'vCustomers', 'customers'

 create view vCustomers 
 as
 select CustomerID,CompanyName,ContactName,ContactTitle,Address,City,Region,PostalCode,Country,Phone,Fax 
 from customers















