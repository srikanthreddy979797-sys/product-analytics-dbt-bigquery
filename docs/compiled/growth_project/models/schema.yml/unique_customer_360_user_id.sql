
    
    

with dbt_test__target as (

  select user_id as unique_field
  from `spherical-list-484512-m3`.`growth_dw`.`customer_360`
  where user_id is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


