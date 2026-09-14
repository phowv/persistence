ALTER TABLE users.users
ADD COLUMN "created_at" timestamptz DEFAULT '1970-01-01T00:00:00Z'::timestamptz  NOT NULL;
