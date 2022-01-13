SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS ProductItemCode, 
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode] 
  --,[SizeUnitMeasureCode]
  p.[EnglishProductName] AS [Product Name], 
  ps.EnglishProductSubcategoryName AS [Sub Category], 
  pc.EnglishProductCategoryName As [Product category], 
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  p.[Color] AS [Product Color], 
  -- ,[SafetyStockLevel]
  -- ,[ReorderPoint]
  -- ,[ListPrice]
  p.[Size] AS [Product Size], 
  -- ,[SizeRange]
  --,[Weight]
  -- ,[DaysToManufacture]
  p.[ProductLine] AS [Product Line], 
  --,[DealerPrice]
  --,[Class].
  --,[Style]
  p.[ModelName] As [Model Name], 
  --,[LargePhoto]
  p.[EnglishDescription] AS [Product Description], 
  -- ,[FrenchDescription]
  -- ,[ChineseDescription]
  -- ,[ArabicDescription]
  -- ,[HebrewDescription]
  --,[ThaiDescription]
  -- ,[GermanDescription]
  --,[JapaneseDescription]
  -- ,[TurkishDescription]
  -- ,[StartDate]
  -- ,[EndDate]
  ISNULL(p.status, 'Outdated') As [Product Status] 
FROM 
  [dbo].[DimProduct] AS p 
  LEFT JOIN [dbo].[DimProductSubcategory] AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN [dbo].[DimProductCategory] AS pc ON pc.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey asc
