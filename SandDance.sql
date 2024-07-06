SELECT  TOP 10 YearOfRelease, ROUND(SUM(global_sales), 1) AS TotalGlobalSales
FROM GameSales.dbo.VideoGamesSales
WHERE Global_sales IS NOT NULL
GROUP BY YearOfRelease
Order By SUM(Global_sales) DESC;