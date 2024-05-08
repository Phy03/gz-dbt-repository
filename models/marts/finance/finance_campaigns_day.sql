SELECT *,
ROUND(operation_margin - ads_cost,1) AS ads_margin
FROM {{ ref('finance_days') }}
JOIN {{ ref('int_campaigns_day') }}
USING (date_date)
ORDER BY date_date DESC