select 
    film.*,
    lang.name as language_name,
    film_cat.category_id,
    cat.name as category_name,
    case
        when length <= 75 then 'short'
        when length >= 120 then 'long'
        else 'medium'
    end as lenght_desc,
'2025-07-27 07:17:26.391906+00:00'::timestamp AT TIME ZONE 'UTC' as etl_time,
'2025-07-27 07:17:26' as etl_time_str

from "postgres"."stg"."film" as film
left join "postgres"."stg"."film_category" as film_cat on film.film_id = film_cat.film_id
left join "postgres"."stg"."category" as cat on film_cat.category_id = cat.category_id
left join "postgres"."stg"."language" as lang on film.language_id = lang.language_id