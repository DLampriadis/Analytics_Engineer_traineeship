select 
    e.email as email,-- we want the email
    cast (d.column_1/2 as integer) as column_1_new,-- Column_1 needs to be divisible by 2 without creating a decimal number (or modulo) so we use cast cast as integer.
    d.column_2, -- column_2 needs to be smaller then column_1 so we place it in the where.
    d.column_3   --Column_3 needs to end with a 1 so we use % after 1. 
from data_table d 
    inner join email_table  e --join the data_table with email_table and with inner join we expect the common data.
    on d.join_id = e.join_id --join_id is the only key we use.
where d.column_3 like ('%1') 
and d.column_2 < column_1_new;