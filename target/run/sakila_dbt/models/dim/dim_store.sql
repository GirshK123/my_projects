
      
  
    

  create  table "postgres"."dim"."dim_store__dbt_tmp"
  
  
    as
  
  (
    

with __dbt__cte__location_data as (


select 
address.address_id,
address.address,
city.city_id,
city.city,
country.country_id,
country.country
from "postgres"."stg"."address" as address 
left join "postgres"."stg"."city" as city on address.city_id = city.city_id
left join "postgres"."stg"."country" as country on country.country_id = city.country_id
) select 
 store.*,
 loc.address as address_name,
 loc.city as city_name,
 loc.country as country_name,
 staff.first_name,
 staff.last_name,
 '2025-06-15 18:34:37.444518+00:00'::timestamp AT TIME ZONE 'UTC' as etl_time,
 '2025-06-15 18:34:37' as etl_time_str
from "postgres"."stg"."store" as store
left join "postgres"."dim"."dim_staff" as staff on store.manager_staff_id = staff.staff_id
left join __dbt__cte__location_data as loc on store.address_id = loc.address_id
  );
  
  