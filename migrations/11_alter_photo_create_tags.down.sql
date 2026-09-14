DROP TABLE photo.photo_tags;

ALTER TABLE photo.photo
ADD COLUMN "tags" TEXT DEFAULT '' NOT NULL;

DROP TABLE photo.tag CASCADE;
