{% macro learn_variables() %}

    {% set your_name_jinja = "Zoltan" %} 
    {# This is an example of declaring jinja variable #}
    {{ log("Hello " ~ your_name_jinja, info=True) }}

    {{ log("Hello dbt user " ~ var("user_name", "NO USERNAME IS SET!!") ~ "!", info=True) }}
    {# This is the way of using declared variables in dbt the var() is the method to call
    dbt variable the first param is variable name and second is default value if var not found 
    We can also pass variable value from the cmd using 
    dbt run-operation learn_variables --vars "{user_name: zoltanctoth}"
    And also in dbt_project.yml we can declare this variable. The order of precedence for picking
    variable value if all any comb of them is given cmd->dbt_project->dft#}
    {% if var("in_test", False) %}
       {{ log("In test", info=True) }}
    {% else %}
       {{ log("NOT in test", info=True) }}
    {% endif %}

{% endmacro %}