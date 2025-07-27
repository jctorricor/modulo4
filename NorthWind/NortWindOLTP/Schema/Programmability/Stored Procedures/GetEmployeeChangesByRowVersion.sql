CREATE PROCEDURE [dbo].[GetEmployeeChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT E.[EmployeeID]
      ,E.[LastName]
      ,E.[FirstName]
      ,E.[Title]
      ,E.[TitleOfCourtesy]
      ,E.[BirthDate]
      ,E.[HireDate]
      ,E.[Address]
      ,E.[City]
      ,E.[Region]
      ,E.[PostalCode]
      ,E.[Country]
      ,E.[HomePhone]
      ,E.[Extension]
      ,E.[Photo]
      ,E.[Notes]
      ,E.[ReportsTo]
      ,E.[PhotoPath]
      ,E.[rowversion]
      ,T.TerritoryDescription
      ,R.RegionDescription
  FROM [NorthWind].[dbo].[Employees] E
  INNER JOIN EmployeeTerritories ET ON ET.EmployeeID = E.EmployeeID
  INNER JOIN Territories T ON T.TerritoryID = ET.TerritoryID
  INNER JOIN Region R ON R.RegionID = T.RegionID
    WHERE (E.[rowversion] > CONVERT(ROWVERSION,@startRow) 
	    AND E.[rowversion] <= CONVERT(ROWVERSION,@endRow))
    OR (ET.[rowversion] > CONVERT(ROWVERSION,@startRow) 
	    AND ET.[rowversion] <= CONVERT(ROWVERSION,@endRow))
    OR (T.[rowversion] > CONVERT(ROWVERSION,@startRow) 
	    AND T.[rowversion] <= CONVERT(ROWVERSION,@endRow))
    OR (R.[rowversion] > CONVERT(ROWVERSION,@startRow) 
	    AND R.[rowversion] <= CONVERT(ROWVERSION,@endRow))

END
GO