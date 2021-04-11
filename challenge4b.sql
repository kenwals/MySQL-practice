SELECT CONCAT(Customer.FirstName,Customer.LastName) As Name, InvoiceDate, Total from Invoice
INNER JOIN Customer on Invoice.CustomerId = Customer.CustomerId
order by Total desc
limit 10;
