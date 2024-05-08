SELECT
date_date
,COUNT(orders_id) AS nb_transactions
,ROUND(SUM(revenue),1) AS revenue
,ROUND(SUM(revenue)/COUNT(orders_id),1) AS average_basket
,ROUND(SUM(margin),1) AS margin
,ROUND(SUM(operation_margin),1) AS operation_margin
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date
ORDER BY date_date DESC