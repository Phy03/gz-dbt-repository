SELECT sales.*
,purchase_price AS purchase_price
,ROUND(purchase_price*quantity,2) AS purchase_cost
,ROUND(revenue - purchase_price*quantity,2) AS margin
FROM {{ ref('stg_raw__sales') }} AS sales
JOIN {{ ref('stg_raw__product') }} AS product
USING (products_id)



