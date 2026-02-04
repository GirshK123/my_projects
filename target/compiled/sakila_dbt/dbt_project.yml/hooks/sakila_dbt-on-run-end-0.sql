
    
        UPDATE dwh.log_table SET end_at = clock_timestamp(), run_duration = extract(epoch from (clock_timestamp() - start_at)) WHERE id = 'a68f4521-1d09-4030-a579-64b16d44aa50' and model_name = 'general';
    

