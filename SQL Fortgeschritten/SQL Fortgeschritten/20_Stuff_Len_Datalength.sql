							
select * from customers for xml, auto




select '08677-988971'

--letzten 3 Zeichen sollen xxx

select len('08677-988971')	  --k�rzt Leerzeichen am Ende
select len('08677-988971     ')
select datalength ('08677-988971     ')--datalenght k�rzt nicht 


--> substring -- stuff
--stuff kann Zeichen ab einer best Position f�r eine best L�nge ersetzen
--die L�nge der zu ersetzenden Zeichen muss identisch 
--mit der L�nge ersetzenden Zeichen sein
select reverse(stuff(ltrim(reverse	('08677-988971     ')),1,3,'x') )
