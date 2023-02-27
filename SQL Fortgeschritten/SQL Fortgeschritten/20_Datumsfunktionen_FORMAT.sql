---Datumsoperationen




--Rückgabe von Montag bs SOnntag oder Jannuar bis Dezember
select datename(dw, getdate())		--24


 DECLARE @d DATE = getdate();
SELECT FORMAT( @d, 'd', 'en-US' ) 'US English'  
      ,FORMAT( @d, 'd', 'en-gb' ) 'British English'  
      ,FORMAT( @d, 'd', 'de-de' ) 'German'  
      ,FORMAT( @d, 'd', 'zh-cn' ) 'Chinese Simplified (PRC)';  
  
SELECT FORMAT( @d, 'D', 'en-US' ) 'US English'  
      ,FORMAT( @d, 'D', 'en-gb' ) 'British English'  
      ,FORMAT( @d, 'D', 'de-de' ) 'German'  

      ,FORMAT( @d, 'D', 'zh-cn' ) 'Chinese Simplified (PRC)';



DECLARE @d DATE = GETDATE();  
SELECT FORMAT( @d, 'dd/MM/yyyy', 'en-US' ) AS 'Date'  
       ,FORMAT(123456789,'###-##-####') AS 'Custom Number';

SELECT TOP(5) freight  		--C = Currency
            ,FORMAT(freight, 'N', 'en-us') AS 'Numeric Format'  
            ,FORMAT(freight, 'G', 'en-us') AS 'General Format'  
            ,FORMAT(freight, 'C', 'en-us') AS 'Currency Format'  
			,FORMAT(freight, 'C', 'de-de') AS 'Currency Format'  
FROM orders  


