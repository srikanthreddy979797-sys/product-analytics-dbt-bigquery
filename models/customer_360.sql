{{ config(
    materialized='table'
) }}

with base as (

    select
        user_id,
        min(event_timestamp) as first_seen,
        max(event_timestamp) as last_seen,
        countif(event_name = 'purchase') as total_purchases,
        sum(if(event_name = 'purchase', revenue, 0)) as total_revenue

    from {{ ref('stg_raw_events') }}


    group by user_id

)

select * from base
