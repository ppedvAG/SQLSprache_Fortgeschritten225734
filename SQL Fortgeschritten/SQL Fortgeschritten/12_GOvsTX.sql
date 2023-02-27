create table test5 ( id int identity, spx char(4100));
GO


--Test1
insert into test5
select 'XY'
Go 20000


--Test2
declare @i  as int = 1

while @i <= 20000
	begin
		insert into test5 select 'XY'
		set @i+=1 ---set @i=@i+1
	end

--Test3

declare @i  as int = 1

begin tran
while @i <= 20000
	begin
		insert into test5 select 'XY'
		set @i+=1 ---set @i=@i+1
	end
commit











