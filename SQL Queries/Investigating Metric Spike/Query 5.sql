SELECT user_id, Emails_sent, Emails_opened, Emails_clicked,
        ROUND(SUM(Emails_opened)/SUM(Emails_sent),2)*100 AS Open_rate,
        ROUND(SUM(Emails_clicked)/SUM(Emails_opened),2)*100 AS Click_through_rate
        FROM (
	SELECT user_id,
		SUM(CASE WHEN `action` = "sent_weekly_digest" THEN 1 ELSE 0 END) AS Emails_sent,
		SUM(CASE WHEN `action` = "email_open" THEN 1 ELSE 0 END) AS Emails_opened,
		SUM(CASE WHEN `action` = "email_clickthrough" THEN 1 ELSE 0 END ) AS Emails_clicked
	FROM email_events
	GROUP BY user_id
    ) AS email_engagement
GROUP BY user_id;