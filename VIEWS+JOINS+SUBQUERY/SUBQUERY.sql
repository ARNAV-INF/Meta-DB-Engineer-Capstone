use little_lemon_db;
CREATE VIEW MenuDetails AS
select menu.Category as "MenuName" from menu
where MenuID = ANY(select MenuID from orders where quantity > 2);
