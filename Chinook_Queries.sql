--1.  --non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.

SELECT * FROM Customer;

SELECT FirstName, LastName, CustomerId, Country
FROM Customer;

SELECT c.FirstName || " " || c.LastName as "Full Name", c.CustomerId, c.Country
FROM Customer c
WHERE Country != "USA";

--2.  --brazil_customers.sql: Provide a query only showing the Customers from Brazil.

SELECT *
FROM Customer
WHERE Country = "Brazil";

--3.  --brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT *
FROM Invoice;

SELECT c.FirstName || " " || c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Customer c
JOIN Invoice i 
WHERE c.Country = "Brazil" AND c.CustomerId = i.CustomerId;


--17. invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items

SELECT *
FROM Invoice i;

SELECT *
FROM InvoiceLine il;

SELECT *
FROM Invoice i, InvoiceLine il 
WHERE i.InvoiceId = il.InvoiceLineId;

SELECT *,
COUNT (il.InvoiceLineId)
FROM Invoice i, InvoiceLine il 
WHERE i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId;

--4.  --sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.

SELECT *
FROM Employee e
WHERE Title = "Sales Support Agent";


--5.  unique_invoice_countries.sql: Provide a query showing a unique/distinct list of billing countries from the Invoice table.

SELECT *
FROM Invoice i;

SELECT BillingCountry
FROM Invoice i ;

SELECT DISTINCT BillingCountry
FROM Invoice i;

--27.  top_media_type.sql: Provide a query that shows the most purchased Media Type

SELECT *
FROM MediaType;

SELECT *
FROM MediaType mt, Track t, InvoiceLine il
WHERE mt.MediaTypeId = t.MediaTypeId AND t.TrackId = il.TrackId;

--27 A.  Find number of Media Types that were purchased







