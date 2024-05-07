SELECT
margin_table.*
,ROUND(margin + shipping_fee - logcost - ship_cost,2) AS operation_margin
,shipping_fee
,logcost
,ship_cost
FROM {{ ref('int_orders_margin') }} AS margin_table
JOIN {{ ref('stg_raw__ship') }} AS ship
USING(orders_id)
ORDER BY orders_id DESC