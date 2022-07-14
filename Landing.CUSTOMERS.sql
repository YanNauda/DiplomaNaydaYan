---=======================Задача № 4. Создание таблицы CUSTOMERS в схеме Landing ================= 
	
 create table [Landing].[CUSTOMERS] (
[CUST_NUМ]    int ,              -- Идентфикатор клиента  
[COMPANY]     nvarchar(20) ,     -- Наименование клиента  
[CUST_REP]    int ,              -- Закрепленный служащий 
[CREDITLIMIT] numeric(9,2)       -- Лимит кредитиа       
   );