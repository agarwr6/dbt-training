{{
    config(
        materialized = 'table'
    )
}}

select *
FROM [raw].[dbo].[customers]