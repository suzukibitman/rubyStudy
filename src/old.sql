create table users (
    id int not null auto_increment primary key,
    name varchar(255),
    email varchar(255) unique,
    password char(32),
    score double,
    sex enum('male', 'female') default 'male',
    memo text,
    created datetime,
    key score (score)
);
