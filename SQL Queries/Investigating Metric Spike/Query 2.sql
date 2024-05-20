SELECT year, month, active_users,
		sum(active_users) OVER(ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS user_growth,
    CASE 
        WHEN LAG(active_users) OVER (ORDER BY year, month) IS NULL THEN 0
        ELSE ROUND(((active_users - LAG(active_users) OVER (ORDER BY year, month)) / LAG(active_users) OVER (ORDER BY year, month)) * 100, 2)
    END AS growth_percentage
FROM (
	SELECT YEAR(activated_at) AS year,
			EXTRACT(MONTH FROM activated_at) AS month,
				COUNT(DISTINCT user_id) AS active_users
		FROM users
		GROUP BY year,month
		) as Active_Users_per_Month
ORDER BY year;