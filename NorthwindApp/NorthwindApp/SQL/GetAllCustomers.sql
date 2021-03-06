USE [Northwind]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCustomers]    Script Date: 07/21/2013 07:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllCustomers]

@PageIndex SMALLINT,
@PageSize SMALLINT
	
AS
BEGIN
 	
	SET NOCOUNT ON;
	
	DECLARE @FirstRow SMALLINT
	DECLARE @LastRow SMALLINT
	
	SET @FirstRow = @PageIndex * @PageSize 
	SET @LastRow = @FirstRow + @PageSize + 1
    
    SELECT CustomerID, CompanyName, ContactName, ContactTitle, [Address],[City], Country
	FROM
	   (SELECT CustomerID, CompanyName, ContactName, ContactTitle, [Address],[City], Country, 
		   ROW_NUMBER() OVER(ORDER BY CustomerID ASC) AS CustomerRank
		FROM Customers
	   ) AS CustomerRowNumber
	WHERE CustomerRank > @FirstRow AND
		CustomerRank < @LastRow

END
