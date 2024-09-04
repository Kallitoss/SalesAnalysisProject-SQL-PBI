--Cleansed Dim_Customer Table

SELECT 
       c.CustomerKey AS CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
       c.FirstName AS [First Name],
      --,[MiddleName]
      c.LastName AS [Last Name],
	  c.FirstName + ' ' + LastName AS [Full Name],
     -- ,[NameStyle]
     -- ,[BirthDate]
     -- ,[MaritalStatus]
     -- ,[Suffix]
      case c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
     -- ,[EnglishEducation]
     -- ,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
     -- ,[SpanishOccupation]
      --,[FrenchOccupation]
     -- ,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
     -- ,[Phone]
      c.DateFirstPurchase  AS DateFirstPurchase, --Joined in CustomerCity from Geography table
     -- ,[CommuteDistance]
	 g.city AS [CustomerCity]
	 FROM DimCustomer AS c
	 LEFT JOIN DimGeography AS g 
	 ON g.GeographyKey = c.GeographyKey
	 ORDER BY CustomerKey ASC
