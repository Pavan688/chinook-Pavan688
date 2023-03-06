Which sales agent made the most in sales over all?

SELECT SUM(i.total) AS TotalSales, e.firstname AS EmFirstName, e.lastname AS EmLastName
FROM invoice i 
JOIN customer c
    ON c.customerId = i.customerId
JOIN employee e
    ON e.employeeid = c.supportrepid
GROUP BY c.supportrepid
ORDER BY totalsales DESC
LIMIT 1