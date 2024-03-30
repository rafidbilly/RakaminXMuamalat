ALTER TABLE muamalat.customers
ADD PRIMARY KEY (CustomerID) NOT ENFORCED;

ALTER TABLE muamalat.orders
ADD PRIMARY KEY (OrderID) NOT ENFORCED;

ALTER TABLE muamalat.products
ADD PRIMARY KEY (ProdNumber) NOT ENFORCED;

ALTER TABLE muamalat.product_category
ADD PRIMARY KEY (CategoryID) NOT ENFORCED;
