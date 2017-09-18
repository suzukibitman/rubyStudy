create table itemInfo(
    category varchar(10),
    item_id int not null auto_increment primary key,
    name varchar(30),
    scale varchar(20),
    sort int,
    dataDAY DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
