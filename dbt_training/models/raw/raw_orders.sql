{{
    config(
        materialized = 'table'
    )


}}

select * 
from [raw].[dbo].[orders]