--
-- Plik wygenerowany przez SQLiteStudio v3.2.1 dnia niedz. lut 21 21:49:24 2021
--
-- Użyte kodowanie tekstu: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tabela: tb_classes
DROP TABLE IF EXISTS tb_classes;

CREATE TABLE tb_classes (
    ID            INTEGER  PRIMARY KEY AUTOINCREMENT,
    start         DATETIME NOT NULL,
    [end]         DATETIME NOT NULL,
    subject_id    INTEGER  REFERENCES tb_ref_subject (ID) 
                           NOT NULL,
    teacher_id    INTEGER  REFERENCES tb_ref_teacher (ID) 
                           NOT NULL,
    class_type_id INTEGER  REFERENCES tb_ref_class_type (ID) 
                           NOT NULL,
    spec_id       INTEGER  REFERENCES tb_ref_spec (ID) 
);


-- Tabela: tb_quotes
DROP TABLE IF EXISTS tb_quotes;

CREATE TABLE tb_quotes (
    ID         INTEGER        PRIMARY KEY AUTOINCREMENT
                              NOT NULL,
    teacher_id INTEGER        NOT NULL
                              REFERENCES tb_ref_teacher (ID),
    quote      NVARCHAR (250) NOT NULL
);


-- Tabela: tb_ref_class_type
DROP TABLE IF EXISTS tb_ref_class_type;

CREATE TABLE tb_ref_class_type (
    ID      INTEGER       PRIMARY KEY AUTOINCREMENT,
    type    VARCHAR (100) NOT NULL,
    comment VARCHAR (100) 
);


-- Tabela: tb_ref_meeting
DROP TABLE IF EXISTS tb_ref_meeting;

CREATE TABLE tb_ref_meeting (
    ID         INTEGER       PRIMARY KEY AUTOINCREMENT,
    subject_id INTEGER       REFERENCES tb_ref_subject (ID) 
                             NOT NULL,
    url        VARCHAR (100) UNIQUE
                             NOT NULL,
    comment    VARCHAR (100),
    class_id   INTEGER       REFERENCES tb_ref_class_type (ID) 
                             NOT NULL
);


-- Tabela: tb_ref_parameter
DROP TABLE IF EXISTS tb_ref_parameter;

CREATE TABLE tb_ref_parameter (
    ID            INTEGER        PRIMARY KEY AUTOINCREMENT,
    param         NVARCHAR (100),
    value_text    NVARCHAR (100),
    value_numeric INT
);


-- Tabela: tb_ref_spec
DROP TABLE IF EXISTS tb_ref_spec;

CREATE TABLE tb_ref_spec (
    ID      INTEGER PRIMARY KEY AUTOINCREMENT,
    name    VARCHAR NOT NULL,
    comment VARCHAR
);


-- Tabela: tb_ref_subject
DROP TABLE IF EXISTS tb_ref_subject;

CREATE TABLE tb_ref_subject (
    ID      INTEGER       PRIMARY KEY AUTOINCREMENT,
    name    VARCHAR (100) NOT NULL,
    comment VARCHAR (100) 
);


-- Tabela: tb_ref_teacher
DROP TABLE IF EXISTS tb_ref_teacher;

CREATE TABLE tb_ref_teacher (
    ID      INTEGER       PRIMARY KEY AUTOINCREMENT,
    name    VARCHAR (100) NOT NULL
                          UNIQUE,
    comment VARCHAR (100) 
);


-- Wyzwalacz: _post_add_set_quotes_number
DROP TRIGGER IF EXISTS _post_add_set_quotes_number;
CREATE TRIGGER _post_add_set_quotes_number
         AFTER INSERT
            ON tb_quotes
BEGIN
    UPDATE tb_ref_parameter
       SET value_numeric = (
               SELECT count(id) 
                 FROM tb_quotes
           )
     WHERE param = 'count_quotes';
END;


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
