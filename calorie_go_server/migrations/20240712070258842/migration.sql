BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "calorie_go_user" (
    "id" bigserial PRIMARY KEY,
    "authId" text NOT NULL,
    "nickname" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "exercise" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "startedAt" timestamp without time zone NOT NULL,
    "endedAt" timestamp without time zone,
    "totalSteps" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "monster" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "monsterImageIdId" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "monster_image" (
    "id" bigserial PRIMARY KEY,
    "imageUrl" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "ticketm_master" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "desctiption" text NOT NULL,
    "prompt" text NOT NULL,
    "ticketType" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user_exercise_hist" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "steps" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user_ticket" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "ticketMasterId" bigint NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "exercise"
    ADD CONSTRAINT "exercise_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "calorie_go_user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "monster"
    ADD CONSTRAINT "monster_fk_0"
    FOREIGN KEY("monsterImageIdId")
    REFERENCES "monster_image"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "user_exercise_hist"
    ADD CONSTRAINT "user_exercise_hist_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "calorie_go_user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "user_ticket"
    ADD CONSTRAINT "user_ticket_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "calorie_go_user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "user_ticket"
    ADD CONSTRAINT "user_ticket_fk_1"
    FOREIGN KEY("ticketMasterId")
    REFERENCES "ticketm_master"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR calorie_go
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('calorie_go', '20240712070258842', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240712070258842', "timestamp" = now();

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
