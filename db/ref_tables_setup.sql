insert into tb_ref_subject (name) values

('Narzędzia analizy czasu rzeczywistego')
,('Wizualizacja danych i raportowanie')
,('Seminarium magisterskie')
,('Laboratorium ETL')
,('Programowanie współbieżne i rozproszone')
,('Systemy uczące się')
,('Biznesplany projektów informatycznych')
,('Programowanie w chmurze obliczeniowej')
,('Społeczna odpowiedzialność biznesu');


insert into tb_ref_teacher (name) values
('Alicja Ganczarek-Gamrot'),
('Krzysztof Kania'),
('Mariusz Żytniewski'),
('Jan Kozak'),
('Anna Kempa'),
('Jerzy Michnik'),
('Przemysław Sekuła'),
('Urszula Janeczek');


INSERT INTO tb_ref_class_type (type) VALUES 
('Seminarium'),
('Ćwiczenia'),
('Wykład');


INSERT INTO tb_ref_spec (comment, name) VALUES 
('ADZD', 'Analiza Dużych Zbiorów Danych'),
('GAMOB', 'Gry i Aplikacje Mobilne');