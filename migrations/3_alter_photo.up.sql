ALTER TABLE photo.photo
ADD COLUMN "owner_uuid" UUID DEFAULT '00000000-0000-0000-0000-000000000000'::uuid NOT NULL,
ADD COLUMN "tags" TEXT DEFAULT '' NOT NULL,
ADD COLUMN "took_at" timestamptz DEFAULT '1970-01-01T00:00:00Z'::timestamptz  NOT NULL,
ADD COLUMN "created_at" timestamptz DEFAULT '1970-01-01T00:00:00Z'::timestamptz  NOT NULL,
ADD CONSTRAINT fk_owner_photo FOREIGN KEY (owner_uuid) REFERENCES users.users(user_uuid) NOT VALID;

UPDATE photo.photo
SET "took_at" = "modified_date", "created_at" = "modified_date";
