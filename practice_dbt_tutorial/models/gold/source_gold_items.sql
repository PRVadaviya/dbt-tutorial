
with dedup_query as (
     select 
          *,
          ROW_NUMBER() OVER(PARTITION BY id ORDER BY updateDate DESC) as deduplicationId
     from 
          {{ source('STAGING', 'ITEMS')}}
)

select 
     id,
     name,
     category,
     updateDate
from 
     dedup_query
where 
     deduplicationId = 1