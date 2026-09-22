CREATE TYPE user_role AS ENUM('user', 'moderator', 'admin');

ALTER TABLE users.users
ALTER COLUMN "role" TYPE user_role SET DEFAULT 'user' NOT NULL;
