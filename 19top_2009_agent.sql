Which sales agent made the most in sales in 2009?

HINT: Use the MAX function on a subquery.

SELECT SUM(i.total) AS TotalSales, e.firstname AS EmFirstName, e.lastname AS EmLastName
FROM invoice i 
JOIN customer c
    ON c.customerId = i.customerId
JOIN employee e
    ON e.employeeid = c.supportrepid
WHERE i.invoicedate BETWEEN "2009-01-01" AND "2009-12-31"
GROUP BY c.supportrepid
ORDER BY totalsales DESC
LIMIT 1

SELECT
    top.EmployeeFullName,
    MAX(top.TotalSales)
FROM (SELECT
        e.FirstName||' '||e.LastName EmployeeFullName,
        SUM (i.Total) as TotalSales
        FROM Employee e
        LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId
        JOIN Invoice i ON i.CustomerId = c.CustomerId
        WHERE InvoiceDate LIKE "2009%"
        GROUP BY e.EmployeeId
        ) AS top