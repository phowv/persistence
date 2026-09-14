ALTER TABLE photo.photo
ADD COLUMN "small_filename" TEXT DEFAULT '' NOT NULL;

UPDATE photo.photo
SET "small_filename" = "filename";
