-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/


CREATE TABLE "Cards" (
    "CardID" int   NOT NULL,
    "Name" varchar(100)   NOT NULL,
    "Colors" varchar(30)   NULL,
    "CMC" int   NOT NULL,
    "Type" varchar(100)   NOT NULL,
    "Subtype" varchar(100)   NULL,
    "Set" varchar(5)   NOT NULL,
    "Rarity" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Cards" PRIMARY KEY (
        "CardID"
     )
);

CREATE TABLE "Events" (
    "EventID" int   NOT NULL,
    "Format" varchar(10)   NOT NULL,
    "Type" varchar(10)   NOT NULL,
    "Link" varchar(200)   NOT NULL,
    "EventDate" date   NOT NULL,
    CONSTRAINT "pk_Events" PRIMARY KEY (
        "EventID"
     )
);

CREATE TABLE "Maindeck" (
    "EventID" int   NOT NULL,
    "CardID" int   NOT NULL,
    "Copies" int   NOT NULL
);

CREATE TABLE "Sideboard" (
    "EventID" int   NOT NULL,
    "CardID" int   NOT NULL,
    "Copies" int   NOT NULL
);

CREATE TABLE "Prices" (
    "Date" date   NOT NULL,
    "CardID" int   NOT NULL,
    "Price" float   NOT NULL
);

ALTER TABLE "Maindeck" ADD CONSTRAINT "fk_Maindeck_EventID" FOREIGN KEY("EventID")
REFERENCES "Events" ("EventID");

ALTER TABLE "Maindeck" ADD CONSTRAINT "fk_Maindeck_CardID" FOREIGN KEY("CardID")
REFERENCES "Cards" ("CardID");

ALTER TABLE "Sideboard" ADD CONSTRAINT "fk_Sideboard_EventID" FOREIGN KEY("EventID")
REFERENCES "Events" ("EventID");

ALTER TABLE "Sideboard" ADD CONSTRAINT "fk_Sideboard_CardID" FOREIGN KEY("CardID")
REFERENCES "Cards" ("CardID");

ALTER TABLE "Prices" ADD CONSTRAINT "fk_Prices_CardID" FOREIGN KEY("CardID")
REFERENCES "Cards" ("CardID");

