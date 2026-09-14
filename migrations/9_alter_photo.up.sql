ALTER TABLE photo.photo
ADD COLUMN "medium_filename" TEXT DEFAULT '' NOT NULL;

UPDATE photo.photo
SET "medium_filename" = "filename";
