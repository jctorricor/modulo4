CREATE PROCEDURE [dbo].[GetProductChangesByRowVersion]
	@startRow BIGINT 
   ,@endRow  BIGINT 
AS
BEGIN
	SELECT p.[ProductID]
      ,p.[ProductName]
      ,p.[SupplierID]
      ,p.[CategoryID]
      ,c.[CategoryName]
      ,c.[Description]
      ,s.[CompanyName]
      ,s.[ContactName]
      ,s.[ContactTitle]
      ,s.[Address]
      ,s.[City]
      ,s.[Region]
      ,s.[PostalCode]
      ,s.[Country]
      ,s.[Phone]
      ,s.[Fax]
      ,s.[HomePage]
      ,[QuantityPerUnit]
      ,[UnitPrice]
      ,[UnitsInStock]
      ,[UnitsOnOrder]
      ,[ReorderLevel]
      ,[Discontinued]
	FROM [dbo].[Products] as p
    INNER JOIN [dbo].[Categories] c ON p.CategoryID = c.CategoryID
    INNER JOIN [dbo].[Suppliers] s ON p.SupplierID = s.SupplierID
	WHERE p.[rowversion] > CONVERT(ROWVERSION,@startRow) 
	AND p.[rowversion] <= CONVERT(ROWVERSION,@endRow)
    OR (c.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND c.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (s.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND s.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
GO