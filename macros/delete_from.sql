{% macro delete_from(table) %}

    {% if is_incremental() %}
      delete from {{ table }}
    {% endif %}

{% endmacro %}