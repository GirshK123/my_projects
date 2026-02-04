
  create view "postgres"."example"."dim_date_star_exclude__dbt_tmp"
    
    
  as (
    select 
    dim_date."date_key",
  dim_date."day_name",
  dim_date."day_of_week",
  dim_date."day_of_month",
  dim_date."day_of_quarter",
  dim_date."day_of_year",
  dim_date."week_of_month",
  dim_date."week_of_year",
  dim_date."month_actual",
  dim_date."month_name",
  dim_date."quarter_actual",
  dim_date."quarter_name",
  dim_date."year_actual",
  dim_date."first_day_of_week",
  dim_date."last_day_of_week",
  dim_date."first_day_of_month",
  dim_date."last_day_of_month",
  dim_date."first_day_of_quarter",
  dim_date."last_day_of_quarter",
  dim_date."first_day_of_year",
  dim_date."last_day_of_year",
  dim_date."yyyymm",
    cust.address_name as address_name_cust,
  cust.city_name as city_name_cust,
  cust.country_name as country_name_cust,
  cust.full_name as full_name_cust,
  cust.domain as domain_cust,
  cust.active_desc as active_desc_cust,
  cust.customer_id as customer_id_cust,
  cust.store_id as store_id_cust,
  cust.first_name as first_name_cust,
  cust.last_name as last_name_cust,
  cust.email as email_cust,
  cust.address_id as address_id_cust,
  cust.activebool as activebool_cust,
  cust.create_date as create_date_cust,
  cust.last_update as last_update_cust,
  cust.active as active_cust,
  cust.etl_time as etl_time_cust,
  cust.etl_time_str as etl_time_str_cust
from "postgres"."dim"."dim_date" as dim_date
right join "postgres"."dim"."dim_customer" as cust on cust.create_date = dim_date.date_key
  );