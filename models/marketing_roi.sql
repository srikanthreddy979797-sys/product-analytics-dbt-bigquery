{{ config(
    materialized='table'
) }}

with users as (

    select *
    from {{ ref('ltv_model') }}

),

attribution as (

    select *
    from {{ ref('first_touch_attribution') }}

)

select
    a.first_source as acquisition_channel,

    count(distinct u.user_id) as users_acquired,

    sum(u.total_revenue) as total_revenue,

    avg(u.total_revenue) as avg_ltv

from users u
join attribution a
    on u.user_id = a.user_id

group by acquisition_channel
order by total_revenue desc
