CREATE SCHEMA "access_service";

CREATE TYPE "access_service"."products_status" AS ENUM (
  'LOGIN_EMAIL_LIMIT_10',
  'LOGIN_EMAIL_LIMIT_20',
  'LOGIN_MOBILE_PHONE_LIMIT_10',
  'LOGIN_MOBILE_PHONE_LIMIT_20',
  'REGISTR_EMAIL_LIMIT_3',
  'REGISTR_MOBILE_PHONE_LIMIT_3',
  'RESET_PASSWORD_EMAIL_LIMIT_3',
  'RESET_PASSWORD_MOBILE_PHONE_LIMIT_3'
);

CREATE TABLE "access_service"."user_restrictions" (
  "id" SERIAL PRIMARY KEY,
  "user_uid" uid,
  "created_at" timestamp DEFAULT (now()),
  "active_till" timestamp,
  "limit_type" access_service.products_status
);
