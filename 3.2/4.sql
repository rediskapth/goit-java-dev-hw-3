ALTER TABLE projects
ADD cost INT;

UPDATE projects pr
SET cost = 
(SELECT SUM(d.salary) AS project_cost
FROM projects p
	INNER JOIN developers_projects dp ON p.project_id = dp.project_id
	INNER JOIN developers d ON d.developer_id=dp.developer_id
WHERE p.project_id = pr.project_id);