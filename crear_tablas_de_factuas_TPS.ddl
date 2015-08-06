-- Generado por Oracle SQL Developer Data Modeler 4.1.1.888
--   en:        2015-08-05 17:27:13 CST
--   sitio:      Oracle Database 12c
--   tipo:      Oracle Database 12c




CREATE TABLE DBD_Estado_transaccion
  (
    id     INTEGER NOT NULL ,
    estado VARCHAR2 (45)
  ) ;
ALTER TABLE DBD_Estado_transaccion ADD CONSTRAINT Estado_transaccion_PK PRIMARY KEY ( id ) ;


CREATE TABLE DBD_Factura
  (
    id                 INTEGER NOT NULL ,
    fecha              DATE ,
    nombre             VARCHAR2 (45) ,
    total              NUMBER ,
    cobrar             INTEGER NOT NULL ,
    detalle_factura_id INTEGER NOT NULL
  ) ;
ALTER TABLE DBD_Factura ADD CONSTRAINT Factura_PK PRIMARY KEY ( id ) ;


CREATE TABLE DBD_detalle_factura
  (
    id                INTEGER NOT NULL ,
    cantidad_producto INTEGER ,
    sub_total         NUMBER ,
    producto_id       INTEGER NOT NULL
  ) ;
ALTER TABLE DBD_detalle_factura ADD CONSTRAINT detalle_factura_PK PRIMARY KEY ( id ) ;


CREATE TABLE DBD_producto
  (
    id         INTEGER NOT NULL ,
    nombre_P   VARCHAR2 (45) NOT NULL ,
    precio     NUMBER ,
    existencia INTEGER
  ) ;
ALTER TABLE DBD_producto ADD CONSTRAINT producto_PK PRIMARY KEY ( id ) ;


ALTER TABLE DBD_detalle_factura ADD CONSTRAINT dF_producto FOREIGN KEY ( producto_id ) REFERENCES DBD_producto ( id ) ;

ALTER TABLE DBD_Factura ADD CONSTRAINT detalle_fF FOREIGN KEY ( detalle_factura_id ) REFERENCES DBD_detalle_factura ( id ) ;


-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              6
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
