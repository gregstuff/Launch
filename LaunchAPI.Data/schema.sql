--------------------------------------------------------
--  File created - Monday-May-12-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type T_APP_USER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "LAUNCH"."T_APP_USER" AS OBJECT 
(
    USER_ID NUMBER,
    CLIENT_ID NUMBER,
    EMAIL VARCHAR2(255),
    FIRST_NAME VARCHAR2(255),
    MIDDLE_NAME VARCHAR2(255),
    LAST_NAME VARCHAR2(255)
)

/
--------------------------------------------------------
--  DDL for Type T_CAMPAIGN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "LAUNCH"."T_CAMPAIGN" AS OBJECT 
( 
    CAMPAIGN_ID NUMBER,
    CLIENT_ID NUMBER,    
    PROJECT_ID NUMBER,
    NAME VARCHAR2(255)
)

/
--------------------------------------------------------
--  DDL for Type T_CLIENT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "LAUNCH"."T_CLIENT" AS OBJECT 
( 
    CLIENT_ID NUMBER,
    PLAN_ID NUMBER,
    NAME VARCHAR2(255),
    EMAIL VARCHAR2(255),
    WEBSITE VARCHAR2(255)
)

/
--------------------------------------------------------
--  DDL for Type T_DASHBOARD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "LAUNCH"."T_DASHBOARD" AS OBJECT 
( 
    DASHBOARD_ID NUMBER,
    PROJECT_ID NUMBER,
    CLIENT_ID NUMBER,
    APP_USER_ID NUMBER
)

/
--------------------------------------------------------
--  DDL for Type T_PROJECT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "LAUNCH"."T_PROJECT" AS OBJECT 
( 
    PROJECT_ID NUMBER,
    NAME VARCHAR2(255)
)

/
--------------------------------------------------------
--  DDL for Type T_PROJECT_TASK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "LAUNCH"."T_PROJECT_TASK" AS OBJECT 
(
    PROJECT_TASK_ID NUMBER,
    CLIENT_ID NUMBER,
    PROJECT_ID NUMBER,
    APP_USER_ID NUMBER,
    NAME VARCHAR2(255)
)

/
--------------------------------------------------------
--  DDL for Type T_SYSTEM_CONTACT_MESSAGE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "LAUNCH"."T_SYSTEM_CONTACT_MESSAGE" AS OBJECT 
( 
    SYSTEM_CONTACT_MESAGE_ID NUMBER,
    SYSTEM_CONTACT_ID NUMBER,
    CONTENT VARCHAR2(4000)
)

/
--------------------------------------------------------
--  DDL for Type T_WIDGET
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "LAUNCH"."T_WIDGET" AS OBJECT 
( 
    WIDGET_ID NUMBER,
    NAME VARCHAR2(255),
    X NUMBER,
    Y NUMBER,
    WIDTH NUMBER,
    HEIGHT NUMBER
)

/
--------------------------------------------------------
--  DDL for Sequence APP_USER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LAUNCH"."APP_USER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CAMPAIGN_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LAUNCH"."CAMPAIGN_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CLIENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LAUNCH"."CLIENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence DASHBOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LAUNCH"."DASHBOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PROJECT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LAUNCH"."PROJECT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PROJECT_TASK_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LAUNCH"."PROJECT_TASK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SYSTEM_CONTACT_MESSAGE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LAUNCH"."SYSTEM_CONTACT_MESSAGE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SYSTEM_CONTACT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LAUNCH"."SYSTEM_CONTACT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence WIDGET_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LAUNCH"."WIDGET_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table APP_USER
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."APP_USER" 
   (	"APP_USER_ID" NUMBER, 
	"FIRST_NAME" VARCHAR2(255 BYTE), 
	"MIDDLE_NAME" VARCHAR2(255 BYTE), 
	"LAST_NAME" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE), 
	"CLIENT_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CAMPAIGN
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."CAMPAIGN" 
   (	"CAMPAIGN_ID" NUMBER, 
	"CLIENT_ID" NUMBER, 
	"PROJECT_ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CLIENT
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."CLIENT" 
   (	"CLIENT_ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE), 
	"WEBSITE" VARCHAR2(255 BYTE), 
	"PHONE" VARCHAR2(255 BYTE), 
	"PLAN_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
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
--  DDL for Table DASHBOARD
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."DASHBOARD" 
   (	"DASHBOARD_ID" NUMBER, 
	"PROJECT_ID" NUMBER, 
	"CLIENT_ID" NUMBER, 
	"APP_USER_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROJECT
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."PROJECT" 
   (	"PROJECT_ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE), 
	"CLIENT_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROJECT_TASK
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."PROJECT_TASK" 
   (	"PROJECT_TASK_ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE), 
	"CREATED" DATE, 
	"STARTED" DATE, 
	"MODIFIED" DATE, 
	"DUE" DATE, 
	"PROJECT_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REF_APP_PLAN
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."REF_APP_PLAN" 
   (	"PLAN_ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REF_SYSTEM
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."REF_SYSTEM" 
   (	"SYSTEM_ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REF_WIDGET_TYPE
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."REF_WIDGET_TYPE" 
   (	"WIDGET_TYPE_ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE), 
	"DESCRIPTION" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SYSTEM_CONTACT
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."SYSTEM_CONTACT" 
   (	"SYSTEM_CONTACT_ID" NUMBER, 
	"USERNAME" VARCHAR2(255 BYTE), 
	"CONTACT_ID" NUMBER, 
	"SYSTEM_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SYSTEM_CONTACT_MESSAGE
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."SYSTEM_CONTACT_MESSAGE" 
   (	"SYSTEM_CONTACT_MESSAGE_ID" NUMBER, 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"SYSTEM_CONTACT_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WIDGET
--------------------------------------------------------

  CREATE TABLE "LAUNCH"."WIDGET" 
   (	"WIDGET_ID" NUMBER, 
	"DASHBOARD_ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE), 
	"X" NUMBER, 
	"Y" VARCHAR2(20 BYTE), 
	"WIDTH" NUMBER, 
	"HEIGHT" NUMBER
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
--  DDL for Index CLIENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."CLIENT_PK" ON "LAUNCH"."CLIENT" ("CLIENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CONTACT_PRIMARY_KEY
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."CONTACT_PRIMARY_KEY" ON "LAUNCH"."CONTACT" ("CONTACT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYSTEM_CONTACT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."SYSTEM_CONTACT_PK" ON "LAUNCH"."SYSTEM_CONTACT" ("SYSTEM_CONTACT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MESSAGE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."MESSAGE_PK" ON "LAUNCH"."SYSTEM_CONTACT_MESSAGE" ("SYSTEM_CONTACT_MESSAGE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROJECT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."PROJECT_PK" ON "LAUNCH"."PROJECT" ("PROJECT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROJECT_TASK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."PROJECT_TASK_PK" ON "LAUNCH"."PROJECT_TASK" ("PROJECT_TASK_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DASHBOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."DASHBOARD_PK" ON "LAUNCH"."DASHBOARD" ("DASHBOARD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index WIDGET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."WIDGET_PK" ON "LAUNCH"."WIDGET" ("WIDGET_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REF_WIDGET_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."REF_WIDGET_TYPE_PK" ON "LAUNCH"."REF_WIDGET_TYPE" ("WIDGET_TYPE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CAMPAIGN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."CAMPAIGN_PK" ON "LAUNCH"."CAMPAIGN" ("PROJECT_ID", "CLIENT_ID", "CAMPAIGN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index APP_PLAN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."APP_PLAN_PK" ON "LAUNCH"."REF_APP_PLAN" ("PLAN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYSTEM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAUNCH"."SYSTEM_PK" ON "LAUNCH"."REF_SYSTEM" ("SYSTEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Package APP_USER_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "LAUNCH"."APP_USER_PKG" AS 

PROCEDURE add_user(
    p_app_user IN T_APP_USER,
    p_success OUT BOOLEAN
);

PROCEDURE remove_user(
    p_app_user_id NUMBER,
    p_success OUT BOOLEAN
);

PROCEDURE update_user(
    p_app_user IN T_APP_USER,
    p_success OUT BOOLEAN
);

PROCEDURE get_user(
    p_app_user_id IN NUMBER,
    p_result_cursor OUT SYS_REFCURSOR
);

END APP_USER_PKG;

/
--------------------------------------------------------
--  DDL for Package CAMPAIGN_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "LAUNCH"."CAMPAIGN_PKG" AS 

PROCEDURE add_campaign(
    p_campaign IN T_CAMPAIGN,
    p_success OUT BOOLEAN
);

PROCEDURE remove_campaign(
    p_campaign_id IN NUMBER,
    p_success OUT BOOLEAN
);

PROCEDURE update_campaign(
    p_campaign IN T_CAMPAIGN,
    p_success OUT BOOLEAN
);

PROCEDURE get_campaign(
    p_campaign_id IN NUMBER,
    p_result_cursor OUT SYS_REFCURSOR
);

END CAMPAIGN_PKG;

/
--------------------------------------------------------
--  DDL for Package CLIENT_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "LAUNCH"."CLIENT_PKG" AS 

PROCEDURE add_client(
    p_client IN T_CLIENT,
    p_success OUT BOOLEAN
);
  
PROCEDURE update_client(
    p_client IN T_CLIENT,
    p_success OUT BOOLEAN
);

PROCEDURE remove_client(
    p_client_id IN NUMBER,
    p_success OUT BOOLEAN
);

PROCEDURE get_client(
    p_client_id IN NUMBER,
    p_result_cursor OUT SYS_REFCURSOR
);

END CLIENT_PKG;

/
--------------------------------------------------------
--  DDL for Package DASHBOARD_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "LAUNCH"."DASHBOARD_PKG" AS 

  PROCEDURE add_dashboard(
    p_dashboard IN T_DASHBOARD,
    p_success OUT BOOLEAN
  );
  
  PROCEDURE remove_dashboard(
    p_dashboard_id IN NUMBER,
    p_success OUT BOOLEAN
  );
  
  PROCEDURE get_dashboard(
    p_dashboard_id IN NUMBER,
    p_success OUT BOOLEAN
  );
  
  PROCEDURE get_dashboard_data_for_client_and_project(
    p_client_id IN NUMBER,
    p_project_id IN NUMBER
  );

END DASHBOARD_PKG;

/
--------------------------------------------------------
--  DDL for Package PROJECT_PKG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE "LAUNCH"."PROJECT_PKG" AS 

PROCEDURE add_project(
    p_project IN T_PROJECT,
    p_success OUT BOOLEAN
);

PROCEDURE remove_project(
    p_project_id IN NUMBER,
    p_success OUT BOOLEAN
);

PROCEDURE update_project(
    p_project IN T_PROJECT,
    p_success OUT BOOLEAN
);

PROCEDURE get_project(
    p_project_id NUMBER,
    p_result_cursor OUT SYS_REFCURSOR
);

END PROJECT_PKG;

/
--------------------------------------------------------
--  DDL for Package PROJECT_TASK_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "LAUNCH"."PROJECT_TASK_PKG" AS 

    PROCEDURE add_project_task(
        p_project_task IN T_PROJECT_TASK,
        p_success OUT BOOLEAN
    );
    
    PROCEDURE remove_project_task(
        p_project_task_id IN NUMBER,
        p_success OUT BOOLEAN
    );
    
    PROCEDURE update_project_task(
        p_project_task IN T_PROJECT_TASK,
        p_success OUT BOOLEAN
    );
    
    PROCEDURE get_project_task(
        p_project_task_id IN NUMBER,
        p_result_cursor OUT SYS_REFCURSOR
    );

END PROJECT_TASK_PKG;

/
--------------------------------------------------------
--  DDL for Package UTIL_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "LAUNCH"."UTIL_PKG" AS 

PROCEDURE set_status_by_rowcount(p_success OUT BOOLEAN);

END UTIL_PKG;

/
--------------------------------------------------------
--  DDL for Package WIDGET_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "LAUNCH"."WIDGET_PKG" AS 

    PROCEDURE add_widget(
        p_widget IN T_WIDGET,
        p_success OUT BOOLEAN
    );
    
    PROCEDURE update_widget(
        p_widget IN T_WIDGET,
        p_success OUT BOOLEAN
    );
    
    PROCEDURE remove_widget(
        p_widget_id IN NUMBER,
        p_success OUT BOOLEAN
    );
    
    PROCEDURE get_widget(
        p_widget_id IN NUMBER,
        p_result_cursor OUT SYS_REFCURSOR
    );

END WIDGET_PKG;

/
--------------------------------------------------------
--  DDL for Package Body DASHBOARD_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "LAUNCH"."DASHBOARD_PKG" AS


  PROCEDURE add_dashboard(
    p_dashboard IN T_DASHBOARD,
    p_success OUT BOOLEAN
  ) AS
  BEGIN
    
    INSERT INTO LAUNCH.DASHBOARD (DASHBOARD_ID, PROJECT_ID, CLIENT_ID, APP_USER_ID)
    VALUES (LAUNCH.DASHBOARD_SEQ.NEXTVAL, p_dashboard.PROJECT_ID, p_dashboard.CLIENT_ID, p_dashboard.APP_USER_ID);
    
    p_success := TRUE;
    
    EXCEPTION
        WHEN OTHERS THEN
            p_success := FALSE;
    
  END add_dashboard;


  PROCEDURE remove_dashboard(
    p_dashboard_id IN NUMBER,
    p_success OUT BOOLEAN
  ) AS
  BEGIN
  
    DELETE FROM DASHBOARD WHERE DASHBOARD_ID = p_dashboard_id;
    
    util_pkg.set_status_by_rowcount(p_success);
    
    EXCEPTION
        WHEN OTHERS THEN
            p_success := FALSE;
    
  END remove_dashboard;

  PROCEDURE get_dashboard(
    p_dashboard_id IN NUMBER,
    p_success OUT BOOLEAN
  ) AS
  BEGIN
    -- TODO: Implementation required for PROCEDURE DASHBOARD_PKG.get_dashboard
    NULL;
  END get_dashboard;

  PROCEDURE get_dashboard_data_for_client_and_project(
    p_client_id IN NUMBER,
    p_project_id IN NUMBER
  ) AS
  BEGIN
    -- TODO: Implementation required for PROCEDURE DASHBOARD_PKG.get_dashboard_data_for_client_and_project
    NULL;
  END get_dashboard_data_for_client_and_project;

END DASHBOARD_PKG;

/
--------------------------------------------------------
--  DDL for Package Body UTIL_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "LAUNCH"."UTIL_PKG" AS

  PROCEDURE set_status_by_rowcount(p_success OUT BOOLEAN) IS
  BEGIN
    IF SQL%ROWCOUNT = 0 THEN
      p_success := FALSE;
    ELSE
      p_success := TRUE;
    END IF;
  END;

END UTIL_PKG;

/
--------------------------------------------------------
--  Constraints for Table APP_USER
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."APP_USER" MODIFY ("APP_USER_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."APP_USER" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."APP_USER" ADD CONSTRAINT "APP_USER_PK" PRIMARY KEY ("APP_USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROJECT
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."PROJECT" MODIFY ("PROJECT_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."PROJECT" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."PROJECT" ADD CONSTRAINT "PROJECT_PK" PRIMARY KEY ("PROJECT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CAMPAIGN
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."CAMPAIGN" MODIFY ("CAMPAIGN_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."CAMPAIGN" MODIFY ("CLIENT_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."CAMPAIGN" MODIFY ("PROJECT_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."CAMPAIGN" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."CAMPAIGN" ADD CONSTRAINT "CAMPAIGN_PK" PRIMARY KEY ("PROJECT_ID", "CLIENT_ID", "CAMPAIGN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SYSTEM_CONTACT
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT" MODIFY ("SYSTEM_CONTACT_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT" ADD CONSTRAINT "SYSTEM_CONTACT_PK" PRIMARY KEY ("SYSTEM_CONTACT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REF_WIDGET_TYPE
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."REF_WIDGET_TYPE" MODIFY ("WIDGET_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."REF_WIDGET_TYPE" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."REF_WIDGET_TYPE" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."REF_WIDGET_TYPE" ADD CONSTRAINT "REF_WIDGET_TYPE_PK" PRIMARY KEY ("WIDGET_TYPE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REF_SYSTEM
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."REF_SYSTEM" MODIFY ("SYSTEM_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."REF_SYSTEM" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."REF_SYSTEM" ADD CONSTRAINT "SYSTEM_PK" PRIMARY KEY ("SYSTEM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table WIDGET
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."WIDGET" MODIFY ("WIDGET_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."WIDGET" MODIFY ("DASHBOARD_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."WIDGET" MODIFY ("X" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."WIDGET" MODIFY ("Y" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."WIDGET" MODIFY ("WIDTH" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."WIDGET" MODIFY ("HEIGHT" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."WIDGET" ADD CONSTRAINT "WIDGET_PK" PRIMARY KEY ("WIDGET_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SYSTEM_CONTACT_MESSAGE
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT_MESSAGE" MODIFY ("SYSTEM_CONTACT_MESSAGE_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT_MESSAGE" ADD CONSTRAINT "MESSAGE_PK" PRIMARY KEY ("SYSTEM_CONTACT_MESSAGE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CONTACT
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."CONTACT" ADD CONSTRAINT "CONTACT_PRIMARY_KEY" PRIMARY KEY ("CONTACT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
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
--  Constraints for Table REF_APP_PLAN
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."REF_APP_PLAN" MODIFY ("PLAN_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."REF_APP_PLAN" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."REF_APP_PLAN" ADD CONSTRAINT "APP_PLAN_PK" PRIMARY KEY ("PLAN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DASHBOARD
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."DASHBOARD" MODIFY ("DASHBOARD_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."DASHBOARD" MODIFY ("CLIENT_ID" NOT NULL ENABLE);
  ALTER TABLE "LAUNCH"."DASHBOARD" ADD CONSTRAINT "DASHBOARD_PK" PRIMARY KEY ("DASHBOARD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
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
--  Ref Constraints for Table APP_USER
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."APP_USER" ADD CONSTRAINT "USER_CLIENT_FOREIGN_KEY" FOREIGN KEY ("CLIENT_ID")
	  REFERENCES "LAUNCH"."CLIENT" ("CLIENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CAMPAIGN
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."CAMPAIGN" ADD CONSTRAINT "CAMPAIGN_CLIENT_FOREIGN_KEY" FOREIGN KEY ("CLIENT_ID")
	  REFERENCES "LAUNCH"."CLIENT" ("CLIENT_ID") ENABLE;
  ALTER TABLE "LAUNCH"."CAMPAIGN" ADD CONSTRAINT "CAMPAIGN_PROJECT_FOREIGN_KEY" FOREIGN KEY ("PROJECT_ID")
	  REFERENCES "LAUNCH"."PROJECT" ("PROJECT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CLIENT
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."CLIENT" ADD CONSTRAINT "CLIENT_PLAN_FOREIGN_KEY" FOREIGN KEY ("PLAN_ID")
	  REFERENCES "LAUNCH"."REF_APP_PLAN" ("PLAN_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DASHBOARD
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."DASHBOARD" ADD CONSTRAINT "DASHBOARD_PROJECT_FOREIGN_KEY" FOREIGN KEY ("PROJECT_ID")
	  REFERENCES "LAUNCH"."PROJECT" ("PROJECT_ID") ENABLE;
  ALTER TABLE "LAUNCH"."DASHBOARD" ADD CONSTRAINT "DASHBOARD_CLIENT_FOREIGN_KEY" FOREIGN KEY ("CLIENT_ID")
	  REFERENCES "LAUNCH"."CLIENT" ("CLIENT_ID") ENABLE;
  ALTER TABLE "LAUNCH"."DASHBOARD" ADD CONSTRAINT "DASHBOARD_APP_USER_FOREIGN_KEY" FOREIGN KEY ("APP_USER_ID")
	  REFERENCES "LAUNCH"."APP_USER" ("APP_USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROJECT
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."PROJECT" ADD CONSTRAINT "PROJECT_CLIENT_FOREIGN_KEY" FOREIGN KEY ("CLIENT_ID")
	  REFERENCES "LAUNCH"."CLIENT" ("CLIENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROJECT_TASK
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."PROJECT_TASK" ADD CONSTRAINT "PROJECT_TASK_PROJECT_FOREIGN_KEY" FOREIGN KEY ("PROJECT_ID")
	  REFERENCES "LAUNCH"."PROJECT" ("PROJECT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SYSTEM_CONTACT
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT" ADD CONSTRAINT "CONTACT_SYSTEM_CONTACT_FOREIGN_KEY" FOREIGN KEY ("CONTACT_ID")
	  REFERENCES "LAUNCH"."CONTACT" ("CONTACT_ID") ENABLE;
  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT" ADD CONSTRAINT "SYSTEM_SYSTEM_CONTACT_FOREIGN_KEY" FOREIGN KEY ("SYSTEM_ID")
	  REFERENCES "LAUNCH"."REF_SYSTEM" ("SYSTEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SYSTEM_CONTACT_MESSAGE
--------------------------------------------------------

  ALTER TABLE "LAUNCH"."SYSTEM_CONTACT_MESSAGE" ADD CONSTRAINT "MESSAGE_SYSTEM_CONTACT_FOREIGN_KEY" FOREIGN KEY ("SYSTEM_CONTACT_ID")
	  REFERENCES "LAUNCH"."SYSTEM_CONTACT" ("SYSTEM_CONTACT_ID") ENABLE;
