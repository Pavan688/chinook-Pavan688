Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
Employee full name
Total number of customers assigned to each employee (even if it's zero)

SELECT e.firstname AS EmFirstName, e.lastname AS EmLastName, Count(c.customerid) 
FROM customer c
JOIN employee e
    ON e.EmployeeId = c.supportrepid
GROUP BY c.SupportRepId