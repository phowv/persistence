ALTER TABLE photo.photo
DROP COLUMN IF EXISTS "access_level";

DROP TYPE IF EXISTS access_modifier;

DROP TABLE IF EXISTS photo.permitted_users;

DROP TABLE IF EXISTS photo.access_link;
