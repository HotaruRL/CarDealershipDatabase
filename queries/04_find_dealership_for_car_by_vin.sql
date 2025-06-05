SELECT v.*, d.name
FROM vehicles AS v
INNER JOIN inventory AS inv ON v.vin = inv.vin
INNER JOIN dealerships AS d ON inv.dealership_id = d.dealership_id
WHERE v.vin = "JTDKARCD2P5206712"