--------------------------------------------------------
--  DDL for Table APP_USER
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."APP_USER" 
   (	"APP_USER_ID" NUMBER, 
	"FIRST_NAME" VARCHAR2(255 BYTE), 
	"MIDDLE_NAME" VARCHAR2(255 BYTE), 
	"LAST_NAME" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index APP_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."APP_USER_PK" ON "LAUNCH"."APP_USER" ("APP_USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table APP_USER
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."APP_USER" MODIFY ("APP_USER_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."APP_USER" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."APP_USER" ADD CONSTRAINT "APP_USER_PK" PRIMARY KEY ("APP_USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;

  --------------------------------------------------------
--  DDL for Table CLIENT
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."CLIENT" 
   (	"CLIENT_ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE), 
	"WEBSITE" VARCHAR2(255 BYTE), 
	"PHONE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CLIENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."CLIENT_PK" ON "LAUNCH"."CLIENT" ("CLIENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CLIENT
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."CLIENT" MODIFY ("CLIENT_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."CLIENT" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."CLIENT" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."CLIENT" ADD CONSTRAINT "CLIENT_PK" PRIMARY KEY ("CLIENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;


  --------------------------------------------------------
--  DDL for Table CLIENT_USER_REL
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."CLIENT_USER_REL" 
   (	"CLIENT_ID" NUMBER, 
	"USER_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CLIENT_USER_REL
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."CLIENT_USER_REL" MODIFY ("CLIENT_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."CLIENT_USER_REL" MODIFY ("USER_ID" NOT NULL ENABLE);


  --------------------------------------------------------
--  DDL for Table CONTACT
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."CONTACT" 
   (	"CONTACT_ID" NUMBER, 
	"FIRST_NAME" VARCHAR2(255 BYTE), 
	"MIDDLE_NAME" VARCHAR2(255 BYTE), 
	"LAST_NAME" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE), 
	"PHONE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;


  --------------------------------------------------------
--  DDL for Table CONTACT_SYSTEM_CONTACT_REL
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."CONTACT_SYSTEM_CONTACT_REL" 
   (	"CONTACT_ID" NUMBER, 
	"SYSTEM_CONTACT_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CONTACT_SYSTEM_CONTACT_REL
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."CONTACT_SYSTEM_CONTACT_REL" MODIFY ("CONTACT_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."CONTACT_SYSTEM_CONTACT_REL" MODIFY ("SYSTEM_CONTACT_ID" NOT NULL ENABLE);


  --------------------------------------------------------
--  DDL for Table PROJECT
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."PROJECT" 
   (	"PROJECT_ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROJECT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."PROJECT_PK" ON "LAUNCH"."PROJECT" ("PROJECT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PROJECT
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."PROJECT" MODIFY ("PROJECT_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."PROJECT" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."PROJECT" ADD CONSTRAINT "PROJECT_PK" PRIMARY KEY ("PROJECT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;

  --------------------------------------------------------
--  DDL for Table PROJECT_CLIENT_REL
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."PROJECT_CLIENT_REL" 
   (	"PROJECT_ID" NUMBER, 
	"CLIENT_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PROJECT_CLIENT_REL
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."PROJECT_CLIENT_REL" MODIFY ("PROJECT_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."PROJECT_CLIENT_REL" MODIFY ("CLIENT_ID" NOT NULL ENABLE);



  --------------------------------------------------------
--  DDL for Table PROJECT_TASK
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."PROJECT_TASK" 
   (	"PROJECT_TASK_ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE), 
	"CREATED" DATE, 
	"STARTED" DATE, 
	"MODIFIED" DATE, 
	"DUE" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROJECT_TASK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."PROJECT_TASK_PK" ON "LAUNCH"."PROJECT_TASK" ("PROJECT_TASK_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PROJECT_TASK
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."PROJECT_TASK" MODIFY ("PROJECT_TASK_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."PROJECT_TASK" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."PROJECT_TASK" MODIFY ("CREATED" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."PROJECT_TASK" MODIFY ("MODIFIED" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."PROJECT_TASK" ADD CONSTRAINT "PROJECT_TASK_PK" PRIMARY KEY ("PROJECT_TASK_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;


  --------------------------------------------------------
--  DDL for Table PROJECT_TASK_PROJECT_REL
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."PROJECT_TASK_PROJECT_REL" 
   (	"PROJECT_ID" NUMBER, 
	"PROJECT_TASK_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PROJECT_TASK_PROJECT_REL
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."PROJECT_TASK_PROJECT_REL" MODIFY ("PROJECT_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."PROJECT_TASK_PROJECT_REL" MODIFY ("PROJECT_TASK_ID" NOT NULL ENABLE);


  --------------------------------------------------------
--  DDL for Table SYSTEM
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."SYSTEM" 
   (	"SYSTEM_ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYSTEM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."SYSTEM_PK" ON "LAUNCH"."SYSTEM" ("SYSTEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table SYSTEM
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."SYSTEM" MODIFY ("SYSTEM_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."SYSTEM" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."SYSTEM" ADD CONSTRAINT "SYSTEM_PK" PRIMARY KEY ("SYSTEM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;

  --------------------------------------------------------
--  DDL for Table SYSTEM_CONTACT
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."SYSTEM_CONTACT" 
   (	"SYSTEM_CONTACT_ID" NUMBER, 
	"USERNAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYSTEM_CONTACT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."SYSTEM_CONTACT_PK" ON "LAUNCH"."SYSTEM_CONTACT" ("SYSTEM_CONTACT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table SYSTEM_CONTACT
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT" MODIFY ("SYSTEM_CONTACT_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT" ADD CONSTRAINT "SYSTEM_CONTACT_PK" PRIMARY KEY ("SYSTEM_CONTACT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;


  --------------------------------------------------------
--  DDL for Table SYSTEM_CONTACT_MESSAGE
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."SYSTEM_CONTACT_MESSAGE" 
   (	"SYSTEM_CONTACT_MESSAGE_ID" NUMBER, 
	"CONTENT" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MESSAGE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."MESSAGE_PK" ON "LAUNCH"."SYSTEM_CONTACT_MESSAGE" ("SYSTEM_CONTACT_MESSAGE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table SYSTEM_CONTACT_MESSAGE
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT_MESSAGE" MODIFY ("SYSTEM_CONTACT_MESSAGE_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT_MESSAGE" ADD CONSTRAINT "MESSAGE_PK" PRIMARY KEY ("SYSTEM_CONTACT_MESSAGE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;

  --------------------------------------------------------
--  DDL for Table SYSTEM_CONTACT_MESSAGE_SYSTEM_CONTACT_SYSTEM_REL
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."SYSTEM_CONTACT_MESSAGE_SYSTEM_CONTACT_SYSTEM_REL" 
   (	"SYSTEM_CONTACT_MESSAGE_ID" NUMBER, 
	"SYSTEM_CONTACT_ID" NUMBER, 
	"SYSTEM_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table SYSTEM_CONTACT_MESSAGE_SYSTEM_CONTACT_SYSTEM_REL
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT_MESSAGE_SYSTEM_CONTACT_SYSTEM_REL" MODIFY ("SYSTEM_CONTACT_MESSAGE_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT_MESSAGE_SYSTEM_CONTACT_SYSTEM_REL" MODIFY ("SYSTEM_CONTACT_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT_MESSAGE_SYSTEM_CONTACT_SYSTEM_REL" MODIFY ("SYSTEM_ID" NOT NULL ENABLE);

  --------------------------------------------------------
--  DDL for Table SYSTEM_CONTACT_SYSTEM_REL
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."SYSTEM_CONTACT_SYSTEM_REL" 
   (	"SYSTEM_ID" NUMBER, 
	"SYSTEM_CONTACT_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table SYSTEM_CONTACT_SYSTEM_REL
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT_SYSTEM_REL" MODIFY ("SYSTEM_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT_SYSTEM_REL" MODIFY ("SYSTEM_CONTACT_ID" NOT NULL ENABLE);
