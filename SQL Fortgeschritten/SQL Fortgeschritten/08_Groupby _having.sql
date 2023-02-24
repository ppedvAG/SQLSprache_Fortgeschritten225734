--Logischer Fluss


select  country as Land, count(*) from customers
where city = 'berlin'
group by country having count(*) >2
order by country



select  country as Land, count(*) from customers
where city = 'berlin'
group by country having count(*) >2
order by Land


select  country as Land, count(*) from customers
where land = 'USA'
group by country having count(*) >2
order by Land



select  country as Land, count(*) as ANZ from customers	    c
where ANZ >2
group by country having count(*) >2
order by anz



---> FROM	(ALIAS)---> where --> group by --> AGG -->  HAVING  --> select (math/f()/Alias)
--> order by --> top distinct---> ausgabe

 
select  country as Land, count(*) from customers
where country = 'USA'
group by country having count(*) >2
order by Land


--bescheuert
 
select  country as Land, count(*) from customers
--where country = 'USA'
group by country having country = 'USA'
order by Land


--durchsch Frachtkoste (freight) in orders pro Kunde (customerid)
--nur die avg(freight) > 500


select customerid, avg(freight) from orders
group by customerid	 having avg(freight) > 100

select customerid, avg(freight) from orders
where (select avg(freight) from orders) > 100
group by customerid

--Wie hoch ist der Umsatz pro Kunde  (companyname)

set statistics io, time on

--join
select companyname, sum(unitprice*quantity) 
	from 
			customers c inner join orders o				on c.customerid = o.customerid
						inner join [order details] od	on od.orderid = o.orderid
group by companyname

--view
select companyname, sum(possumme)  from vkundeumsatz
group by companyname

--f()
select companyname, sum(RngSumme) 
	from 
			customers c inner join orders o	on c.customerid = o.customerid
group by companyname


--max Frachtkosten pro ang
select employeeid , max(freight) from orders group by employeeid

--was ist der druschnitt der maax kosten
select avg(maxFracht) from 
( select employeeid , max(freight) maxFracht from orders group by employeeid  ) T	  

--	#t



;with cte (angid, maxFr)
as
(
 select employeeid , max(freight) maxFracht from orders group by employeeid
)
select avg(maxFr) from cte


select employeeid , reportsto from employees

 with cte (sp1 , sp2)
 as
 (
 Anker  
 UNION ALL
 select ... tab inner join cte tab.sp1 = cte.sp2
 )
 select * from cte


 with cteang 
 as
 (
 select lastname , employeeid , 1 as Ebene from employees  where reportsto is null
 UNION ALL
 select e1.lastname, e1.employeeid , ebene +1 from employees e1 inner join cteang ct on e1.reportsto = ct.employeeid
 )
 select * from cteang  order by ebene, lastname

























