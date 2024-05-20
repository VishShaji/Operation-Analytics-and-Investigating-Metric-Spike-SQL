WITH user_signups AS (
    SELECT 
        user_id, 
        MIN(occurred_at) AS signup_date,
        YEAR(MIN(occurred_at)) AS signup_year, 
        WEEK(MIN(occurred_at)) AS signup_week
    FROM 
        events
    WHERE 
        event_name = 'complete_signup'
    GROUP BY 
        user_id
),

user_engagements AS (
    SELECT
        e.user_id,
        c.signup_date,
        c.signup_year,
        c.signup_week,
        TIMESTAMPDIFF(WEEK, c.signup_date, e.occurred_at) AS weeks_since_signup
    FROM
        events e
    JOIN
        user_signups c ON e.user_id = c.user_id
    WHERE
        e.occurred_at >= c.signup_date
)
SELECT
    signup_year,
    signup_week,
    weeks_since_signup AS week_number,
    COUNT(DISTINCT u.user_id) AS retained_users
FROM
    user_engagements u
GROUP BY
    signup_year,
    signup_week,
    weeks_since_signup
ORDER BY
    signup_year,
    signup_week,
    weeks_since_signup;


