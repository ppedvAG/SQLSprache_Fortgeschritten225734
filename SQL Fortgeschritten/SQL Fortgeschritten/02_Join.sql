						 --JOIN

--LEFT RIGHT INNER CROSS	 FULL
--MERGE LOOP HASH

 select * from tabelle t1 inner|left|right tabelle2 t2 on t1.spx = t2.spx
						  inner|left|right tabelle3 t3 on t2.spy = t3.spy
						  ....

--inner join : alle identische Werte aus beiden Seiten verknüpfen
select c.*, o.orderid from Customers C 
							inner join Orders O				on c.customerid = o.customerid
							inner join [order details] od	on od.orderid	= o.orderid

--alle Kunden, die nichts kauften
select c.* from customers c 
						left join orders o on c.customerid = o.customerid
		 where 
						o.orderid is null

--alternative
select * from customers where customerid in (
select customerid from customers
except 
select customerid from orders	 ) 


select * from customers 
where 
		customerid not in (select customerid from orders)  #



select * from employees

--ANG Name und Vorname  STADT  STV   STADT

select 
		e1.lastname, e1.firstname, e1.city, 
		e2.city, e2.lastname, e2.firstname
from 
		employees e1 inner join employees e2 
						on 
							e1.city		 = e2.city   
						   AND
						    e1.employeeid != e2.employeeid							

order by 
		e1.lastname




		---
--alle Kunden, die nichts kauften
select c.* from 
		customers c left join orders o on c.customerid = o.customerid
		 where 
						o.orderid is null


 select c.* from 
		 orders o  right join customers c on c.customerid = o.customerid
		 where 
						o.orderid is null


   select c.* from 
		 orders o  full join customers c on c.customerid = o.customerid
		 where 
						o.orderid is null

   
   select *  from 
		 orders o  cross join customers c

		 select 91*830*2155


select * from customers c, orders	 o
where o.customerid= c.customerid


select * from customers c 
					inner	 join orders o on c.customerid = o.customerid


select * from customers c 
					inner loop	 join orders o on c.customerid = o.customerid



select * from customers c 
					inner hash	 join orders o on c.customerid = o.customerid


