
    

        (
            select
                cast('"postgres"."dim"."dim_customer"' as TEXT) as _dbt_source_relation,

                
                    cast("address_name" as character varying(50)) as "address_name" ,
                    cast("city_name" as character varying(50)) as "city_name" ,
                    cast("country_name" as character varying(50)) as "country_name" ,
                    cast("full_name" as text) as "full_name" ,
                    cast("domain" as text) as "domain" ,
                    cast("active_desc" as text) as "active_desc" ,
                    cast("customer_id" as integer) as "customer_id" ,
                    cast("store_id" as smallint) as "store_id" ,
                    cast("first_name" as character varying(45)) as "first_name" ,
                    cast("last_name" as character varying(45)) as "last_name" ,
                    cast("email" as character varying(50)) as "email" ,
                    cast("address_id" as smallint) as "address_id" ,
                    cast("activebool" as boolean) as "activebool" ,
                    cast("create_date" as date) as "create_date" ,
                    cast("last_update" as timestamp without time zone) as "last_update" ,
                    cast("active" as integer) as "active" ,
                    cast("etl_time" as timestamp with time zone) as "etl_time" ,
                    cast("etl_time_str" as text) as "etl_time_str" ,
                    cast(null as integer) as "date_dim_id" ,
                    cast(null as date) as "date_key" ,
                    cast(null as numeric) as "epoch" ,
                    cast(null as text) as "day_name" ,
                    cast(null as numeric) as "day_of_week" ,
                    cast(null as numeric) as "day_of_month" ,
                    cast(null as integer) as "day_of_quarter" ,
                    cast(null as numeric) as "day_of_year" ,
                    cast(null as integer) as "week_of_month" ,
                    cast(null as numeric) as "week_of_year" ,
                    cast(null as numeric) as "month_actual" ,
                    cast(null as text) as "month_name" ,
                    cast(null as text) as "month_name_abbreviated" ,
                    cast(null as numeric) as "quarter_actual" ,
                    cast(null as text) as "quarter_name" ,
                    cast(null as numeric) as "year_actual" ,
                    cast(null as date) as "first_day_of_week" ,
                    cast(null as date) as "last_day_of_week" ,
                    cast(null as date) as "first_day_of_month" ,
                    cast(null as date) as "last_day_of_month" ,
                    cast(null as date) as "first_day_of_quarter" ,
                    cast(null as date) as "last_day_of_quarter" ,
                    cast(null as date) as "first_day_of_year" ,
                    cast(null as date) as "last_day_of_year" ,
                    cast(null as text) as "yyyymm" ,
                    cast(null as boolean) as "weekend_indr" 

            from "postgres"."dim"."dim_customer"

            
        )

        union all
        

        (
            select
                cast('"postgres"."dim"."dim_date"' as TEXT) as _dbt_source_relation,

                
                    cast(null as character varying(50)) as "address_name" ,
                    cast(null as character varying(50)) as "city_name" ,
                    cast(null as character varying(50)) as "country_name" ,
                    cast(null as text) as "full_name" ,
                    cast(null as text) as "domain" ,
                    cast(null as text) as "active_desc" ,
                    cast(null as integer) as "customer_id" ,
                    cast(null as smallint) as "store_id" ,
                    cast(null as character varying(45)) as "first_name" ,
                    cast(null as character varying(45)) as "last_name" ,
                    cast(null as character varying(50)) as "email" ,
                    cast(null as smallint) as "address_id" ,
                    cast(null as boolean) as "activebool" ,
                    cast(null as date) as "create_date" ,
                    cast(null as timestamp without time zone) as "last_update" ,
                    cast(null as integer) as "active" ,
                    cast(null as timestamp with time zone) as "etl_time" ,
                    cast(null as text) as "etl_time_str" ,
                    cast("date_dim_id" as integer) as "date_dim_id" ,
                    cast("date_key" as date) as "date_key" ,
                    cast("epoch" as numeric) as "epoch" ,
                    cast("day_name" as text) as "day_name" ,
                    cast("day_of_week" as numeric) as "day_of_week" ,
                    cast("day_of_month" as numeric) as "day_of_month" ,
                    cast("day_of_quarter" as integer) as "day_of_quarter" ,
                    cast("day_of_year" as numeric) as "day_of_year" ,
                    cast("week_of_month" as integer) as "week_of_month" ,
                    cast("week_of_year" as numeric) as "week_of_year" ,
                    cast("month_actual" as numeric) as "month_actual" ,
                    cast("month_name" as text) as "month_name" ,
                    cast("month_name_abbreviated" as text) as "month_name_abbreviated" ,
                    cast("quarter_actual" as numeric) as "quarter_actual" ,
                    cast("quarter_name" as text) as "quarter_name" ,
                    cast("year_actual" as numeric) as "year_actual" ,
                    cast("first_day_of_week" as date) as "first_day_of_week" ,
                    cast("last_day_of_week" as date) as "last_day_of_week" ,
                    cast("first_day_of_month" as date) as "first_day_of_month" ,
                    cast("last_day_of_month" as date) as "last_day_of_month" ,
                    cast("first_day_of_quarter" as date) as "first_day_of_quarter" ,
                    cast("last_day_of_quarter" as date) as "last_day_of_quarter" ,
                    cast("first_day_of_year" as date) as "first_day_of_year" ,
                    cast("last_day_of_year" as date) as "last_day_of_year" ,
                    cast("yyyymm" as text) as "yyyymm" ,
                    cast("weekend_indr" as boolean) as "weekend_indr" 

            from "postgres"."dim"."dim_date"

            
        )

        