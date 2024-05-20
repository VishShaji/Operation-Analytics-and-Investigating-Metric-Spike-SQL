SELECT language, 100*COUNT(*)/SUM(COUNT(*)) OVER() AS `Percetage Share`
FROM job_data
GROUP BY `language`;
