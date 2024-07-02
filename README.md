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

-- Top 10 Years of the Most Global Sales (Bar Chart)

SELECT  TOP 10 YearOfRelease, ROUND(SUM(global_sales), 1) AS TotalGlobalSales
FROM [VideoGames].[dbo].[Cleaned Video Games Sales]
WHERE Global_sales IS NOT NULL
GROUP BY YearOfRelease
Order By SUM(Global_sales) DESC;

----------------------------------------------------------------------------------------------------------
