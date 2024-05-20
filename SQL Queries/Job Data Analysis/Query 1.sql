SELECT 
    DAY(ds) AS `Date`,
    ROUND(COUNT(*) / (SUM(time_spent) / 3600),0) AS `Jobs_per_hour`
FROM
    job_data
WHERE
	ds BETWEEN '2020-11-01' AND '2020-11-30'
GROUP BY `Date`;
