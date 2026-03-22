


select
  *,
  '2025-06-15 18:34:37.444518+00:00'::timestamp AT TIME ZONE 'UTC' as etl_time,
  '2025-06-15 18:34:37' as etl_time_str
from "postgres"."stg"."payment"

