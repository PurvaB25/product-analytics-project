CREATE table DAU as 
SELECT
    d.date,
    week,
    quarter,
    year,
    country,
    platform,
    COUNT(DISTINCT d.user_id) AS dau
FROM
    dev.public.date_week_quater d
GROUP BY
    d.date,
    week,
    quarter,
    year,
    country,
    platform
ORDER BY
    d.date;
