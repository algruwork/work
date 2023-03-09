CREATE SCHEMA "complaints_service";

CREATE TABLE "complaints_service"."content_types" (
  "id" SERIAL,
  "code" varchar(50) NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "complaints_service"."complaint_categorys" (
  "id" SERIAL,
  "name_en" varchar(50) NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "complaints_service"."complaint_categorys_content_types" (
  "complaint_category_id" int,
  "content_type_id" int,
  PRIMARY KEY ("complaint_category_id", "content_type_id")
);

COMMENT ON COLUMN "complaints_service"."content_types"."code" IS 'Content type code';

COMMENT ON COLUMN "complaints_service"."complaint_categorys"."name_en" IS 'Complaint category name';

ALTER TABLE "complaints_service"."complaint_categorys_content_types" ADD FOREIGN KEY ("complaint_category_id") REFERENCES "complaints_service"."content_types" ("id");

ALTER TABLE "complaints_service"."complaint_categorys_content_types" ADD FOREIGN KEY ("content_type_id") REFERENCES "complaints_service"."complaint_categorys" ("id");

insert into complaints_service.content_types (code)
	values ('VIDEO'), ('CHANNEL'), ('USER'), ('COMMENT'), ('PLAYLIST'), ('VIDEO_PREVIEW');

insert into complaints_service.complaint_categorys (name_en)
	values ('Sexual content'),
('Unwanted commercial content or spam'),
('Violent or repulsive content'),
('Pornography or sexually explicit material'),
('Hateful or abusive content'),
('Child abuse'),
('Harmful or dangerous acts'),
('Hate speech or graphic violence'),
('Spam or misleading'),
('Promotes terrorism'),
('Harassment or bullying'),
('Suicide or self injury'),
('Misinformation'),
('Privacy'),
('Infringes my rights'),
('Impersonation'),
('Captions issue'),
('Other');

insert into complaints_service.complaint_categorys_content_types (content_type_id, complaint_category_id)
	values
	(1, 1),
	(1, 3),
	(1, 5),
	(1, 7),
	(1, 9),
	(1, 6),
	(1, 11),
	(1, 13),
	(1, 15),
	(1, 17),
	(1, 18),
	(2, 1),
	(2, 3),
	(2, 5),
	(2, 7),
	(2, 9),
	(2, 6),
	(2, 11),
	(2, 14),
	(2, 16),
	(2, 18),
	(3, 1),
	(3, 3),
	(3, 5),
	(3, 7),
	(3, 9),
	(3, 6),
	(3, 11),
	(3, 14),
	(3, 16),
	(3, 18),
	(4, 2),
	(4, 4),
	(4, 6),
	(4, 8),
	(4, 10),
	(4, 11),
	(4, 12),
	(4, 13),
	(4, 18),
	(5, 1),
	(5, 3),
	(5, 5),
	(5, 7),
	(5, 9),
	(5, 6),
	(5, 18),
	(6, 1),
	(6, 3),
	(6, 5),
	(6, 7),
	(6, 9),
	(6, 6),
	(6, 18);


