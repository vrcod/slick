drop table if exists SUPPLIERS;
drop table if exists COFFEES;
create table "SUPPLIERS" ("SUP_ID" INTEGER NOT NULL PRIMARY KEY,"SUP_NAME" VARCHAR NOT NULL,"STREET" VARCHAR NOT NULL,"CITY" VARCHAR NOT NULL,"STATE" VARCHAR NOT NULL,"ZIP" VARCHAR NOT NULL);
create table "COFFEES" ("COF_NAME" VARCHAR NOT NULL PRIMARY KEY,"SUP_ID" INTEGER NOT NULL,"PRICE" DOUBLE NOT NULL,"SALES" INTEGER NOT NULL,"TOTAL" INTEGER NOT NULL);

create table "a" ("k1" INTEGER NOT NULL,"k2" INTEGER NOT NULL,"s" VARCHAR NOT NULL);
create table "b" ("f1" INTEGER NOT NULL,"f2" INTEGER NOT NULL,"s" VARCHAR NOT NULL);
alter table "a" add constraint "b_fk" foreign key("k1") references "b"("f1") on update NO ACTION on delete CASCADE;

create table "c" ("k1" INTEGER NOT NULL,"k2" INTEGER NOT NULL,"s" VARCHAR NOT NULL);
create table "d" ("f1" INTEGER NOT NULL,"f2" INTEGER NOT NULL,"s" VARCHAR NOT NULL);
create unique index "d_idx1" on "d" ("f1","f2");
alter table "c" add constraint "d_fk" foreign key("k1","k2") references "d"("f1","f2") on update NO ACTION on delete CASCADE;

create table "E" (
  "K1" INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL,
  "K2" INTEGER NOT NULL,
  "S" VARCHAR NOT NULL DEFAULT('test'),
  "N" VARCHAR NULL DEFAULT(NULL)
);

create table "SIMPLE_AS" ("A1" INTEGER NOT NULL,"A2" VARCHAR NOT NULL);

CREATE TABLE "PERSON"(
  "ID" NUMBER(11,0) NOT NULL,
  "PERSON_TYPE" CHAR(1) DEFAULT 'Y' NOT NULL
);
