
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tabela: tb_quotes
DROP TABLE IF EXISTS tb_quotes;

CREATE TABLE tb_quotes (
    ID         INTEGER        PRIMARY KEY AUTOINCREMENT
                              NOT NULL,
    teacher_id INTEGER        NOT NULL,
    quote      NVARCHAR (250) NOT NULL
);


-- Tabela: tb_ref_parameter
DROP TABLE IF EXISTS tb_ref_parameter;

CREATE TABLE tb_ref_parameter (
    ID            INTEGER        PRIMARY KEY AUTOINCREMENT,
    param         NVARCHAR (100),
    value_text    NVARCHAR (100),
    value_numeric INT
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
