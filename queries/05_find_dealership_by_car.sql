SELECT dls.*, veh.*
FROM dealerships AS dls
INNER JOIN inventory AS inv ON dls.dealership_id = inv.dealership_id
INNER JOIN vehicles AS veh ON inv.vin = veh.vin
WHERE make = "toyota"
	AND model = "camry"
--     AND year = 2020
--     AND color = "white"