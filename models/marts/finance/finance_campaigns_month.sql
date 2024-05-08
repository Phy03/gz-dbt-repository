SELECT 
EXTRACT(MONTH FROM date_date) AS datemonth
,ROUND(SUM(ads_margin),1) AS ads_margin
,ROUND(SUM(average_basket),1) AS average_basket
,ROUND(SUM(operation_margin),1) AS operation_margin

FROM {{ ref('finance_campaigns_day') }}
GROUP BY datemonth
ORDER BY datemonth DESC