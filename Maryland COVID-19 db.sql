-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "casesby_age" (
    "ReportDate" DATE   NOT NULL,
    "year" INT   NOT NULL,
    "month" INT   NOT NULL,
    "case0to9" INT   NOT NULL,
    "case10to19" INT   NOT NULL,
    "case20to29" INT   NOT NULL,
    "case30to39" INT   NOT NULL,
    "case40to49" INT   NOT NULL,
    "case50to59" INT   NOT NULL,
    "case60to69" INT   NOT NULL,
    "case70to79" INT   NOT NULL,
    "case80plus" INT   NOT NULL,
    "caseAgeUnknown" INT   NOT NULL
);

CREATE TABLE "casesby_county" (
    "ReportDate" DATE   NOT NULL,
    "year" INT   NOT NULL,
    "ALLE" INT   NOT NULL,
    "ANNE" INT   NOT NULL,
    "BALT" INT   NOT NULL,
    "BCITY" INT   NOT NULL,
    "CALV" INT   NOT NULL,
    "CARO" INT   NOT NULL,
    "CARR" INT   NOT NULL,
    "CECI" INT   NOT NULL,
    "CHAR" INT   NOT NULL,
    "DORC" INT   NOT NULL,
    "FRED" INT   NOT NULL,
    "GARR" INT   NOT NULL,
    "HARF" INT   NOT NULL,
    "HOWA" INT   NOT NULL,
    "KENT" INT   NOT NULL,
    "MONT" INT   NOT NULL,
    "PRIN" INT   NOT NULL,
    "QUEE" INT   NOT NULL,
    "SOME" INT   NOT NULL,
    "STMA" INT   NOT NULL,
    "TALB" INT   NOT NULL,
    "WASH" INT   NOT NULL,
    "WICO" INT   NOT NULL,
    "WORC" INT   NOT NULL,
    "UNKN" INT   NOT NULL
);

CREATE TABLE "casesby_race" (
    "ReportDate" DATE   NOT NULL,
    "caseAfrAmer" INT   NOT NULL,
    "caseWhite" INT   NOT NULL,
    "caseHispanic" INT   NOT NULL,
    "caseAsian" INT   NOT NULL,
    "caseOther" INT   NOT NULL,
    "caseNotAVail" INT   NOT NULL
);

CREATE TABLE "casesby_gender" (
    "ReportDate" DATE   NOT NULL,
    "year" INT   NOT NULL,
    "genMale" INT   NOT NULL,
    "genFemale" INT   NOT NULL,
    "genUnkn" INT   NOT NULL
);

CREATE TABLE "deathsby_age" (
    "ReportDate" DATE   NOT NULL,
    "year" INT   NOT NULL,
    "month" INT   NOT NULL,
    "death0to9" FLOAT   NOT NULL,
    "death10to19" FLOAT   NOT NULL,
    "death20to29" FLOAT   NOT NULL,
    "death30to39" FLOAT   NOT NULL,
    "death40to49" FLOAT   NOT NULL,
    "death50to59" FLOAT   NOT NULL,
    "death60to69" FLOAT   NOT NULL,
    "death70to79" FLOAT   NOT NULL,
    "death80plus" FLOAT   NOT NULL,
    "deathAgeUnknown" INT   NOT NULL
);

CREATE TABLE "deathsby_county" (
    "ReportDate" DATE   NOT NULL,
    "year" INT   NOT NULL,
    "deathALLE" FLOAT   NOT NULL,
    "deathANNE" FLOAT   NOT NULL,
    "deathBALT" FLOAT   NOT NULL,
    "deathBCITY" FLOAT   NOT NULL,
    "deathCALV" FLOAT   NOT NULL,
    "deathCARO" FLOAT   NOT NULL,
    "deathCARR" FLOAT   NOT NULL,
    "deathCECI" FLOAT   NOT NULL,
    "deathCHAR" FLOAT   NOT NULL,
    "deathDORC" FLOAT   NOT NULL,
    "deathFRED" FLOAT   NOT NULL,
    "deathGARR" FLOAT   NOT NULL,
    "deathHARF" FLOAT   NOT NULL,
    "deathHOWA" FLOAT   NOT NULL,
    "deathKENT" FLOAT   NOT NULL,
    "deathMONT" FLOAT   NOT NULL,
    "deathPRIN" FLOAT   NOT NULL,
    "deathQUEE" FLOAT   NOT NULL,
    "deathSOME" FLOAT   NOT NULL,
    "deathSTMA" FLOAT   NOT NULL,
    "deathTALB" FLOAT   NOT NULL,
    "deathWASH" FLOAT   NOT NULL,
    "deathWICO" FLOAT   NOT NULL,
    "deathWORC" FLOAT   NOT NULL,
    "deathUNKN" INT   NOT NULL
);

CREATE TABLE "deathsby_race" (
    "ReportDate" DATE   NOT NULL,
    "deathAfrAmer" INT   NOT NULL,
    "deathWhite" INT   NOT NULL,
    "deathHispanic" INT   NOT NULL,
    "deathAsian" INT   NOT NULL
);

CREATE TABLE "deathsby_gender" (
    "ReportDate" DATE   NOT NULL,
    "year" INT   NOT NULL,
    "deathgenMale" FLOAT   NOT NULL,
    "deathgenFemale" FLOAT   NOT NULL,
    "deathgenUnkn" INT   NOT NULL
);

CREATE TABLE "covid_summary" (
    "ReportDate" DATE   NOT NULL,
    "year" INT   NOT NULL,
    "month" INT   NOT NULL,
    "TotalCases" INT   NOT NULL,
    "TotalTests" FLOAT   NOT NULL,
    "PosTestPercent" FLOAT   NOT NULL,
    "NegativeTests" FLOAT   NOT NULL,
    "total_hospitalized" FLOAT   NOT NULL,
    "genMale" INT   NOT NULL,
    "genFemale" INT   NOT NULL,
    "genUnkn" INT   NOT NULL,
    "deaths" FLOAT   NOT NULL,
    CONSTRAINT "pk_covid_summary" PRIMARY KEY (
        "ReportDate"
     )
);

ALTER TABLE "casesby_age" ADD CONSTRAINT "fk_casesby_age_ReportDate" FOREIGN KEY("ReportDate")
REFERENCES "covid_summary" ("ReportDate");

ALTER TABLE "casesby_county" ADD CONSTRAINT "fk_casesby_county_ReportDate" FOREIGN KEY("ReportDate")
REFERENCES "covid_summary" ("ReportDate");

ALTER TABLE "casesby_race" ADD CONSTRAINT "fk_casesby_race_ReportDate" FOREIGN KEY("ReportDate")
REFERENCES "covid_summary" ("ReportDate");

ALTER TABLE "casesby_gender" ADD CONSTRAINT "fk_casesby_gender_ReportDate" FOREIGN KEY("ReportDate")
REFERENCES "covid_summary" ("ReportDate");

ALTER TABLE "deathsby_age" ADD CONSTRAINT "fk_deathsby_age_ReportDate" FOREIGN KEY("ReportDate")
REFERENCES "covid_summary" ("ReportDate");

ALTER TABLE "deathsby_county" ADD CONSTRAINT "fk_deathsby_county_ReportDate" FOREIGN KEY("ReportDate")
REFERENCES "covid_summary" ("ReportDate");

ALTER TABLE "deathsby_race" ADD CONSTRAINT "fk_deathsby_race_ReportDate" FOREIGN KEY("ReportDate")
REFERENCES "covid_summary" ("ReportDate");

ALTER TABLE "deathsby_gender" ADD CONSTRAINT "fk_deathsby_gender_ReportDate" FOREIGN KEY("ReportDate")
REFERENCES "covid_summary" ("ReportDate");

