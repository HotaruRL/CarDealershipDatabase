SELECT sc.*, dls.name
FROM sales_contracts AS sc
INNER JOIN dealerships AS dls ON sc.dealership_id = dls.dealership_id
WHERE sc.date_of_sale BETWEEN "2023-01-01" AND "2023-12-31"
HAVING dls.name LIKE "%motors%"