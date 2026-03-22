

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