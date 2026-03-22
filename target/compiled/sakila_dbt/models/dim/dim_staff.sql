

select 
 staff_id,
 first_name,
 last_name,
 email,
 last_update,
 case when active then 1 else 0 end as is_active,
 case when active then 'yes' else 'no' end as active_desc,
 '2025-06-15 18:34:37.444518+00:00'::timestamp AT TIME ZONE 'UTC' as etl_time,
 '2025-06-15 18:34:37' as etl_time_str
from "postgres"."stg"."staff"