Use VideoGames

DROP TABLE VideoGamesSales

CREATE TABLE VideoGamesSales
(

VideoGameID INT PRIMARY KEY,
VGName VARCHAR(50),
[Platform] VARCHAR(5),
YearOfRelease VARCHAR(4),
Genre VARCHAR(12),
NA_Sales DECIMAL(4, 2),
EU_Sales DECIMAL(4, 2),
JP_Sales DECIMAL(3, 2),
Other_Sales DECIMAL(3, 2),
Global_Sales DECIMAL(4, 2),
CriticScore VARCHAR(2),
Critic_Count VARCHAR(2),
UserScore DECIMAL(2, 1),
User_Count VARCHAR(3),
Developer VARCHAR(25),

)


SELECT * FROM VideoGamesSales