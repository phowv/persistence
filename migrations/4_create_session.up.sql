CREATE SCHEMA sessions;

CREATE TABLE sessions.sessions (
  "session_uuid" UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  "user_uuid" UUID NOT NULL REFERENCES users.users(user_uuid),
  "hash_token" TEXT NOT NULL,
  "expires_at" TIMESTAMPTZ NOT NULL,
  "is_revoked" BOOLEAN NOT NULL DEFAULT FALSE
);
