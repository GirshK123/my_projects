{{
  config(
    unique_key = 'payment_id',
    )
}}


select
  *,
  '{{ run_started_at }}'::timestamp AT TIME ZONE 'UTC' as etl_time,
  '{{ run_started_at.strftime("%Y-%m-%d %H:%M:%S") }}' as etl_time_str
from {{ source('stg', 'payment') }}

{% if is_incremental() %}
  where payment_date >= coalesce((select max(payment_date) from {{ this }}), '1900-01-01')
{% endif %}