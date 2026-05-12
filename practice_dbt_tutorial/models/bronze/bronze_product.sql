SELECT 
*
FROM 
{{ source('STAGING', 'DIM_PRODUCT') }}