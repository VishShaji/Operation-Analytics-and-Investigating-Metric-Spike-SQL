WITH daily_throughput AS (
		SELECT ds, COUNT(*)/SUM(time_spent) AS throughput
		FROM job_data
		GROUP BY ds
        )
        
SELECT ds,
	ROUND(AVG(throughput) OVER(ORDER BY ds ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),3) AS 7_day_throughput_rolling_average
FROM daily_throughput;
	
