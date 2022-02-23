
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE users (
                       id INT NOT NULL AUTO_INCREMENT,
                       uuid varchar(255) NOT NULL,
                       email varchar(255) DEFAULT NULL,
                       created_at datetime DEFAULT NULL,
                       updated_at datetime DEFAULT NULL,
                       deleted_at timestamp NULL DEFAULT NULL,
                       INDEX user_id (id),
                       PRIMARY KEY(id)
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE users;
