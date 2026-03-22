select 
month_name,

  
    sum(
      
      case
      when year_actual = '2020'
        then 1
      else 0
      end
    )
    
      
            as "2020"
      
    
    ,
  
    sum(
      
      case
      when year_actual = '2021'
        then 1
      else 0
      end
    )
    
      
            as "2021"
      
    
    ,
  
    sum(
      
      case
      when year_actual = '2022'
        then 1
      else 0
      end
    )
    
      
            as "2022"
      
    
    ,
  
    sum(
      
      case
      when year_actual = '2023'
        then 1
      else 0
      end
    )
    
      
            as "2023"
      
    
    ,
  
    sum(
      
      case
      when year_actual = '2024'
        then 1
      else 0
      end
    )
    
      
            as "2024"
      
    
    ,
  
    sum(
      
      case
      when year_actual = '2025'
        then 1
      else 0
      end
    )
    
      
            as "2025"
      
    
    
  

from "postgres"."dim"."dim_date"
group by 1