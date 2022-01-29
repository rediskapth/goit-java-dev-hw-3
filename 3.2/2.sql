SELECT p.name, SUM(d.salary) AS project_cost
FROM developers d
INNER JOIN projects p
ON d.developer_id = p.project_id
GROUP BY p.name
ORDER BY project_cost DESC
LIMIT 1;