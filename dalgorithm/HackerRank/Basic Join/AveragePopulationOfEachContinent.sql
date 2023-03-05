SELECT Country.Continent, FLOOR(AVG(City.population))
FROM City INNER JOIN Country
ON City.CountryCode = Country.Code
GROUP BY Country.Continent;