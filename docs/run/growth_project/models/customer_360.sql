
  
    

    create or replace table `spherical-list-484512-m3`.`growth_dw`.`customer_360`
      
    
    

    
    OPTIONS()
    as (
      

with base as (

    select
        user_id,
        min(event_timestamp) as first_seen,
        max(event_timestamp) as last_seen,
        countif(event_name = 'purchase') as total_purchases,
        sum(if(event_name = 'purchase', revenue, 0)) as total_revenue

    from `spherical-list-484512-m3`.`growth_dw`.`stg_raw_events`


    group by user_id

)

select * from base
    );
  