--Opengov Africa (FIRST Dataset) Analysis

--Country Analysis

--Algeria 

USE Africa

select * from Algeria;

--•	Total roads
select Country, count(*) AS total_roads FROM Algeria GROUP BY Country;

--Total Road Length

select country, ROUND(sum(cast(Rd_length as FLOAT)), 2) AS Total_Road_Length from Algeria group by Country order by Total_Road_Length

--Convert Rd_length to decimal 

ALTER TABLE Algeria
ADD Rd_length_num DECIMAL(18,6);

--Total Road Length

SELECT  country, ROUND(SUM(Rd_length), 2) AS Total_Road_Length FROM Algeria GROUP BY Country ORDER BY Total_Road_Length;

-- Average Road Length

select Country, ROUND(AVG(Rd_length), 2) AS Average_road_length FROM Algeria group by Country;


---Surface Analisys
SELECT Country, surface, COUNT(*) AS road_count,Round(count(*) * 100.0 / sum (count(*)) over (partition by Country), 2) as percentage_surface FROM Algeria GROUP BY Country, surface ORDER BY  Country, surface DESC;

--Nigeria 

SELECT *INTO Nigeria from Nigeria_part_1 UNION ALL select* from Nigeria_part_2

ALTER TABLE Nigeria ADD Country2 VARCHAR(50);

UPDATE Nigeria SET Country = 'Nigeria'

ALTER TABLE Nigeria DROP COLUMN Country2; 

EXEC sp_rename 'Nigeria.Country2', 'Country', 'Column' 

select * from Nigeria;

ALTER TABLE Nigeria
ALTER COLUMN Rd_length DECIMAL(18,6);

--•	Total roads

select Country, count(*) AS total_roads_Nigeria FROM Nigeria GROUP BY Country;

--Total Road Length

select country, ROUND(sum(cast(Rd_length as FLOAT)), 2) AS Total_Road_Length from Nigeria group by Country order by Total_Road_Length

-- Average Road Length

select Country, ROUND(AVG(Rd_length), 2) AS Average_road_length FROM Nigeria group by Country;

---Surface Analisys
SELECT Country, surface, COUNT(*) AS road_count,Round(count(*) * 100.0 / sum (count(*)) over (partition by Country), 2) as percentage_surface FROM Nigeria GROUP BY Country, surface ORDER BY  Country, surface DESC;

--Kenya

SELECT * from Kenya ;

ALTER TABLE Kenya
ALTER COLUMN Rd_length DECIMAL(18,6);

--•	Total roads

select Country, count(*) AS total_roads FROM Kenya GROUP BY Country;

--Total Road Length

select country, ROUND(sum(cast(Rd_length as FLOAT)), 2) AS Total_Road_Length from Kenya group by Country order by Total_Road_Length

-- Average Road Length

select Country, ROUND(AVG(Rd_length), 2) AS Average_road_length FROM Kenya group by Country;


---Surface Analisys
SELECT Country, surface, COUNT(*) AS road_count,Round(count(*) * 100.0 / sum (count(*)) over (partition by Country), 2) as percentage_surface FROM Kenya GROUP BY Country, surface ORDER BY  Country, surface DESC;


--Cameroon

SELECT * from Cameroon ;

ALTER TABLE Cameroon
ALTER COLUMN Rd_length DECIMAL(18,6);

--•	Total roads

select Country, count(*) AS total_roads FROM Cameroon GROUP BY Country;

--Total Road Length

select country, ROUND(sum(cast(Rd_length as FLOAT)), 2) AS Total_Road_Length from Cameroon group by Country order by Total_Road_Length

-- Average Road Length

select Country, ROUND(AVG(Rd_length), 2) AS Average_road_length FROM Cameroon group by Country;


---Surface Analisys
SELECT Country, surface, COUNT(*) AS road_count,Round(count(*) * 100.0 / sum (count(*)) over (partition by Country), 2) as percentage_surface FROM Cameroon GROUP BY Country, surface ORDER BY  Country, surface DESC;

--South Africa 

SELECT *INTO South_Africa from SouthAfrica_part_1 UNION ALL select* from SouthAfrica_part_2

ALTER TABLE South_Africa ADD Country2 VARCHAR(50);

UPDATE South_Africa SET Country2 = 'South Africa'

ALTER TABLE South_Africa DROP COLUMN Country;

EXEC sp_rename 'South_Africa.Country2', 'Country', 'Column' 

select * from South_Africa;

ALTER TABLE South_Africa
ALTER COLUMN Rd_length DECIMAL(18,6);

--•	Total roads

select Country, count(*) AS total_roads_south_africa FROM South_Africa GROUP BY Country;

--Total Road Length

select country, ROUND(sum(cast(Rd_length as FLOAT)), 2) AS Total_Road_Length from South_Africa group by Country order by Total_Road_Length

-- Average Road Length

select Country, ROUND(AVG(Rd_length), 2) AS Average_road_length FROM South_Africa group by Country;


---Surface Analisys
SELECT Country, surface, COUNT(*) AS road_count,Round(count(*) * 100.0 / sum (count(*)) over (partition by Country), 2) as percentage_surface FROM South_Africa GROUP BY Country, surface ORDER BY  Country, surface DESC;



