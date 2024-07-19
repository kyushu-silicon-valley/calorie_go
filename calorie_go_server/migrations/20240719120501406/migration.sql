BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "calorie_go_user" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "calorie_go_user" (
    "id" bigserial PRIMARY KEY,
    "authId" text NOT NULL,
    "authUserId" bigint NOT NULL,
    "nickname" text NOT NULL,
    "gender" bigint NOT NULL
);


--
-- MIGRATION VERSION FOR calorie_go
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('calorie_go', '20240719120501406', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240719120501406', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240520102713718', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240520102713718', "timestamp" = now();


COMMIT;
