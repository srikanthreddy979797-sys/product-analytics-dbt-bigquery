
  
    

    create or replace table `spherical-list-484512-m3`.`growth_dw`.`retention_cohort`
      
    
    

    
    OPTIONS()
    as (
      

-- Step 1: first user activity (cohort date)
with first_activity as (

    select
        user_id,
        min(date(event_timestamp)) as cohort_date
    from `spherical-list-484512-m3`.`growth_dw`.`stg_raw_events`
    group by user_id

),

-- Step 2: user activity by day
user_activity as (

    select
        user_id,
        date(event_timestamp) as activity_date
    from `spherical-list-484512-m3`.`growth_dw`.`stg_raw_events`

),

-- Step 3: join cohort with activity
cohort_events as (

    select
        f.user_id,
        f.cohort_date,
        a.activity_date,
        date_diff(a.activity_date, f.cohort_date, day) as days_since_signup
    from first_activity f
    join user_activity a
      on f.user_id = a.user_id

)

-- Step 4: retention aggregation
select
    cohort_date,
    days_since_signup,
    count(distinct user_id) as retained_users
from cohort_events
group by cohort_date, days_since_signup
order by cohort_date, days_since_signup
    );
  