CREATE DEFINER=`root`@`localhost` PROCEDURE `number_of_languages_per_continent`()
BEGIN
  SELECT country.Continent, COUNT(DISTINCT countrylanguage.Language) AS 'Number of Languages' FROM country
  JOIN countrylanguage on country.Code = countrylanguage.CountryCode
  GROUP BY Continent
  ORDER BY COUNT(countrylanguage.Language) DESC;
  END