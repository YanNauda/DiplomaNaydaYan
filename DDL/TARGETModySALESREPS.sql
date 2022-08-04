 ---=======================Задача № 4.Модификация таблицы SALESREPS в схеме TARGET ================= 
/*Модификация таблицы служащие
Добавляется внешний ключ (Идентификатор менеджера данного служащего) 
ссылается на таблицу служащие (Идентификатор служащего).*/

alter table [TARGET].[SALESREPS]
	add constraint manager_fk foreign key([МANAGER]) references  [TARGET].[SALESREPS] ([EMPL_NUМ]);