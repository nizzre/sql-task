--Запрос для выбора всех связок Подукт-Категория:

SELECT [P].[NAME], [C].[NAME]
FROM [PRODUCT] [P]
	LEFT JOIN [PRODUCT_TO_CATEGORY] [P2C] ON [P].ID = [P2C].[PRODUCT_ID]
	LEFT JOIN [CATEGORY] [C] ON [C].ID = [P2C].[CATEGORY_ID]
