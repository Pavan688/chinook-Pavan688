Provide a query that shows the total number of invoices per country.
HINT: GROUP BY

SELECT BillingCountry, COUNT(billingcountry)
FROM invoice
GROUP BY billingcountry

