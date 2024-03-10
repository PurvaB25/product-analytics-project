create table gross_arr as
SELECT
    date,
    subscription_type,
    cancel_reason,
    ROUND(SUM(CASE WHEN type = 'new_arr' AND subscription_type = 'monthly' THEN subscription_price ELSE 0 END), 2) AS new_users_monthly_arr,
    ROUND(SUM(CASE WHEN type = 'new_arr' AND subscription_type = 'yearly' THEN subscription_price - discount ELSE 0 END), 2) AS new_users_yearly_arr,
    ROUND(SUM(CASE WHEN type = 'cancel_arr' AND subscription_type = 'monthly' THEN subscription_price ELSE 0 END), 2) AS cancel_users_monthly_arr,
    ROUND(SUM(CASE WHEN type = 'cancel_arr' AND subscription_type = 'yearly' THEN subscription_price - discount ELSE 0 END), 2) AS cancel_users_yearly_arr
FROM
    dev.public.subscription
GROUP BY
    date,
    subscription_type,
    cancel_reason
ORDER BY
    date;
