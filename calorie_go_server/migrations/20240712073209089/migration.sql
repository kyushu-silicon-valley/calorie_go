BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "exercise" DROP CONSTRAINT "exercise_fk_0";
ALTER TABLE ONLY "exercise"
    ADD CONSTRAINT "exercise_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "user_exercise_hist" DROP CONSTRAINT "user_exercise_hist_fk_0";
ALTER TABLE ONLY "user_exercise_hist"
    ADD CONSTRAINT "user_exercise_hist_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "user_ticket" DROP CONSTRAINT "user_ticket_fk_0";
ALTER TABLE ONLY "user_ticket"
    ADD CONSTRAINT "user_ticket_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR calorie_go
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('calorie_go', '20240712073209089', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240712073209089', "timestamp" = now();

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
