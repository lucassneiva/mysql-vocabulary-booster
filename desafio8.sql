SELECT customers.ContactName AS 'Nome de contato',
shippers.ShipperName AS 'Empresa que fez o envio',
orders.OrderDate AS 'Data do pedido'
FROM
w3schools.shippers AS shippers
INNER JOIN w3schools.orders as orders
ON orders.ShipperID = shippers.ShipperID
INNER JOIN w3schools.customers AS customers
ON customers.CustomerID = orders.CustomerID
WHERE 
shippers.ShipperName LIKE 'Speedy Express' OR shippers.ShipperName LIKE 'United Package'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
