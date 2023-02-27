							
select * from customers for xml, auto




select '08677-988971'

--letzten 3 Zeichen sollen xxx

select len('08677-988971')	  --kürzt Leerzeichen am Ende
select len('08677-988971     ')
select datalength ('08677-988971     ')--datalenght kürzt nicht 


--> substring -- stuff
--stuff kann Zeichen ab einer best Position für eine best Länge ersetzen
--die Länge der zu ersetzenden Zeichen muss identisch 
--mit der Länge ersetzenden Zeichen sein
select reverse(stuff(ltrim(reverse	('08677-988971     ')),1,3,'x') )
