SELECT SUM(d.salary)
FROM developers d
INNER JOIN skills s
ON d.developer_id = s.skill_id
WHERE s.language LIKE '%ava';