{% macro select_positive_values(model, column_name) %}
    SELECT *
    FROM {{ model }}
    WHERE {{ column_name }} > 0
{% endmacro %}
--You can also execute a particular jinja by dbt run --inline {{dbt_function}}
--dbt compile --inline '{{ select_positive_values("dim_listings_cleansed", "price") }}' 
--dbt show --inline '{{ select_positive_values("dim_listings_cleansed", "price") }}' 