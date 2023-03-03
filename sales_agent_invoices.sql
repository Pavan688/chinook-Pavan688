Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
Sales Agent's full name
Invoice ID

SELECT i.invoiceid, e.firstname, e.lastname
FROM invoice i
JOIN customer
    ON i.customerid = customer.customerid
JOIN employee e
    ON e.employeeid = customer.supportrepid
