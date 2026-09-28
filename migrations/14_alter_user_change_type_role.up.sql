CREATE TYPE user_role AS ENUM('user', 'moderator', 'admin');

ALTER TABLE users.users
ALTER COLUMN "role" TYPE user_role
USING CASE
  WHEN role IN ('user', 'moderator', 'admin')
    THEN role::user_role
  ELSE 'user'::user_role
END;

ALTER TABLE users.users
ALTER COLUMN role SET DEFAULT 'user',
ALTER COLUMN role SET NOT NULL;
