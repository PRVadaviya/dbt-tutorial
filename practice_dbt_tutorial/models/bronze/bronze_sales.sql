
{# 
     select
     *
     from DBT_PRACTICE.STAGING.DIM_DATE  
#}

SELECT 
*
FROM 
{{ source('STAGING', 'FACT_SALES') }}