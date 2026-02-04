
  create view "postgres"."example"."macro_models__dbt_tmp"
    
    
  as (
    select 

    title ||': ' || description
 as macro_example_column,

    lower(regexp_replace(description, '[^a-zA-Z0-9]', '', 'g'))
 as clean_string_macro_example
from "postgres"."stg"."film"
  );