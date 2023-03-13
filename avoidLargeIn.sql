--get ids to inactivate
SELECT
  id,
  status
FROM
  table_name
LEFT JOIN
  UNNEST(ARRAY[/* huge array */]) active_id
ON
  active_id = table_name.id
WHERE
  table_name.status = 'active'
AND
  active_id IS NULL;
