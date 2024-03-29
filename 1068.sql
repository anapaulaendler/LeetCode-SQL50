select Product.product_name, Sales.year, Sales.price
from Sales
inner join Product
on Product.product_id = Sales.product_id