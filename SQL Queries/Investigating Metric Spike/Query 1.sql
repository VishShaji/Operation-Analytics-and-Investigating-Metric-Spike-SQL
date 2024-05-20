SELECT 
    EXTRACT(WEEK FROM occurred_at) AS Week,
    COUNT(DISTINCT user_id) AS User_count
FROM
    events
WHERE
    event_type = 'engagement'
GROUP BY Week
ORDER BY Week;
