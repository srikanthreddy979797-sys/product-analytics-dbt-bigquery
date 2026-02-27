{{ config(
    materialized='table'
) }}

with base as (

    select *
    from {{ ref('retention_cohort') }}

)

select
    cohort_date,

    countif(days_since_signup = 0) as day_0,
    countif(days_since_signup = 1) as day_1,
    countif(days_since_signup = 2) as day_2,
    countif(days_since_signup = 3) as day_3,
    countif(days_since_signup = 7) as day_7,
    countif(days_since_signup = 14) as day_14,
    countif(days_since_signup = 30) as day_30

from base
group by cohort_date
order by cohort_date
