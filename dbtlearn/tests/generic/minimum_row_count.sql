{% test minimum_row_count(model, min_row_count) %}
{{ config(severity = 'warn') }}

SELECT
    COUNT(*) as cnt
FROM
    {{ model }}
HAVING
    COUNT(*) < {{ min_row_count }}
{% endtest %}

--This is a custom generic test which we define and then can use in the schema.yml to run test on a model
--This will fail if the condition is met.