
  
    

    create or replace table `spherical-list-484512-m3`.`growth_dw`.`ltv_model`
      
    
    

    
    OPTIONS()
    as (
      

with base as (

    select *
    from `spherical-list-484512-m3`.`growth_dw`.`customer_360`

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
    );
  