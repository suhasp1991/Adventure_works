/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  c.CustomerKey AS CustomerKey, 
  --[GeographyKey]
  --[CustomerAlternateKey]
  --[Title]
  c.FirstName AS [First Name], 
  --[MiddleName]
  c.LastName AS [Last name],
  c.firstname + ' ' + lastname AS [Full Name],
  --[NameStyle]
  --[BirthDate]
  --[MaritalStatus]
  --[Suffix]
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --[EmailAddress]
  --[YearlyIncome]
  --[TotalChildren]
  --[NumberChildrenAtHome]
  --[EnglishEducation]
  --[SpanishEducation]
  --[FrenchEducation]
  --[EnglishOccupation]
  --[SpanishOccupation]
  --[FrenchOccupation]
  --[HouseOwnerFlag]
  --[NumberCarsOwned]
  --[AddressLine1]
  --[AddressLine2]
  --[Phone]
  c.DateFirstPurchase AS DateFirstPurchase, 
  --[CommuteDistance]
  g.city AS [Customer City],
  g.EnglishCountryRegionName AS [Country]
FROM 
  dbo.dimcustomer AS c 
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC