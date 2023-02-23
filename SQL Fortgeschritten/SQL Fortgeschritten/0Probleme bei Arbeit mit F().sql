
 /* 
 Funktionen werden nicht parallelisiert
 führen im where zu Scans
 keine Verwendung von #t tabellen in Funkionen

 aber mordspraktisch

 select f(Spalte), f(wert) from f() 
 where 
		f(Spalte) <>=... f(wert|Spalte)

 */


 select * from orders--aus dem Jahr 1997

 --408
 select * from orders 
	where orderdate between convert(date, '1997-01-01') 
						and convert(date, '1997-12-31')
 
 select * from orders where  year(orderdate) = 1997
 select * from orders 
		where  orderdate between '1.1.1997' and
								  '31.12.1997 23:59:59.999'
order by 4 desc



--Employees
--alle Ang im Rentenalter  =< 65
 
select lastname, birthdate from employees
		 where birthdate <= dateadd (yy, -65, getdate())


select lastname, birthdate from employees
		 where datediff(yy, birthdate, getdate()) >= 65



								  
 select * from orders 
				where datepart(yy, orderdate) = 1997


select * from orders 
		where  orderdate between '1.1.1997' and
								 '31.12.1997   '


select * from customrs where companyname like 'A%'
select * from customrs where left(companyname,1) = 'A' 			 
--Umsatz des Kunden


create or alter function fRngSumme(@BestNr int) 
returns money
as
begin 

return (
		select sum(unitprice*quantity) from [order details]
		where orderid = @bestNr	 
	    )
 end;
 GO

select dbo.fRngSumme(10250) RngSumme

select c.* ,  dbo.fRngSumme(o.orderid)
from customers c inner join orders o on c.customerid = o.customerid

--tats Plan zeigt bei SQL 2017 und früher die Order details nicht an
--Kompabilitätsgrad
--als zusätzliche Spalte

alter table orders add RngSumme as dbo.fRngsumme(orderid)

select * from orders  where rngsumme < 400
