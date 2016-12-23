CREATE TABLE [dbo].[DimDate]
(
	[theDate] DATE PRIMARY KEY,
	[Day]        AS DATEPART(DAY,[theDate]),
	[Month]      AS DATEPART(MONTH,[theDate]),
	[Year]		 AS DATEPART(YEAR, [theDate])	
)
