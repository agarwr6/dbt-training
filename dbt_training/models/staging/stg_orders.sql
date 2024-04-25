select 
    o.[OrderID]
    ,o.[OrderDate]
    ,o.[ShipDate]
    ,o.[ShipMode] 
    ,CAST(o.OrderCostPrice AS INT) as OrderCostPrice
    ,CAST(o.OrderSellingPrice AS INT) as OrderSellingPrice
    ,CAST(o.OrderSellingPrice AS INT) - CAST(o.OrderCostPrice AS INT) as orderprofit
    ,c.[CustomerName]
    ,c.[Segment]
    ,c.[Country]
    ,p.[Category]
    ,p.[ProductName]
    ,p.[SubCategory]
    from {{ref('raw_orders')}} as o
    LEFT JOIN {{ref('raw_customer')}} as c
    ON o.[CustomerID] = c.CustomerID
    LEFT JOIN {{ref('raw_product')}} p
    ON p.ProductID = o.ProductID
