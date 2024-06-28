-- Sales in Video Games

Select * From [VideoGames].[dbo].[Cleaned Video Games Sales]

-----------------------------------------------------------------------------------------------------

-- Top 12 Best North America (NA) Sales (Pie Chart)

SELECT TOP 12 VGName, Platform, NA_Sales
FROM [VideoGames].[dbo].[Cleaned Video Games Sales]
ORDER BY NA_Sales DESC

-------------------------------------------------------------------------------------------------------

-- Top 12 Worst Japan (JP) Sales (Doughnut Chart)

SELECT TOP 12 VGName, Platform, JP_Sales
FROM [VideoGames].[dbo].[Cleaned Video Games Sales]
Where JP_Sales > 0.07
ORDER BY JP_Sales

----------------------------------------------------------------------------------------------------------
