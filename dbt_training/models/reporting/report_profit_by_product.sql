select
    ProductID,
    ProductName,
    Category,
    SubCategory,
    SUM(orderprofit) as Profit
from {{ref('stg_orders')}}
GROUP BY
    ProductID,
    ProductName,
    Category,
    SubCategory