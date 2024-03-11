Create table FINAL_DATA as
SELECT    
    date,
    week::text,
    quarter::text,
    country,
    platform,
    'project_created' as kpi,
    'None' as cancel_reason,
    'None' as subscription_type,
    sum(project_created) value
FROM dev.public.project_kpis 
GROUP BY 1, 2,3,4,5,6
HAVING SUM(project_created) <> 0

UNION ALL

SELECT    
    date,
    week::text,
    quarter::text,
    country,
    platform,
    'project_exported' as kpi,
    'None' as cancel_reason,
    'None' as subscription_type,
    sum(project_exported) value
FROM dev.public.project_kpis 
GROUP BY 1, 2,3,4,5,6
HAVING SUM(project_exported) <> 0

UNION ALL

SELECT    
    date,
    week::text,
    quarter::text,
    country,
    platform,
    'editors_opened' as kpi,
    'None' as cancel_reason,
    'None' as subscription_type,
    sum(editors_opened) value
FROM dev.public.project_kpis 
GROUP BY 1, 2,3,4,5,6
HAVING SUM(editors_opened) <> 0

UNION ALL

SELECT    
    date,
    week::text,
    quarter::text,
    country,
    platform,
    'project_downloaded' as kpi,
    'None' as cancel_reason,
    'None' as subscription_type,
    sum(project_downloaded) value
FROM dev.public.project_kpis 
GROUP BY 1, 2,3,4,5,6
HAVING SUM(project_downloaded) <> 0

UNION ALL

SELECT    
    date,
    week::text,
    quarter::text,
    country,
    platform,
    'exporters' as kpi,
    'None' as cancel_reason,
    'None' as subscription_type,
    sum(exporters) value
FROM dev.public.project_kpis 
GROUP BY 1, 2,3,4,5,6
HAVING SUM(exporters) <> 0

UNION ALL

SELECT    
    date,
    week::text,
    quarter::text,
    country,
    platform,
    'creators' as kpi,
    'None' as cancel_reason,
    'None' as subscription_type,
    sum(creators) value
FROM dev.public.project_kpis 
GROUP BY 1, 2,3,4,5,6
HAVING SUM(creators) <> 0

UNION ALL

SELECT    
    date,
    'None' as week,
    'None' as quarter,
    'None' as country,
    'None' as platform,
    'new_users_monthly_arr' as kpi,
    cancel_reason,
    subscription_type,
    sum(new_users_monthly_arr) value
FROM dev.public.gross_arr  
GROUP BY 1, 2,3,4,5,6,7,8
HAVING SUM(new_users_monthly_arr) <> 0

UNION ALL

SELECT    
    date,
    'None' as week,
    'None' as quarter,
    'None' as country,
    'None' as platform,
    'new_users_yearly_arr' as kpi,
    cancel_reason,
    subscription_type,
    sum(new_users_yearly_arr) value
FROM dev.public.gross_arr  
GROUP BY 1, 2,3,4,5,6,7,8
HAVING SUM(new_users_yearly_arr) <> 0

UNION ALL

SELECT    
    date,
    'None' as week,
    'None' as quarter,
    'None' as country,
    'None' as platform,
    'cancel_users_monthly_arr' as kpi,
    cancel_reason,
    subscription_type,
    sum(cancel_users_monthly_arr) value
FROM dev.public.gross_arr  
GROUP BY 1, 2,3,4,5,6,7,8
HAVING SUM(cancel_users_monthly_arr) <> 0

UNION ALL

SELECT    
    date,
    'None' as week,
    'None' as quarter,
    'None' as country,
    'None' as platform,
    'cancel_users_yearly_arr' as kpi,
    cancel_reason,
    subscription_type,
    sum(cancel_users_yearly_arr) value
FROM dev.public.gross_arr 
GROUP BY 1, 2,3,4,5,6,7,8
HAVING SUM(cancel_users_yearly_arr) <> 0

UNION ALL

SELECT    
    date,
    week::text,
    quarter::text,
    country,
    platform,
    'MAU' as kpi,
    'None' as cancel_reason,
    'None' as subscription_type,
    sum(mau_28d) value
FROM dev.public.mau_28d 
GROUP BY 1, 2,3,4,5,6
HAVING SUM(mau_28d) <> 0

UNION ALL

SELECT    
    date,
    week::text,
    quarter::text,
    country,
    platform,
    'WAU' as kpi,
    'None' as cancel_reason,
    'None' as subscription_type,
    sum(wau) value
FROM dev.public.wau
GROUP BY 1, 2,3,4,5,6
HAVING SUM(wau) <> 0

UNION ALL

SELECT    
    date,
    week::text,
    quarter::text,
    country,
    platform,
    'DAU' as kpi,
    'None' as cancel_reason,
    'None' as subscription_type,
    sum(dau) value
FROM dev.public.dau
GROUP BY 1, 2,3,4,5,6
HAVING SUM(dau) <> 0

ORDER BY 1
