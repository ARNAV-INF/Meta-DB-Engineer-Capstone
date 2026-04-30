use little_lemon_db;
select menu.Category as "MenuName" from menu
where MenuID = ANY(select MenuID from orders where quantity > 2);