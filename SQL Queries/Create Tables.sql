create database if not exists operation;
use operation;

drop table if exists job_data;
drop table if exists users;
drop table if exists email_events;
drop table if exists events;

	CREATE TABLE job_data (
	ds VARCHAR(20),
    job_id INT,
    actor_id INT,
    event VARCHAR(50),
    language VARCHAR(50),
    time_spent INT,
    org CHAR(1)
);

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    created_at VARCHAR(50),
    company_id INT,
    language VARCHAR(50),
    activated_at VARCHAR(50),
    state VARCHAR(50)
);

CREATE TABLE email_events (
    user_id INT,
    occurred_at VARCHAR(50),
    action VARCHAR(50),
    user_type INT
);

CREATE TABLE events (
    user_id INT,
    occurred_at VARCHAR(50),
    event_type VARCHAR(50),
    event_name VARCHAR(50),
    location VARCHAR(100),
    device VARCHAR(100),
    user_type INT
);
