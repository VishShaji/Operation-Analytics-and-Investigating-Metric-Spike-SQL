UPDATE job_data SET ds = STR_TO_DATE(ds,"%Y-%m-%d");

UPDATE events SET occurred_at = STR_TO_DATE(occurred_at,"%d/%m/%Y %H:%i");

UPDATE users SET created_at = STR_TO_DATE(created_at,"%d/%m/%Y %H:%i");
UPDATE users SET activated_at = STR_TO_DATE(activated_at,"%d/%m/%Y %H:%i");

UPDATE email_events SET occurred_at = STR_TO_DATE(occurred_at,"%d-%m-%Y %H:%i");