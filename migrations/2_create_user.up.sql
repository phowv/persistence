CREATE SCHEMA users;

CREATE TABLE users.users (
  "user_uuid" UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  "login" TEXT,
  "hash_password" TEXT,
  "email" TEXT,
  "description" TEXT,
  "role" TEXT
);
