---=======================Задача № 1. Создание таблицы PRODUCTS в схеме RouNayda  =================

  create table [RouNayda].[PRODUCTS] (
[MFR_ID]                 char(3),          -- Идентификатор производителя 
[PRODUCT_ID]             char(5),          -- Идентификатор товара
[DESCRIPTION]            nvarchar(50),     -- Описание товара 
[PRICE]                  numeric(9,2),     -- Цена товара
[QTY_ON_HAND]            int,              -- Количество на складе
  );
