CREATE SCHEMA photo;

CREATE TABLE photo.photo (
  "photo_uuid" UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  "title" TEXT,
  "description" TEXT,
  "filename" TEXT,
  "modified_date" timestamptz
);
