--Cleansed Fact_Internet_Sales table

SELECT 
	   [ProductKey] AS [ProductKey],
       [OrderDateKey] AS [OrderDateKey],
       [DueDateKey] AS [DueDateKey] ,
       [ShipDateKey] AS [ShipDateKey],
       [CustomerKey] AS [CustomerKey],
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
       [SalesOrderNumber] AS SalesOrderNumber,
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
       [SalesAmount] AS SalesAmount
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
  FROM [AdventureWorksDW2014].[dbo].[FactInternetSales]
  WHERE 
  LEFT(OrderDateKey, 4 ) >= YEAR(GETDATE()) - 2 -- Ensures we always only bring two years of date from extraction.
  ORDER BY OrderDateKey ASC
