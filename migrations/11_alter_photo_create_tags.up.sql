CREATE TABLE photo.tag (
  "tag_uuid" UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  "tag_name" TEXT NOT NULL UNIQUE,
  "tag_description" TEXT,
  "modified_date" timestamptz
);

ALTER TABLE photo.photo
DROP COLUMN IF EXISTS tags;

CREATE TABLE photo.photo_tags (
  "photo_uuid" UUID NOT NULL,
  "tag_uuid" UUID NOT NULL,
  PRIMARY KEY ("photo_uuid", "tag_uuid"),

  FOREIGN KEY ("photo_uuid") REFERENCES photo.photo("photo_uuid"),
  FOREIGN KEY ("tag_uuid") REFERENCES photo.tag("tag_uuid")
);
