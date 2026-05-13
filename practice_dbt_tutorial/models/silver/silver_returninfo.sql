
with return_data as (
     select 
          sales_id,
          store_sk,
          product_sk,
          return_reason,
          refund_amount
     from 
          {{ref("bronze_returns")}}
),
store as (
     select 
          store_sk,
          store_name,
          country
     from 
          {{ref("bronze_store")}}
),
product as (
     select
          product_sk,
          department,
          category
     from 
          {{ ref("bronze_product") }}
),
joined_query as (
     select
          r.sales_id,
          r.return_reason,
          r.refund_amount,
          p.category,
          p.department,
          s.store_name
     from
          return_data r
     join
          store s
          on r.store_sk = s.store_sk
     join
          product p
          on r.product_sk = p.product_sk
)

select 
     return_reason,
     store_name,
     sum(refund_amount) as total_refund_amount
from 
     joined_query
group by return_reason,store_name