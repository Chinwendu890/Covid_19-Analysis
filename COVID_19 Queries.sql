
-- LOOKING AT TOTAL CASES VS TOTAL DEATHS --
-- shows what percentage of individuals that died due to covid --

select location, max(total_deaths/population) *100 as death_percentage
from covid_deaths
Group by location
ORDER BY death_percentage  desc
limit 10;

-- United States has the highest death percentage --

-- LOOKING AT THE TOTAL CASES VS POPULATION  --
-- shows what percentage of the population that got covid --
select location, max(total_cases/population)*100 as infected_percentage
from covid_deaths
Group by location
ORDER BY infected_percentage  desc;

-- shows what percentage of the population of each country in Europe that got covid --
select location, max(total_cases/population)*100 as infected_percentage
from covid_deaths
where continent like '%Europe%'
Group by location
ORDER BY infected_percentage  desc;
-- France has the highest number of people infected with covid 19 and followed by Russia and United Kingdom --

-- shows what percentage of the population of each country in North America that got covid --
select location, max(total_cases/population)*100 as infected_percentage
from covid_deaths
where continent like '%North America%'
Group by location
ORDER BY infected_percentage  desc;
-- America has a high number of people infected with covid 19 and it is at a very alarming rate --

-- African's least affected countries --
-- This shows countries in Africa with the lowest rate of COVID-19 infections --
select location, max(total_cases/population)*100 as infected_percentage
from covid_deaths
where continent like '%africa%'
Group by location
ORDER BY infected_percentage  asc
LIMIT 10;
-- Mauritius has the least number of people infected with covid_19 and followed by Tanzania and Saint Helena --

-- African's most affected countries 
-- This shows countries in Africa with the higest rate of COVID-19 infections --
select location, max(total_cases/population)*100 as infected_percentage
from covid_deaths
where continent like '%africa%'
Group by location
ORDER BY infected_percentage  desc
LIMIT 10;
-- South africa has the highest number of people infected with covid 19 and followed by Morocco and Tunisia--


-- Infection rate compared to population --

select location, max(total_cases) as highest_infection_rate, max(total_cases/population)*100 as infected_percentage
from covid_deaths
group by location
ORDER BY  infected_percentage DESC;

-- Looking at countries with highest infection rate compared to population in Europe --
select location, max(total_cases) as highest_infection_rate, max(total_cases/population)*100 as infected_percentage
from covid_deaths
where continent like '%europe%'
group by location
ORDER BY  infected_percentage DESC;
-- France has the highest infection rate compared to population in Europe --

-- Looking at countries with highest infection rate compared to population in North America --
select location, max(total_cases) as highest_infection_rate, max(total_cases/population)*100 as infected_percentage
from covid_deaths
where continent like '%North America%'
group by location
ORDER BY  infected_percentage DESC;
-- United States has the highest infection rate in North America --

-- Looking at countries with highest infection rate compared to population in South America --
select location, max(total_cases) as highest_infection_rate, max(total_cases/population)*100 as infected_percentage
from covid_deaths
where continent like '%South America%'
group by location
ORDER BY  infected_percentage DESC;
-- Brazil has the highest infection rate in South America --

-- Looking at countries with highest infection rate compared to population in Asia --
select location, max(total_cases) as highest_infection_rate, max(total_cases/population)*100 as infected_percentage
from covid_deaths
where continent like '%Asia%'
group by location
ORDER BY  infected_percentage DESC;
-- India has the highest infection rate in Asia --

-- Looking at countries with highest infection rate compared to population in Africa --
select location, max(total_cases) as highest_infection_rate, max(total_cases/population)*100 as infected_percentage
from covid_deaths
where continent like '%Africa%'
group by location
ORDER BY  infected_percentage DESC;
-- South africa has the highest infection rate in Africa --

-- SHOWING CONTINENT WITH HIGHST DEATH COUNT PER POPULATION --

SELECT continent,
       max(total_deaths) as highest_death_count
FROM covid_deaths
GROUP BY continent
ORDER BY highest_death_count DESC ;
-- North America is the continent with the highest death count --

-- SHOWING COUNTRIES WITH THE HIGHST DEATH COUNT PER POPULATION --
SELECT location,
       max(total_deaths) as highest_death_count
FROM covid_deaths
GROUP BY location 
ORDER BY highest_death_count DESC 
Limit 10;
-- This shows countries with the highest death_count in the world  --
-- FROM THE ABOVE QUERY IT SHOWS THAT UNITED STATES HAD THE HIGHEST DEATH COUNT FOLLOWED BY BRAZIL AND OTHERS --

-- SHOWING COUNTRIES WITH THE LOWEST DEATH COUNT PER POPULATION --
SELECT location,
       max(total_deaths) as highest_death_count
FROM covid_deaths
GROUP BY location 
ORDER BY highest_death_count ASC
Limit 10;
-- This shows countries with the lowest death_count in the world --
-- THE ABOVE QUERY SHOWS THE LEAST TEN COUNTRIES AS REGARDS TO DEATH COUNT DUE TO COVID
-- From the above query, it shows that Curacao had the lowest death count followed by Dominica and others --

Select *
From covid_vaccinations;

-- PEOPLE FULLY VACCINATED PER POPULATION --
-- The continent with the highest vaccinated rate by population --
Select Continent, max(people_fully_vaccinated/population) as vaccinated_rate
From covid_vaccinations
Group by Continent 
Order by vaccinated_rate desc
Limit 10 ;
-- The continent with the highest vaccinated rate by population is Europe, North America, South America and Asia --

-- PEOPLE FULLY VACCINATED PER POPULATION --
-- The continent with the lowest vaccinated rate by population --
Select Continent, max(people_fully_vaccinated/population) as vaccinated_rate
From covid_vaccinations
Group by Continent 
Order by vaccinated_rate asc
Limit 10 ;
-- The continent with the lowest vaccinated rate by population is Oceania,Africa   --

-- PEOPLE FULLY VACCINATED PER POPULATION --
-- The country with the highest vaccinated rate by population --
Select location, max(people_fully_vaccinated/population) as vaccinated_rate
From covid_vaccinations
Group by location
Order by vaccinated_rate desc
Limit 10 ;
-- The country with the highest vaccinated rate by population is Gibraltar, Seychelles and Isreal --

-- PEOPLE FULLY VACCINATED PER POPULATION --
-- The country with the lowest vaccinated rate by population --
Select location, max(people_fully_vaccinated/population) as vaccinated_rate
From covid_vaccinations
Group by location
Order by vaccinated_rate asc
Limit 100 ;
-- The country with the lowest vaccinated rate by population is Afghanistan, Algeria and North Macedonia --

-- TOTAL VACCINATIONS PER COUNTRY --
Select location, max(total_vaccinations) as Total_vaccinated
From covid_vaccinations
Group by location
Order by total_vaccinated desc
Limit 10 ;
-- China had the highest amount of total vaccinations, followed by America and India, but compared to their population, their vaccination rate is low --

-- SANITIZATION RATE PER POPULATION --
-- The country with the highest Sanitization_rate by population --
Select location, max(handwashing_facilities/population) as Sanitization_rate
From covid_vaccinations
Group by location 
Order by Sanitization_rate desc
Limit 10 ;
-- The country with the highest Sanitization_rate by population is Marshall Islands, Saint Lucia and Barbados --


--  SANITIZATION RATE PER POPULATION --
-- The continent with the lowest Sanitization_rate by population --
Select Continent, max(handwashing_facilities/population) as Sanitization_rate
From covid_vaccinations
Group by Continent 
Order by Sanitization_rate desc
Limit 10 ;
-- The continent with the lowest Sanitization_rate by population is Oceania, North America and Asia --
-- Europe has the highest Sanitization_rate --


-- TO KNOW THE DEATH PERCENTAGE PER COUNTRY --
-- To know the the most countries with the highest death percentage--

select location, max(total_deaths/population) *100 as death_percentage
from covid_deaths
Group by Location
ORDER BY death_percentage  desc;
-- United states has the highest death percentage--

-- TO KNOW THE TOTAL COVID_19 CASES PER COUNTRY --
-- To know the the most countries with the highest cases --
select location, sum(total_cases) as Covid_cases
from covid_deaths
GROUP BY location
ORDER BY Covid_cases desc;
-- United states has the highest cases of covid_19 infection --

-- TO KNOW THE COVID_19 NEW CASES PER COUNTRY --
-- To know the the most countries with the highest new cases --
select location, sum(new_cases) as New_Covid_cases
from covid_deaths
GROUP BY location
ORDER BY New_Covid_cases desc;
-- United states has the highest new cases of covid_19 infection --

-- TO KNOW THE COVID_19 NEW CASES AND NEW DEATHS PER COUNTRY --
-- To know the the most countries with the highest new cases and new deaths --
select location, sum(new_cases),sum(new_deaths) 
from covid_deaths
GROUP BY location
ORDER BY sum(new_cases) desc ;
-- United states has the highest new cases and new death of covid_19 infection --

-- To get the percentage of daily total new cases and deaths 
select location,  SUM(new_cases) AS total_cases,SUM(new_deaths) AS total_deaths, SUM(new_deaths)/SUM(new_cases) *100 as daily_total_new_cases
from covid_deaths
GROUP BY  location
ORDER BY sum(new_cases) desc ;



-- TEMP TABLE --

DROP TABLE IF EXISTS percentage_population_vaccinated;
-- this is another way of the doing the above by creating a temp table that can be well queried
CREATE Table percentage_population_vaccinated
(
continent varchar (255),
location varchar (255),
date date,
population Bigint (255),
new_vaccinations int (255),
Rollling_daily_vaccinations int (255)
);

INSERT INTO percentage_population_vaccinated
SELECT cd.continent, 
	   cd.location, 
       cd.date, 
       cd.population, 
       cv.new_vaccinations,
       SUM(cv.new_vaccinations) OVER (partition by location ORDER BY cd.location, cd.date) AS Rollling_daily_vaccinations
FROM covid_vaccinations cv 
JOIN covid_deaths  cd 
      ON cv.location = cd.location
      AND cv.date = cd.date
WHERE cv.new_vaccinations != 0 ;


SELECT *, (Rollling_daily_vaccinations/population) *100 AS VACCINATED
FROM percentage_population_vaccinated;

