USE [corona analysis]
GO

select *
From [dbo].[Corona Virus Dataset];


-- Q1. Write a code to check NULL values
SELECT *
  FROM [dbo].[Corona Virus Dataset]
  Where coalesce (Province ,' ')=' ' or coalesce (Country_Region ,' ')=' ' or coalesce (Longitude ,' ')=' ' or coalesce (Date ,' ')=' ' 
  or coalesce (Confirmed ,' ')=' ' or coalesce (Confirmed ,' ')=' ' or coalesce (Deaths ,' ')=' ' or coalesce (Recovered ,' ')=' ' ;
  


  SELECT MONTH(date) , count(*)
  FROM [dbo].[Corona Virus Dataset]
  group by MONTH(date);

  alter table [dbo].[Corona Virus Dataset]
  alter column Confirmed int;
 
 alter table [dbo].[Corona Virus Dataset]
  alter column Deaths int;

 alter table [dbo].[Corona Virus Dataset]
 alter column Recovered int;

 SELECT AVG(Confirmed ) as con, AVG(Deaths ) as die , AVG(Recovered ) as recover
  FROM [dbo].[Corona Virus Dataset]
   group by MONTH(date);

   SELECT count(Confirmed ) as con , count(Deaths ) as die , count(Recovered ) as recover
  FROM [dbo].[Corona Virus Dataset]
   group by MONTH(date) ;


SELECT min(Confirmed ) as con, min(Deaths ) as die , min(Recovered ) as recover
  FROM [dbo].[Corona Virus Dataset]
   group by year(date);

SELECT max(Confirmed ) as con, max(Deaths ) as die , max(Recovered ) as recover
  FROM [dbo].[Corona Virus Dataset]
   group by year(date);

   SELECT sum(Confirmed ) as con, sum(Deaths ) as die , sum(Recovered ) as recover
  FROM [dbo].[Corona Virus Dataset]
   group by month(date);

   SELECT sum(Confirmed ) as total , avg(Confirmed ) as average , var(Confirmed ) as variance, STDEV(Confirmed) as stdeviation
  FROM [dbo].[Corona Virus Dataset];

    SELECT sum(Deaths ) as total , avg(Deaths ) as average , var(Deaths ) as variance, STDEV(Deaths) as stdeviation
  FROM [dbo].[Corona Virus Dataset]
   group by MONTH(date);

    SELECT sum(Recovered ) as total , avg(Recovered ) as average , var(Recovered ) as variance, STDEV(Recovered) as stdeviation
  FROM [dbo].[Corona Virus Dataset]
   group by MONTH(date);


   select  Country_Region , Max(confirmed) as confirmedcases
    FROM [dbo].[Corona Virus Dataset]
	group by Country_Region  
	order by Country_Region  ;

	select  Country_Region , min(confirmed) as confirmedcases
    FROM [dbo].[Corona Virus Dataset]
	group by Country_Region ;

	select  top 5 Country_Region , Max(Recovered) as recoveredcases
    FROM [dbo].[Corona Virus Dataset]
	group by Country_Region ;
