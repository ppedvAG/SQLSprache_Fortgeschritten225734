						--replace

select 	phone from customers





select 
	replace (
		replace 
			(
			replace 
					(
				replace (
					   replace(
								phone,
								'(','')	,
								')','')	,
								 '-',''),
						  		 '.','') ,
								 ' ','')   , phone
				
from customers

 --oder 
select replace(
				translate(phone, '()-.','    ')
				,' ','') from customers