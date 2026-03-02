
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select user_id
from `spherical-list-484512-m3`.`growth_dw`.`stg_raw_events`
where user_id is null



  
  
      
    ) dbt_internal_test