CREATE TABLE users.codes (
  "user_uuid" UUID PRIMARY KEY REFERENCES users.users(user_uuid),
  "hash_code" TEXT,
  "created_at" TIMESTAMPTZ NOT NULL,
  "expires_at" TIMESTAMPTZ NOT NULL
);

ALTER TABLE users.users
ADD COLUMN "is_active" BOOLEAN DEFAULT FALSE NOT NULL;

UPDATE users.users
SET "is_active" = TRUE;
