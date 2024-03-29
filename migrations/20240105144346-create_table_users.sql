
-- +migrate Up
CREATE TABLE IF NOT EXISTS `users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(45) NULL,
  `phone` VARCHAR(15) NULL,
  `gender` VARCHAR(1) NULL,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (id),
  CONSTRAINT `UQ_user_email` UNIQUE (`email`),
  CONSTRAINT `UQ_user_phone` UNIQUE (`phone`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- +migrate Down
DROP TABLE IF EXISTS users;

