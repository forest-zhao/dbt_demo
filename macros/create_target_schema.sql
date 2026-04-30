{% macro create_target_schema() %}
    {% set sql %}
        CREATE SCHEMA IF NOT EXISTS {{ target.database }}.{{ target.schema }};
    {% endset %}
    {% do run_query(sql) %}
{% endmacro %}