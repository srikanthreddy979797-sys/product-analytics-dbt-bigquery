{{ config(
    materialized='table'
) }}

with base as (

    select *
    from {{ ref('customer_360') }}

)

select
    user_id,
    first_seen,
    last_seen,

    date_diff(last_seen, first_seen, day) + 1 as lifetime_days,

    total_purchases,
    total_revenue,

    safe_divide(
        total_revenue,
        date_diff(last_seen, first_seen, day) + 1
    ) as avg_revenue_per_day

from base
