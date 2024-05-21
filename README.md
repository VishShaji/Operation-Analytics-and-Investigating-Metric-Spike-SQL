# Operational Analytics and Investigating Metric Spikes | SQL

This project showcases the power of data analysis for optimizing business operations and investigating unexpected metric fluctuations. I have leveraged my SQL expertise to unlock valuable insights from various datasets and tables.

## Authors

- [@VishalShaji](https://www.github.com/VishShaji)

## Tech Stack

- MySQL

## Data Source:

This project was one of the 8 projects to be done in my Data Analytics Internship. Data Source was provided by the company.

## Project Goals

- Enhance Operational Efficiency: Identify areas for improvement within the company's operations by analyzing key metrics and user behavior.
- Investigate Metric Spikes & Dips: Utilize advanced SQL techniques to pinpoint the root causes of sudden changes in critical metrics, such as user engagement, sales figures, or support ticket volume.
- Actionable Insights for Departments: Collaborate with departments like operations, support, and marketing to translate data insights into actionable strategies that drive business growth.

## Part 1: Job Data Analysis

### Dataset Information

The dataset for the first part of the project involves a table named job_data with the following columns:

- job_id: Unique identifier of jobs
- actor_id: Unique identifier of actor
- event: The type of event (decision/skip/transfer).
- language: The Language of the content
- time_spent: Time spent to review the job in seconds.
- org: The Organization of the actor
- ds: The date in the format yyyy/mm/dd (stored as text).

### Data Analysis

- Jobs Reviewed Over Time: Analyzed how many jobs were reviewed each hour for every day in November 2020. This helps understand workload distribution.
- Throughput Analysis: Calculated the 7-day rolling average of events per second to identify trends over a weekly period, useful for strategic planning. Daily metrics provide real-time insights for operational decisions.
- Language Share Analysis: Identified the percentage share of each programming language used in the past 30 days. This helps understand which languages are most common in the data.
- Duplicate Rows Detection: This query identifies rows in the job_data table that are considered duplicates based on specific columns.

## Part 2: Investigating Metric Spike

### Dataset Information

The dataset involved in the Part 2 of the analysis contains three tables:

- users: Contains one row per user, with descriptive information about that user’s account.
- events: Contains one row per event, where an event is an action that a user has taken (e.g., login, messaging, search).
- email_events: Contains events specific to the sending of emails.

### Data Analysis

- Weekly User Engagement: Tracked user activity on a weekly basis to understand user behavior and preferences.
- User Growth Analysis: Analyzed user acquisition and growth over time to aid strategic planning.
- Weekly Retention Analysis: Analyzed how many users stay active after signing up to identify areas for improvement in user retention.
- Weekly Engagement Per Device: Measured user activity on a weekly basis for each device to optimize user experiences on specific devices.
- Email Engagement Analysis: Analyzed user engagement with email campaigns by calculating metrics like open rates, click-through rates, and success percentages.

## Benefits:

Improved operational efficiency through data-driven decision-making.
Enhanced understanding of user behavior and preferences.
Faster identification and resolution of issues impacting key metrics.

This project demonstrates expertise in using SQL for operational analytics and investigating metric spikes, a valuable skillset for any organization seeking to optimize business processes and make data-driven decisions.


## License

[MIT License](https://choosealicense.com/licenses/mit/)

Copyright (c) 2024 Vishal Shaji

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
