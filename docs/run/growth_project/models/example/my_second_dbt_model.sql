

  create or replace view `spherical-list-484512-m3`.`growth_dw`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `spherical-list-484512-m3`.`growth_dw`.`my_first_dbt_model`
where id = 1;

