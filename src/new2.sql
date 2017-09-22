create table area(
    area_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    height int,
    name varchar(20),
    pos_x int,
    pos_y int,
    dateDAY DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
