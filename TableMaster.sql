-- CustomerEmail (cust_email) customers
-- CustomerCity (cust_city) customers
-- OrderDate (order_date) Date orders
-- OrderQty (order_qty) Quantity orders
-- ProductName (product_name) ProdName products
-- ProductPrice (product_price) Price products
-- ProductCategoryName (category_name) CategoryName product_category
-- TotalSales (total_sales)

SELECT * FROM muamalat.customers;
SELECT * FROM muamalat.orders; -- 3339
SELECT * FROM muamalat.product_category;
SELECT * FROM muamalat.products;

SELECT
  o.Date AS order_date,
  pc.CategoryName AS category_name,
  p.ProdName AS product_name,
  p.Price AS product_price,
  o.Quantity AS order_qty,
  (o.Quantity * p.Price) AS total_sales,
  c.CustomerEmail AS cust_email,
  c.CustomerCity AS cust_city
FROM
  muamalat.orders o
    JOIN
  muamalat.customers c ON o.CustomerID = c.CustomerID
    JOIN
  muamalat.products p ON o.ProdNumber = p.ProdNumber
    JOIN
  muamalat.product_category pc ON p.Category = pc.CategoryID
ORDER BY order_date;
