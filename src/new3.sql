CREATE table buy_system(
    key_1 varchar(20),
    key_2 varchar(20),
    area_id int,
    item_id int,
    counter int,
    unit int,
    money int,
    price int,
    dateDAY DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE table buy_user(
    key_1 varchar(20),
    key_2 varchar(20),
    area_id int,
    item_id int,
    counter int,
    unit int,
    money int,
    price int,
    dateDAY DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE table buy_request(
    key_1 varchar(20),
    key_2 varchar(20),
    area_id int,
    item_id int,
    counter int,
    unit int,
    money int,
    price int,
    dateDAY DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
CREATE table buy_area(
    key_1 varchar(20),
    key_2 varchar(20),
    area_id int,
    item_id int,
    counter int,
    unit int,
    money int,
    price int,
    dateDAY DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
