CREATE TABLE [dbo].[FactSales]
(
	TransactionDate DATE,
	CustomerID INT,
	NumberOfWidgets INT, 
    CONSTRAINT [FK_FactSales_DimDate] FOREIGN KEY (TransactionDate) REFERENCES DimDate(theDate), 
    CONSTRAINT [FK_FactSales_DimCustomer] FOREIGN KEY (CustomerID) REFERENCES DimCustomer(CustomerID) 
)
