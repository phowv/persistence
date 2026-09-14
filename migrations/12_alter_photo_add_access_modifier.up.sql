CREATE TYPE access_modifier AS ENUM('private', 'protected', 'public');

ALTER TABLE photo.photo
ADD COLUMN "access_level" access_modifier DEFAULT 'private' NOT NULL;

CREATE TABLE photo.permitted_users (
  "photo_uuid" UUID NOT NULL,
  "user_uuid" UUID NOT NULL,
  PRIMARY KEY ("photo_uuid", "user_uuid"),

  FOREIGN KEY ("photo_uuid") REFERENCES photo.photo("photo_uuid"),
  FOREIGN KEY ("user_uuid") REFERENCES users.users("user_uuid")
);

CREATE TABLE photo.access_link (
  "photo_uuid" UUID PRIMARY KEY REFERENCES photo.photo("photo_uuid"),
  "hash_code" TEXT NOT NULL,
  "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  "expires_at" TIMESTAMPTZ NOT NULL,
  "is_revoked" BOOLEAN NOT NULL DEFAULT FALSE
);
