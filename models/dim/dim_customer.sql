{{
  config(
    indexes= [{'columns': ['create_date']}],
    post_hook="insert into {{ this }} (customer_id, first_name) values (-1,'NA')"
    ) 
}}

select 
loc.address as address_name,
loc.city as city_name,
loc.country as country_name,
c.first_name || ' ' || c.last_name as full_name,
right(c.email, length(c.email) - position('@' in c.email)) as domain,
case when c.activebool then 'yes' else 'no' end as active_desc,
c.*,
'{{ run_started_at }}'::timestamp AT TIME ZONE 'UTC' as etl_time,
'{{ run_started_at.strftime("%Y-%m-%d %H:%M:%S") }}' as etl_time_str
from {{ source('stg', 'cust') }} as c
left join {{ ref('location_data') }} as loc on loc.address_id = c.address_id