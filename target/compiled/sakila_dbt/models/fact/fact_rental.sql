

with refresh_date as (
    select 
        from_date
    from "postgres"."stg"."z_refresh_from"
    where table_name = '"postgres"."fact"."fact_rental"' and to_refresh = 1
),
max_rental_date as (
    select max(rental_date) as max_rental_date
    from "postgres"."stg"."rental"
)

select 
    rental.rental_id,
    case when film.film_id is not null then film.film_id else -1 end as film_id,
    case when cust.customer_id is not null then cust.customer_id else -1 end as customer_id,
    case when staff.staff_id is not null then staff.staff_id else -1 end as staff_id,
    case when store.store_id is not null then store.store_id else -1 end as store_id,
    to_char(rental.rental_date, 'YYYYMMDD')::int as date_key,
    case when return_date is null then 0 else 1 end as is_return,
    extract(epoch from (return_date - rental.rental_date))/3600 as return_date_hr,
    '2025-06-15 18:34:37.444518+00:00'::timestamp AT TIME ZONE 'UTC' as etl_time,
    '2025-06-15 18:34:37' as etl_time_str

from "postgres"."stg"."rental" as rental
left join "postgres"."stg"."inventory" as inv on inv.inventory_id = rental.inventory_id
left join "postgres"."dim"."dim_customer"  as cust on rental.customer_id = cust.customer_id
left join "postgres"."dim"."dim_staff" as staff on staff.staff_id = rental.staff_id
left join "postgres"."dim"."dim_store" as store on store.store_id = inv.store_id
left join "postgres"."dim"."dim_film" as film on film.film_id = inv.film_id

