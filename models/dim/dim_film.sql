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
'{{ run_started_at }}'::timestamp AT TIME ZONE 'UTC' as etl_time,
'{{ run_started_at.strftime("%Y-%m-%d %H:%M:%S") }}' as etl_time_str
{% for feature in my_column_list %}
    case when film.special_features  ilike '%{{ feature }}%' then 1 else 0 end as "is_{{feature}}"
    {% if not loop.last %}, {% endif %}
{% endfor %}
from {{ source('stg', 'film') }} as film
left join {{ source('stg', 'film_category') }} as film_cat on film.film_id = film_cat.film_id
left join {{ source('stg', 'category') }} as cat on film_cat.category_id = cat.category_id
left join {{ source('stg', 'language') }} as lang on film.language_id = lang.language_id