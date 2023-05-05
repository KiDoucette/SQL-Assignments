use world;
SELECT 
    country.Name, country.Population, country.Capital
FROM
    country
ORDER BY country.Population ASC;
SELECT 
    country.Name,
    country.Population,
    country.Capital,
    country.LifeExpectancy
FROM
    country
WHERE
    country.LifeExpectancy < 50
ORDER BY country.LifeExpectancy ASC;
SELECT 
    country.Name,
    country.Population,
    country.Capital,
    countrylanguage.Language
FROM
    country
        JOIN
    countrylanguage ON country.Code = countrylanguage.CountryCode
GROUP BY country.Name , country.Population , country.Capital , countrylanguage.Language
ORDER BY countrylanguage.Language ASC;

SELECT 
    country.Name, country.Population, country.LifeExpectancy
FROM
    country
WHERE
    country.LifeExpectancy > 66.4
ORDER BY country.LifeExpectancy DESC;

SELECT 
    country.Continent,
    country.Name,
    country.Region,
    country.Capital,
    country.GovernmentForm
FROM
    country
WHERE
    country.Continent = 'North America'
        OR country.Continent = 'South America'
ORDER BY country.Continent ASC;

SELECT 
    country.Continent,
    country.Name,
    country.Region,
    country.Capital,
    country.GovernmentForm
FROM
    country
WHERE
    country.Continent = 'Africa'
        OR country.Continent = 'Asia'
ORDER BY country.Continent ASC;

select concat(city.Name, ', ', country.Name) as 'City/Country Name', city.Population from city join country on city.CountryCode = country.Code group by concat(city.Name, ', ', country.Name), city.Population order by city.Population desc;


