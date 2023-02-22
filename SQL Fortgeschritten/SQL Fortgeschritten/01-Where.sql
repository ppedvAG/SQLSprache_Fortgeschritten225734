							 use northwind;
GO


select top 3 * from customers

--Alle Kunden die mit A beginnen

select * from customers where companyname like 'A%'

-- % 0 bis ewig viele Zeichen

select * from customers where companyname like '%A%'


--alle die mit A B oder C beginnen

  select * from customers
	where 
		companyname like 'A%'
		OR
		companyname like 'B%'
		OR
		companyname like 'C%'

--zu lang ;-)

--Idee ;-)
	
select 	 * from customers 
			where companyname in ('A%', 'B%, C%')

--bei in:: keine Vergelich mir like sondern mit = 
---bei = ...keine Wildcard mehr

select * from customers where companyname < 'D'
--zwar richtig, könnte aber falsch sein
--beginnend mit 1	 zb


select * from customers 
	where companyname between 'A' and 'C'	 --falsch


select * from customers 
	where companyname between 'A' and 'D'	--zufällig korrekt

--alle mit % im Namen
select * from customers where companyname like '%%%'--= '%'

 --alle Zeilen von Order details
 select * from [Order details]

---[] Wertebereiche	   steht für genau 1 Zeichen
 select * from customers where companyname like '%[%]%'


 select * from customers where companyname like '[A-C]%'

 --alle die mit CDE beginnen .. ein XYZ im Namen haben  und mit einem Vokal enden

 select * from customers where companyname like '[C-E]%[XYZ]%[AEIOU]'

 --

 ---welche PINS	  sind falsch
 -- where pin not like '[0-9][0-9][0-9][0-9]
 --[0-9|a-z]


-- Firmen , die haben ein ' im Namen haben

 select * from customers where companyname like '%''%'


 ---das vorletzte Zeichen im Namen muss ein Y sein

  select * from customers where companyname like '%y_'


  --alle Kunden, die in den USA wohnen und contctTitle Owner besitzen oder mit M beginnen
  --bei AND und OR immer Klammern... sonst AND stärker bindend
  select * from customers 
			where 
			country = 'USA' and (Contacttitle = 'Owner' or Companyname like 'M%')







