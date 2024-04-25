select 
    CustomerID,
    Segment,
    Country,
    SUM(orderprofit) as Profit
from {{ref('stg_orders')}}
group by 
    CustomerID,
    Segment,
    Country