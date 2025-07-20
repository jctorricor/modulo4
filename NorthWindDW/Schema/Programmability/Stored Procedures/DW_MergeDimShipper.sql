CREATE PROCEDURE [dbo].[DW_MergeDimShipper]
AS
BEGIN
	UPDATE ds
	SET [CompanyName] = sc.[CompanyName]
	   ,[Phone]  = sc.[Phone]
	  
	FROM [dbo].[DimShipper]        ds
	INNER JOIN [staging].[Shipper] sp ON (ds.[ShipperSK]=sp.[ShipperSK])
END
GO

  
