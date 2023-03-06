Provide a query that shows total sales made by each sales agent. The resultant table should include:
Employee full name
Total sales for each employee (all time)

SELECT SUM(i.total), e.firstname AS EmFirstName, e.lastname AS EmLastName
FROM invoice i 
JOIN customer c
    ON c.customerId = i.customerId
JOIN employee e
    ON e.employeeid = c.supportrepid
GROUP BY c.supportrepid