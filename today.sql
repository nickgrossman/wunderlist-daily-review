
/*
 list_id 2 = "today"
 list_id 3 = "daily review"
*/

update tasks set list_id = 3 where list_id = 2;
update tasks set version = version + 1 where list_id = 3;


