--Допущение: одна и та же категория у продукта не может повторяться, 
-- т.е. связка Продукт-Категория уникальна; поэтому не требуется отдельный уникальный ключ для таблицы [PRODUCT_TO_CATEGORY].

CREATE TABLE [PRODUCT](
	[ID] int not NULL primary key,
	[NAME] nvarchar(100) not NULL
);

CREATE TABLE [CATEGORY](
	[ID] int not NULL primary key,
	[NAME] nvarchar(100) not NULL
);

CREATE TABLE [PRODUCT_TO_CATEGORY](
	[PRODUCT_ID] int not NULL,
	[CATEGORY_ID] int not NULL
);
ALTER TABLE [PRODUCT_TO_CATEGORY] 
	ADD CONSTRAINT PK_P2C
	PRIMARY KEY ([PRODUCT_ID], [CATEGORY_ID]);
ALTER TABLE [PRODUCT_TO_CATEGORY] 
	ADD CONSTRAINT [FK_P2C_P]
	FOREIGN KEY ([PRODUCT_ID]) REFERENCES [PRODUCT] ([ID]);
ALTER TABLE [PRODUCT_TO_CATEGORY] 
	ADD CONSTRAINT [FK_P2C_C]
	FOREIGN KEY ([CATEGORY_ID]) REFERENCES [CATEGORY] ([ID]);
