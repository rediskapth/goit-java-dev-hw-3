SELECT *
FROM projects p
WHERE p.cost = (SELECT MIN(cost)
				FROM projects);