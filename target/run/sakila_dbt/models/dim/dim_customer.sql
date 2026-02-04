
      
  
    

  create  table "postgres"."dim"."dim_customer__dbt_tmp"
  
  
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
loc.address as address_name,
loc.city as city_name,
loc.country as country_name,
c.first_name || ' ' || c.last_name as full_name,
right(c.email, length(c.email) - position('@' in c.email)) as domain,
case when c.activebool then 'yes' else 'no' end as active_desc,
c.*,
'2025-06-15 18:34:37.444518+00:00'::timestamp AT TIME ZONE 'UTC' as etl_time,
'2025-06-15 18:34:37' as etl_time_str
from "postgres"."stg"."customer" as c
left join __dbt__cte__location_data as loc on loc.address_id = c.address_id
  );
  
  