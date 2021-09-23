
-- Use the `ref` function to select from other models

SELECT 
    start_station_name, 
    end_station_name, 
    count(*) trips
FROM 
    {{ ref('my_first_dbt_model') }}
GROUP BY 1,2 
ORDER BY 3 desc   