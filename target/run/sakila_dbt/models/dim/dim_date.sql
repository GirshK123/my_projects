
      insert into "postgres"."dim"."dim_date" ("date_dim_id", "date_key", "epoch", "day_name", "day_of_week", "day_of_month", "day_of_quarter", "day_of_year", "week_of_month", "week_of_year", "month_actual", "month_name", "month_name_abbreviated", "quarter_actual", "quarter_name", "year_actual", "first_day_of_week", "last_day_of_week", "first_day_of_month", "last_day_of_month", "first_day_of_quarter", "last_day_of_quarter", "first_day_of_year", "last_day_of_year", "yyyymm", "weekend_indr")
    (
        select "date_dim_id", "date_key", "epoch", "day_name", "day_of_week", "day_of_month", "day_of_quarter", "day_of_year", "week_of_month", "week_of_year", "month_actual", "month_name", "month_name_abbreviated", "quarter_actual", "quarter_name", "year_actual", "first_day_of_week", "last_day_of_week", "first_day_of_month", "last_day_of_month", "first_day_of_quarter", "last_day_of_quarter", "first_day_of_year", "last_day_of_year", "yyyymm", "weekend_indr"
        from "dim_date__dbt_tmp223603649179"
    )


  