
drop table if exists `user`;
CREATE TABLE `user` (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255),
    email VARCHAR(255),
    is_banned BOOLEAN
);

drop table if exists goods;
CREATE TABLE goods (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255),
    price DOUBLE,
    user_id bigint,
    category VARCHAR(255),
    foreign key (user_id) references `user`(id)
);
