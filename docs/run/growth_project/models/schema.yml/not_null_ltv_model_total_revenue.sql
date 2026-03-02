
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_revenue
from `spherical-list-484512-m3`.`growth_dw`.`ltv_model`
where total_revenue is null



  
  
      
    ) dbt_internal_test