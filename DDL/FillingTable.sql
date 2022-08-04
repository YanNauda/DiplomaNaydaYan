--=======================================Наполнение таблиц==============================================

--=========================================Наполнение таблиц в схеме row=============================
-- bcp nauda.raw.products in C:\Users\yanna\Desktop\12345.txt -t\t -r\n -w -S 159.224.194.250 -U sa -P rLC9s39J7h
-- bcp nauda.raw.OFFICES in C:\Users\yanna\Desktop\12345.txt -t\t -r\n -w -S 159.224.194.250 -U sa -P rLC9s39J7h
-- bcp nauda.raw.SALESREPS in C:\Users\yanna\Desktop\12345.txt -t\t -r\n -w -S 159.224.194.250 -U sa -P rLC9s39J7h
-- bcp nauda.raw.CUSTOMERS in C:\Users\yanna\Desktop\12345.txt -t\t -r\n -w -S 159.224.194.250 -U sa -P rLC9s39J7h
-- bcp nauda.raw.ORDERS in C:\Users\yanna\Desktop\12345.txt -t\t -r\n -w -S 159.224.194.250 -U sa -P rLC9s39J7h

select * from [Raw].[PRODUCTS]
select * from [Raw].[OFFICES]
select * from [Raw].[SALESREPS]
select * from [Raw].[CUSTOMERS]
select * from [Raw].[ORDERS]


--truncate table [Raw].[salesreps]
--=========================================Наполнение таблиц в схеме Landing=============================
insert into [Nauda].[Landing].[PRODUCTS]
select * 
  from [Nauda].[raw].[PRODUCTS];

insert into [Nauda].[Landing].[OFFICES]
select * 
  from [Nauda].[raw].[OFFICES];

insert into [Nauda].[Landing].[SALESREPS]
select * 
  from [Nauda].[raw].[SALESREPS];

insert into [Nauda].[Landing].[CUSTOMERS]
select * 
  from [Nauda].[raw].[CUSTOMERS];

insert into [Nauda].[Landing].[ORDERS]
select * 
  from [Nauda].[raw].[ORDERS];


select * from [Landing].[PRODUCTS]
select * from [Landing].[OFFICES]
select * from [Landing].[SALESREPS]
select * from [Landing].[CUSTOMERS]
select * from [Landing].[ORDERS]


--=========================================Наполнение таблиц в схеме TARGET=============================

insert into [Nauda].[TARGET].[PRODUCTS]
select * 
  from [Nauda].[Landing].[PRODUCTS];

insert into [Nauda].[TARGET].[OFFICES]
select * 
  from [Nauda].[Landing].[OFFICES];

insert into [Nauda].[TARGET].[SALESREPS]
select * 
  from [Nauda].[Landing].[SALESREPS];

insert into [Nauda].[TARGET].[CUSTOMERS]
select * 
  from [Nauda].[Landing].[CUSTOMERS];

insert into [Nauda].[TARGET].[ORDERS]
select * 
  from [Nauda].[Landing].[ORDERS];



select * from [TARGET].[PRODUCTS]
select * from [TARGET].[OFFICES]
select * from [TARGET].[SALESREPS]
select * from [TARGET].[CUSTOMERS]
select * from [TARGET].[ORDERS]


ALTER TABLE [TARGET].[OFFICES]
NOCHECK CONSTRAINT mgr_fk;

-- Activate a foreign key
ALTER TABLE [TARGET].[OFFICES]
CHECK CONSTRAINT mgr_fk;