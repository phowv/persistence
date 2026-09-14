DROP TABLE IF EXISTS collection.collection_photos CASCADE;

DROP TABLE IF EXISTS collection.permitted_users CASCADE;

DROP TABLE IF EXISTS collection.access_link CASCADE;

DROP TABLE IF EXISTS collection.collection CASCADE;

DROP SCHEMA collection;

ALTER TABLE users.users DROP COLUMN collections_quota;
