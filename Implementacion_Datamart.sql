GRANT CREATE ANY VIEW TO ALUMNO;

CREATE USER DWHA01702686 IDENTIFIED BY password123
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP
QUOTA 10M ON USERS
PROFILE DEFAULT;
-- Otorgar permisos a A01702686, de la misma
GRANT ALUMNO TO DWHA01702686;
-- Asignar el rol default al usuario
ALTER USER DWHA01702686 DEFAULT ROLE ALL;

grant select on BIKESTORE.BRANDS to DWHA01702686;
grant select on BIKESTORE.CATEGORIES to DWHA01702686;
grant select on BIKESTORE.CUSTOMERS to DWHA01702686;
grant select on BIKESTORE.ORDER_ITEMS to DWHA01702686;
grant select on BIKESTORE.ORDERS to DWHA01702686;
grant select on BIKESTORE.PRODUCTS to DWHA01702686;
grant select on BIKESTORE.STAFFS to DWHA01702686;
grant select on BIKESTORE.STOCKS to DWHA01702686;
grant select on BIKESTORE.STORES to DWHA01702686;
--------------------------------------------------------
--  File created - Monday-November-02-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SECUENCIADCLIENTE
--------------------------------------------------------

   CREATE SEQUENCE  "DWHA01702686"."SECUENCIADCLIENTE"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1461 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SECUENCIADPRODUCTO
--------------------------------------------------------

   CREATE SEQUENCE  "DWHA01702686"."SECUENCIADPRODUCTO"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 341 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SECUENCIADSTAFF
--------------------------------------------------------

   CREATE SEQUENCE  "DWHA01702686"."SECUENCIADSTAFF"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SECUENCIADTIEMPO
--------------------------------------------------------

   CREATE SEQUENCE  "DWHA01702686"."SECUENCIADTIEMPO"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SECUENCIADTIENDA
--------------------------------------------------------

   CREATE SEQUENCE  "DWHA01702686"."SECUENCIADTIENDA"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SECUENCIAHCLIENTE
--------------------------------------------------------

   CREATE SEQUENCE  "DWHA01702686"."SECUENCIAHCLIENTE"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SECUENCIAHPRODUCTO
--------------------------------------------------------

   CREATE SEQUENCE  "DWHA01702686"."SECUENCIAHPRODUCTO"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SECUENCIAHSTAFF
--------------------------------------------------------

   CREATE SEQUENCE  "DWHA01702686"."SECUENCIAHSTAFF"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SECUENCIAHTIENDA
--------------------------------------------------------

   CREATE SEQUENCE  "DWHA01702686"."SECUENCIAHTIENDA"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table DCLIENTE
--------------------------------------------------------

  CREATE TABLE "DWHA01702686"."DCLIENTE" 
   (	"DCLIENTEPK" NUMBER, 
	"CODIGO" NUMBER, 
	"FIRST_NAME" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"LAST_NAME" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"PHONE" VARCHAR2(25 BYTE) COLLATE "USING_NLS_COMP", 
	"EMAIL" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"STREET" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"CITY" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"STATE" VARCHAR2(25 BYTE) COLLATE "USING_NLS_COMP", 
	"ZIP_CODE" VARCHAR2(5 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DPRODUCTO
--------------------------------------------------------

  CREATE TABLE "DWHA01702686"."DPRODUCTO" 
   (	"DPRODUCTOPK" NUMBER, 
	"CODIGO" NUMBER, 
	"NOMBRE" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"ANIOMODELO" NUMBER(5,0), 
	"PRECIO" NUMBER(10,2), 
	"NOMBREMARCA" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"NOMBRECATEGORIA" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DSTAFF
--------------------------------------------------------

  CREATE TABLE "DWHA01702686"."DSTAFF" 
   (	"DSTAFFPK" NUMBER, 
	"CODIGO" NUMBER, 
	"FIRST_NAME" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"LAST_NAME" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"EMAIL" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"PHONE" VARCHAR2(25 BYTE) COLLATE "USING_NLS_COMP", 
	"ACTIVE" NUMBER, 
	"STORE_NAME" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DTIEMPO
--------------------------------------------------------

  CREATE TABLE "DWHA01702686"."DTIEMPO" 
   (	"DTIEMPOPK" NUMBER, 
	"FECHA" DATE, 
	"ANIO" VARCHAR2(4 BYTE) COLLATE "USING_NLS_COMP", 
	"MES" VARCHAR2(10 BYTE) COLLATE "USING_NLS_COMP", 
	"DIA" NUMBER, 
	"NOMBREDIA" VARCHAR2(20 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DTIENDA
--------------------------------------------------------

  CREATE TABLE "DWHA01702686"."DTIENDA" 
   (	"DTIENDAPK" NUMBER, 
	"CODIGO" NUMBER, 
	"NOMBRE" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"TELEFONO" VARCHAR2(25 BYTE) COLLATE "USING_NLS_COMP", 
	"EMAIL" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"STREET" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"CITY" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"STATE" VARCHAR2(10 BYTE) COLLATE "USING_NLS_COMP", 
	"ZIPCODE" VARCHAR2(5 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HCLIENTE
--------------------------------------------------------

  CREATE TABLE "DWHA01702686"."HCLIENTE" 
   (	"HCLIENTEPK" NUMBER, 
	"DTIEMPOPK" NUMBER, 
	"DCLIENTEPK" NUMBER, 
	"CANTIDADVENDIDA" NUMBER, 
	"INGRESOTOTAL" NUMBER, 
	"INGRESODESCUENTO" NUMBER
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HPRODUCTO
--------------------------------------------------------

  CREATE TABLE "DWHA01702686"."HPRODUCTO" 
   (	"HPRODUCTOPK" NUMBER, 
	"DTIEMPOPK" NUMBER, 
	"DPRODUCTOPK" NUMBER, 
	"CANTIDADVENDIDA" NUMBER, 
	"INGRESOTOTAL" NUMBER, 
	"INGRESODESCUENTO" NUMBER
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HSTAFF
--------------------------------------------------------

  CREATE TABLE "DWHA01702686"."HSTAFF" 
   (	"HSTAFFPK" NUMBER, 
	"DTIEMPOPK" NUMBER, 
	"DSTAFFPK" NUMBER, 
	"CANTIDADVENDIDA" NUMBER, 
	"INGRESOTOTAL" NUMBER, 
	"INGRESODESCUENTO" NUMBER
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HTIENDA
--------------------------------------------------------

  CREATE TABLE "DWHA01702686"."HTIENDA" 
   (	"HTIENDAPK" NUMBER, 
	"DTIEMPOPK" NUMBER, 
	"DTIENDAPK" NUMBER, 
	"CANTIDADVENDIDA" NUMBER, 
	"INGRESOTOTAL" NUMBER, 
	"INGRESODESCUENTO" NUMBER
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into DWHA01702686.DCLIENTE
SET DEFINE OFF;
REM INSERTING into DWHA01702686.DPRODUCTO
SET DEFINE OFF;
REM INSERTING into DWHA01702686.DSTAFF
SET DEFINE OFF;
REM INSERTING into DWHA01702686.DTIEMPO
SET DEFINE OFF;
REM INSERTING into DWHA01702686.DTIENDA
SET DEFINE OFF;
REM INSERTING into DWHA01702686.HCLIENTE
SET DEFINE OFF;
REM INSERTING into DWHA01702686.HPRODUCTO
SET DEFINE OFF;
REM INSERTING into DWHA01702686.HSTAFF
SET DEFINE OFF;
REM INSERTING into DWHA01702686.HTIENDA
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index DPRODUCTO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DWHA01702686"."DPRODUCTO_PK" ON "DWHA01702686"."DPRODUCTO" ("DPRODUCTOPK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DCLIENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DWHA01702686"."DCLIENTE_PK" ON "DWHA01702686"."DCLIENTE" ("DCLIENTEPK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HCLIENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DWHA01702686"."HCLIENTE_PK" ON "DWHA01702686"."HCLIENTE" ("HCLIENTEPK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DCLIENTEINDEX
--------------------------------------------------------

  CREATE INDEX "DWHA01702686"."DCLIENTEINDEX" ON "DWHA01702686"."DCLIENTE" ("DCLIENTEPK", "FIRST_NAME", "LAST_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DPRODUCTOINDEX
--------------------------------------------------------

  CREATE INDEX "DWHA01702686"."DPRODUCTOINDEX" ON "DWHA01702686"."DPRODUCTO" ("CODIGO", "DPRODUCTOPK", "NOMBRE", "ANIOMODELO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DTIEMPO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DWHA01702686"."DTIEMPO_PK" ON "DWHA01702686"."DTIEMPO" ("DTIEMPOPK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DTIENDA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DWHA01702686"."DTIENDA_PK" ON "DWHA01702686"."DTIENDA" ("DTIENDAPK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DSTAFFINDEX2
--------------------------------------------------------

  CREATE INDEX "DWHA01702686"."DSTAFFINDEX2" ON "DWHA01702686"."DSTAFF" ("DSTAFFPK", "FIRST_NAME", "LAST_NAME", "STORE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HPRODUCTO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DWHA01702686"."HPRODUCTO_PK" ON "DWHA01702686"."HPRODUCTO" ("HPRODUCTOPK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HSTAFF_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DWHA01702686"."HSTAFF_PK" ON "DWHA01702686"."HSTAFF" ("HSTAFFPK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DTIEMPOINDEX
--------------------------------------------------------

  CREATE INDEX "DWHA01702686"."DTIEMPOINDEX" ON "DWHA01702686"."DTIEMPO" ("FECHA", "DTIEMPOPK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DTIENDAINDEX
--------------------------------------------------------

  CREATE INDEX "DWHA01702686"."DTIENDAINDEX" ON "DWHA01702686"."DTIENDA" ("CODIGO", "DTIENDAPK", "NOMBRE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DSTAFF_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DWHA01702686"."DSTAFF_PK" ON "DWHA01702686"."DSTAFF" ("DSTAFFPK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DTSAFFINDEX
--------------------------------------------------------

  CREATE INDEX "DWHA01702686"."DTSAFFINDEX" ON "DWHA01702686"."DSTAFF" ("DSTAFFPK", "FIRST_NAME", "LAST_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DTIEMPOINDEXYEAR
--------------------------------------------------------

  CREATE INDEX "DWHA01702686"."DTIEMPOINDEXYEAR" ON "DWHA01702686"."DTIEMPO" ("ANIO", "DTIEMPOPK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HTIENDA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DWHA01702686"."HTIENDA_PK" ON "DWHA01702686"."HTIENDA" ("HTIENDAPK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table DCLIENTE
--------------------------------------------------------

  ALTER TABLE "DWHA01702686"."DCLIENTE" MODIFY ("DCLIENTEPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DCLIENTE" MODIFY ("CODIGO" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DCLIENTE" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DCLIENTE" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DCLIENTE" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DCLIENTE" ADD CONSTRAINT "DCLIENTE_PK" PRIMARY KEY ("DCLIENTEPK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DSTAFF
--------------------------------------------------------

  ALTER TABLE "DWHA01702686"."DSTAFF" MODIFY ("DSTAFFPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DSTAFF" MODIFY ("CODIGO" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DSTAFF" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DSTAFF" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DSTAFF" MODIFY ("ACTIVE" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DSTAFF" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DSTAFF" ADD CONSTRAINT "DSTAFF_PK" PRIMARY KEY ("DSTAFFPK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "DWHA01702686"."DSTAFF" MODIFY ("STORE_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HCLIENTE
--------------------------------------------------------

  ALTER TABLE "DWHA01702686"."HCLIENTE" MODIFY ("HCLIENTEPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HCLIENTE" MODIFY ("DTIEMPOPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HCLIENTE" MODIFY ("DCLIENTEPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HCLIENTE" MODIFY ("CANTIDADVENDIDA" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HCLIENTE" MODIFY ("INGRESOTOTAL" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HCLIENTE" MODIFY ("INGRESODESCUENTO" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HCLIENTE" ADD CONSTRAINT "HCLIENTE_PK" PRIMARY KEY ("HCLIENTEPK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HPRODUCTO
--------------------------------------------------------

  ALTER TABLE "DWHA01702686"."HPRODUCTO" MODIFY ("HPRODUCTOPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HPRODUCTO" MODIFY ("DTIEMPOPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HPRODUCTO" MODIFY ("DPRODUCTOPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HPRODUCTO" MODIFY ("CANTIDADVENDIDA" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HPRODUCTO" MODIFY ("INGRESOTOTAL" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HPRODUCTO" MODIFY ("INGRESODESCUENTO" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HPRODUCTO" ADD CONSTRAINT "HPRODUCTO_PK" PRIMARY KEY ("HPRODUCTOPK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DTIEMPO
--------------------------------------------------------

  ALTER TABLE "DWHA01702686"."DTIEMPO" MODIFY ("DTIEMPOPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DTIEMPO" MODIFY ("FECHA" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DTIEMPO" MODIFY ("ANIO" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DTIEMPO" MODIFY ("MES" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DTIEMPO" MODIFY ("DIA" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DTIEMPO" ADD CONSTRAINT "DTIEMPO_PK" PRIMARY KEY ("DTIEMPOPK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HSTAFF
--------------------------------------------------------

  ALTER TABLE "DWHA01702686"."HSTAFF" MODIFY ("HSTAFFPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HSTAFF" MODIFY ("DTIEMPOPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HSTAFF" MODIFY ("DSTAFFPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HSTAFF" MODIFY ("CANTIDADVENDIDA" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HSTAFF" MODIFY ("INGRESOTOTAL" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HSTAFF" MODIFY ("INGRESODESCUENTO" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HSTAFF" ADD CONSTRAINT "HSTAFF_PK" PRIMARY KEY ("HSTAFFPK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HTIENDA
--------------------------------------------------------

  ALTER TABLE "DWHA01702686"."HTIENDA" MODIFY ("HTIENDAPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HTIENDA" MODIFY ("DTIEMPOPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HTIENDA" MODIFY ("DTIENDAPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HTIENDA" MODIFY ("CANTIDADVENDIDA" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HTIENDA" MODIFY ("INGRESOTOTAL" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HTIENDA" MODIFY ("INGRESODESCUENTO" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."HTIENDA" ADD CONSTRAINT "HTIENDA_PK" PRIMARY KEY ("HTIENDAPK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DTIENDA
--------------------------------------------------------

  ALTER TABLE "DWHA01702686"."DTIENDA" MODIFY ("DTIENDAPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DTIENDA" MODIFY ("CODIGO" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DTIENDA" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DTIENDA" ADD CONSTRAINT "DTIENDA_PK" PRIMARY KEY ("DTIENDAPK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DPRODUCTO
--------------------------------------------------------

  ALTER TABLE "DWHA01702686"."DPRODUCTO" MODIFY ("DPRODUCTOPK" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DPRODUCTO" MODIFY ("CODIGO" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DPRODUCTO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DPRODUCTO" MODIFY ("ANIOMODELO" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DPRODUCTO" MODIFY ("PRECIO" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DPRODUCTO" MODIFY ("NOMBREMARCA" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DPRODUCTO" MODIFY ("NOMBRECATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "DWHA01702686"."DPRODUCTO" ADD CONSTRAINT "DPRODUCTO_PK" PRIMARY KEY ("DPRODUCTOPK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HCLIENTE
--------------------------------------------------------

  ALTER TABLE "DWHA01702686"."HCLIENTE" ADD CONSTRAINT "HCLIENTE_FK1" FOREIGN KEY ("DTIEMPOPK")
	  REFERENCES "DWHA01702686"."DTIEMPO" ("DTIEMPOPK") ENABLE;
  ALTER TABLE "DWHA01702686"."HCLIENTE" ADD CONSTRAINT "HCLIENTE_FK2" FOREIGN KEY ("DCLIENTEPK")
	  REFERENCES "DWHA01702686"."DCLIENTE" ("DCLIENTEPK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HPRODUCTO
--------------------------------------------------------

  ALTER TABLE "DWHA01702686"."HPRODUCTO" ADD CONSTRAINT "HPRODUCTO_FK1" FOREIGN KEY ("DPRODUCTOPK")
	  REFERENCES "DWHA01702686"."DPRODUCTO" ("DPRODUCTOPK") ENABLE;
  ALTER TABLE "DWHA01702686"."HPRODUCTO" ADD CONSTRAINT "HPRODUCTO_FK2" FOREIGN KEY ("DTIEMPOPK")
	  REFERENCES "DWHA01702686"."DTIEMPO" ("DTIEMPOPK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HSTAFF
--------------------------------------------------------

  ALTER TABLE "DWHA01702686"."HSTAFF" ADD CONSTRAINT "HSTAFF_FK1" FOREIGN KEY ("DTIEMPOPK")
	  REFERENCES "DWHA01702686"."DTIEMPO" ("DTIEMPOPK") ENABLE;
  ALTER TABLE "DWHA01702686"."HSTAFF" ADD CONSTRAINT "HSTAFF_FK2" FOREIGN KEY ("DSTAFFPK")
	  REFERENCES "DWHA01702686"."DSTAFF" ("DSTAFFPK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HTIENDA
--------------------------------------------------------

  ALTER TABLE "DWHA01702686"."HTIENDA" ADD CONSTRAINT "HTIENDA_FK1" FOREIGN KEY ("DTIENDAPK")
	  REFERENCES "DWHA01702686"."DTIENDA" ("DTIENDAPK") ENABLE;
  ALTER TABLE "DWHA01702686"."HTIENDA" ADD CONSTRAINT "HTIENDA_FK2" FOREIGN KEY ("DTIEMPOPK")
	  REFERENCES "DWHA01702686"."DTIEMPO" ("DTIEMPOPK") ENABLE;


  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DWHA01702686"."PRODUCTO" ("PRODUCT_ID", "PRODUCT_NAME", "BRAND_NAME", "CATEGORY_NAME", "MODEL_YEAR", "LIST_PRICE") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  select p.product_id, p.product_name, b.brand_name, c.category_name, p.model_year, p.list_price
from BIKESTORE.products p, BIKESTORE.brands b, BIKESTORE.categories c
where p.brand_id = b.brand_id
and p.category_id = c.category_id;



  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DWHA01702686"."ORDERS_UNION" ("ORDER_ID", "CUSTOMER_ID", "ORDER_STATUS", "ORDER_DATE", "REQUIRED_DATE", "SHIPPED_DATE", "STORE_ID", "STAFF_ID", "ITEM_ID", "PRODUCT_ID", "QUANTITY", "LIST_PRICE", "DISCOUNT") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  select o.order_id, o.customer_id, o.order_status, o.order_date, o.required_date, 
o.shipped_date, o.store_id, o.staff_id, oi.item_id, oi.product_id, oi.quantity, oi.list_price, oi.discount
from bikestore.orders o, BIKESTORE.order_items oi
where oi.order_id = o.order_id;
