-- Question: Write a SQL query to retrieve all the phone numbers that are in the all_numbers table 
-- but are not present in the confirmed numbers table.

select * from all_numbers an
where (select count(*) from confirmed_numbers cn where cn.phone_numbers = an.phone_numbers) = 0