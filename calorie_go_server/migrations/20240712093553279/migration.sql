BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "monster" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "monster" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "monsterImageIdId" bigint NOT NULL,
    "userId" bigint NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "monster"
    ADD CONSTRAINT "monster_fk_0"
    FOREIGN KEY("monsterImageIdId")
    REFERENCES "monster_image"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "monster"
    ADD CONSTRAINT "monster_fk_1"
    FOREIGN KEY("userId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR calorie_go
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('calorie_go', '20240712093553279', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240712093553279', "timestamp" = now();

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
