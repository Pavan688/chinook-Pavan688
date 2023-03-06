Which country's customers spent the most?
HINT: Use the MAX function on a subquery.

SELECT billingcountry, SUM(total) AS CountryTotal
FROM invoice
GROUP BY billingcountry
ORDER BY countrytotal DESC
LIMIT 1