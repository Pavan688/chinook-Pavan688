Provide a query that shows the total sales per country.


SELECT billingcountry, SUM(total)
FROM invoice
GROUP BY billingcountry