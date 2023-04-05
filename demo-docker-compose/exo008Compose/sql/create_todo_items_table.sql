CREATE DATABASE IF NOT EXISTS todo_db;
USE todo_db;
CREATE TABLE IF NOT EXISTS todo_items (
    id INT(11) NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    is_completed BOOLEAN NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;