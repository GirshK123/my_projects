
      insert into "postgres"."dim"."dim_film" ("film_id", "title", "description", "release_year", "language_id", "rental_duration", "rental_rate", "length", "replacement_cost", "rating", "last_update", "special_features", "fulltext", "language_name", "category_id", "category_name", "lenght_desc", "etl_time", "etl_time_str")
    (
        select "film_id", "title", "description", "release_year", "language_id", "rental_duration", "rental_rate", "length", "replacement_cost", "rating", "last_update", "special_features", "fulltext", "language_name", "category_id", "category_name", "lenght_desc", "etl_time", "etl_time_str"
        from "dim_film__dbt_tmp101733098690"
    )


  