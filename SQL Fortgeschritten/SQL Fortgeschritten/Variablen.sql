declare @var as int = 1
set @var = 2

select @var

--Lebenszeit der Variable	  während eines batches
--Sichtbarkeit @var = lokale Variable mur der Ersteller

--globale Variable: SystemInfos
--Variablen sind im Code schlecht vorher einschätzbar
--var Datentypen werden nur zu 50% im Arbeitsspeicher eingeschätzt
--evtl Sort warnings Problem -beim Lesen Schreiben in TempDB



declare @var as int = 1
set @var = 2

select @var

GO

set @var = 3


---globale

declare @@var as int = 1
set @@var = 2

select @@var


select @@connections





CustomerID	 nchar 5


declare @kdid as nchar(5)
set @kdid = 'A'



select * from customers where customerid like   rtrim(@kdid) +'%'


declare @kdid as varchar(150)


--sort warnings



