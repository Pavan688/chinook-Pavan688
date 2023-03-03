Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
Invoice Total
Customer Name
Customer Country
Sale Agent full name

SELECT i.total, e.firstname AS Em_FirstName, e.lastname AS Em_LastName, c.firstname AS Cus_FirstName , c.lastname AS Cus_LastName, c.country
FROM invoice i
JOIN customer c
    ON i.customerid = c.customerid
JOIN employee e
    ON e.employeeid = c.supportrepid
