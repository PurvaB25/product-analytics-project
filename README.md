# product-analytics-project

Project Overview
This project was initiated to gain a deeper understanding of how Key Performance Indicators (KPIs) work in the industry. The idea was to simulate a scenario similar to a real-world product like Canva and generate synthetic data using Python. The generated data consists of three main datasets:

General Data: Contains information about user interactions such as user_id, event_name (e.g., project created, project downloaded), platform (mobile, web), country, date, new or returning customer indicator, and event_id.

Mapping Data: Maps dates to weeks and quarters for better time-based analysis.

Subscription Data: Provides details about subscription-related events such as subscription type (yearly, monthly), subscription price, discount, cancel reason, etc.

After generating the data, it is stored in Amazon S3 buckets for easy access and scalability. For analyzing different KPIs, the data is connected to Amazon Redshift, a powerful data warehousing solution. For visualization purposes, Tableau is utilized to create insightful dashboards and reports.

Some of the key KPIs that can be derived from the generated data include:

Number of projects created,
Number of projects exported,
Number of editor opens,
Number of exporters,
Number of project creators,
Monthly Active Users (MAU),
Weekly Active Users (WAU),
Gross Annual Recurring Revenue (ARR),
Monthly and yearly Cancel ARR.

https://public.tableau.com/app/profile/purva.badve3971/viz/Product_Analytics/Dashboard2?publish=yes

This project serves as a practical exploration of KPIs commonly used in product analytics and provides hands-on experience in data generation, storage, analysis, and visualization using modern tools and technologies.
