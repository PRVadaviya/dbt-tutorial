{{ config(materialized = 'table')}}

SELECT 
*
FROM 
{{ source('STAGING', 'DIM_STORE') }}