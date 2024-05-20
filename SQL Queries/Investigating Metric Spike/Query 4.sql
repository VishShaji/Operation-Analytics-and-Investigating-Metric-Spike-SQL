SELECT device AS DeviceName,
		YEAR(occurred_at) AS Year,
		WEEK(occurred_at) AS Week,
		COUNT(DISTINCT user_id) AS UserCount
FROM `events`
WHERE event_type = 'engagement'
GROUP BY Year,Week,device
ORDER BY Year, Week, UserCount DESC ;
