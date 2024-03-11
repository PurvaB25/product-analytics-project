CREATE table MAU as 
SELECT
    d.date,
    week,
    quarter,
    year,
    country,
    platform,
    COUNT(DISTINCT d.user_id) AS mau_28d
FROM
    dev.public.date_week_quater d
JOIN (
    SELECT
        date,
        user_id
    FROM
        dev.public.date_week_quater
    GROUP BY
        date,
        user_id
) t ON d.date >= t.date
    AND d.date <= t.date + INTERVAL '27 days'
GROUP BY
    d.date,
    week,
    quarter,
    year,
    country,
    platform
ORDER BY
    d.date;
