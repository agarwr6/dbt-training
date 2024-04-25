{{
    config(
        materialized = 'table'
    )
}}

select *
FROM [raw].[dbo].[product]