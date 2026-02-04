
  create view "postgres"."dwh"."fact_payment__dbt_tmp"
    
    
  as (
    


select
    *,
    '2025-06-08 17:58:56.485889+00:00'::timestamp AT TIME ZONE 'UTC' as etl_time
from "postgres"."stg"."payment"
  );