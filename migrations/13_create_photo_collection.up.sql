CREATE SCHEMA collection;

CREATE TABLE collection.collection(
  collection_uuid UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  owner_uuid UUID REFERENCES users.users("user_uuid"),
  title TEXT NOT NULL,
  description TEXT,
  created_at timestamptz,
  access_level access_modifier,

  UNIQUE(owner_uuid, title)
);

CREATE TABLE collection.collection_photos(
  collection_uuid UUID NOT NULL REFERENCES collection.collection("collection_uuid"),
  photo_uuid UUID NOT NULL REFERENCES photo.photo("photo_uuid"),

  PRIMARY KEY("collection_uuid", "photo_uuid")
);

CREATE TABLE collection.permitted_users (
  "collection_uuid" UUID NOT NULL REFERENCES collection.collection("collection_uuid"),
  "user_uuid" UUID NOT NULL REFERENCES users.users("user_uuid"),

  PRIMARY KEY ("collection_uuid", "user_uuid")
);

CREATE TABLE collection.access_link(
  "collection_uuid" UUID PRIMARY KEY REFERENCES collection.collection("collection_uuid"),
  "hash_code" TEXT NOT NULL,
  "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  "expires_at" TIMESTAMPTZ NOT NULL,
  "is_revoked" BOOLEAN NOT NULL DEFAULT FALSE
);

ALTER TABLE users.users
ADD COLUMN "collections_quota" INT DEFAULT 0  NOT NULL;
