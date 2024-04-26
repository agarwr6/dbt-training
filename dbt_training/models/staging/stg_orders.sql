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
    ,c.CustomerID
    ,p.[Category]
    ,p.[ProductName]
    ,p.[SubCategory]
    ,p.ProductID
    from {{ref('raw_orders')}} as o
    LEFT JOIN {{ref('raw_customers')}} as c
    ON o.[CustomerID] = c.CustomerID
    LEFT JOIN {{ref('raw_product')}} p
    ON p.ProductID = o.ProductID
