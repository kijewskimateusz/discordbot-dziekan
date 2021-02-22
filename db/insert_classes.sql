
insert into tb_classes (start,end,subject_id, class_type_id, spec_id)
VALUES
	
		('2021-02-20 08:00', '2021-02-20 10:35', (select id from tb_ref_subject where name = 'Narzędzia analizy czasu rzeczywistego'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-02-20 10:45', '2021-02-20 13:20', (select id from tb_ref_subject where name = 'Narzędzia analizy czasu rzeczywistego'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-02-20 13:30', '2021-02-20 16:05', (select id from tb_ref_subject where name = 'Wizualizacja danych i raportowanie'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-02-20 16:15', '2021-02-20 18:50', (select id from tb_ref_subject where name = 'Seminarium magisterskie'), (select id from tb_ref_class_type where type = 'Seminarium'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-02-21 08:00', '2021-02-20 10:35', (select id from tb_ref_subject where name = 'Laboratorium ETL'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-02-21 10:45', '2021-02-20 13:20', (select id from tb_ref_subject where name = 'Laboratorium ETL'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-02-21 13:30', '2021-02-20 16:05', (select id from tb_ref_subject where name = 'Systemy uczące się'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-03-06 08:00', '2021-03-06 10:35', (select id from tb_ref_subject where name = 'Programowanie współbieżne i rozproszone'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-06 10:45', '2021-03-06 13:20', (select id from tb_ref_subject where name = 'Systemy uczące się'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-06 13:30', '2021-03-06 16:05', (select id from tb_ref_subject where name = 'Programowanie współbieżne i rozproszone'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-06 16:15', '2021-03-06 18:50', (select id from tb_ref_subject where name = 'Wizualizacja danych i raportowanie'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-03-07 08:00', '2021-03-07 10:35', (select id from tb_ref_subject where name = 'Biznesplany projektów informatycznych'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-07 10:45', '2021-03-07 13:20', (select id from tb_ref_subject where name = 'Laboratorium ETL'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-07 13:30', '2021-03-07 16:05', (select id from tb_ref_subject where name = 'Biznesplany projektów informatycznych'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-07 16:15', '2021-03-07 18:50', (select id from tb_ref_subject where name = 'Programowanie w chmurze obliczeniowej'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-03-13 10:45', '2021-03-13 13:20', (select id from tb_ref_subject where name = 'Narzędzia analizy czasu rzeczywistego'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-13 13:30', '2021-03-13 16:05', (select id from tb_ref_subject where name = 'Wizualizacja danych i raportowanie'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-13 16:15', '2021-03-13 18:50', (select id from tb_ref_subject where name = 'Społeczna odpowiedzialność biznesu'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-03-14 08:00', '2021-03-14 10:35', (select id from tb_ref_subject where name = 'Laboratorium ETL'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-14 10:45', '2021-03-14 13:20', (select id from tb_ref_subject where name = 'Laboratorium ETL'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-14 13:30', '2021-03-14 16:05', (select id from tb_ref_subject where name = 'Programowanie w chmurze obliczeniowej'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-03-27 08:00', '2021-03-27 10:35', (select id from tb_ref_subject where name = 'Systemy uczące się'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-27 10:45', '2021-03-27 13:20', (select id from tb_ref_subject where name = 'Systemy uczące się'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-27 13:30', '2021-03-27 16:05', (select id from tb_ref_subject where name = 'Programowanie współbieżne i rozproszone'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-27 16:15', '2021-03-27 18:50', (select id from tb_ref_subject where name = 'Programowanie współbieżne i rozproszone'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-03-28 08:00', '2021-03-28 10:35', (select id from tb_ref_subject where name = 'Biznesplany projektów informatycznych'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-28 10:45', '2021-03-28 13:20', (select id from tb_ref_subject where name = 'Narzędzia analizy czasu rzeczywistego'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-28 13:30', '2021-03-28 16:05', (select id from tb_ref_subject where name = 'Biznesplany projektów informatycznych'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-03-28 16:15', '2021-03-28 18:50', (select id from tb_ref_subject where name = 'Programowanie w chmurze obliczeniowej'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-04-10 08:00', '2021-04-10 10:35', (select id from tb_ref_subject where name = 'Narzędzia analizy czasu rzeczywistego'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-04-10 10:45', '2021-04-10 13:20', (select id from tb_ref_subject where name = 'Narzędzia analizy czasu rzeczywistego'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-04-10 13:30', '2021-04-10 16:05', (select id from tb_ref_subject where name = 'Społeczna odpowiedzialność biznesu'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-04-11 10:45', '2021-04-11 13:20', (select id from tb_ref_subject where name = 'Laboratorium ETL'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-04-11 13:30', '2021-04-11 16:05', (select id from tb_ref_subject where name = 'Programowanie w chmurze obliczeniowej'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-04-17 08:00', '2021-04-17 10:35', (select id from tb_ref_subject where name = 'Programowanie współbieżne i rozproszone'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-04-17 10:45', '2021-04-17 13:20', (select id from tb_ref_subject where name = 'Wizualizacja danych i raportowanie'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-04-17 13:30', '2021-04-17 16:05', (select id from tb_ref_subject where name = 'Społeczna odpowiedzialność biznesu'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-04-17 16:15', '2021-04-17 18:50', (select id from tb_ref_subject where name = 'Programowanie w chmurze obliczeniowej'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-04-24 08:00', '2021-04-24 10:35', (select id from tb_ref_subject where name = 'Programowanie współbieżne i rozproszone'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-04-24 10:45', '2021-04-24 13:20', (select id from tb_ref_subject where name = 'Systemy uczące się'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-04-24 13:30', '2021-04-24 16:05', (select id from tb_ref_subject where name = 'Programowanie współbieżne i rozproszone'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-04-24 16:15', '2021-04-24 18:50', (select id from tb_ref_subject where name = 'Wizualizacja danych i raportowanie'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-04-25 08:00', '2021-04-25 10:35', (select id from tb_ref_subject where name = 'Biznesplany projektów informatycznych'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-04-25 10:45', '2021-04-25 13:20', (select id from tb_ref_subject where name = 'Programowanie w chmurze obliczeniowej'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-04-25 13:30', '2021-04-25 16:05', (select id from tb_ref_subject where name = 'Systemy uczące się'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-05-08 08:00', '2021-05-08 10:35', (select id from tb_ref_subject where name = 'Narzędzia analizy czasu rzeczywistego'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-05-08 10:45', '2021-05-08 13:20', (select id from tb_ref_subject where name = 'Narzędzia analizy czasu rzeczywistego'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-05-08 13:30', '2021-05-08 16:05', (select id from tb_ref_subject where name = 'Wizualizacja danych i raportowanie'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-05-08 16:15', '2021-05-08 18:50', (select id from tb_ref_subject where name = 'Seminarium magisterskie'), (select id from tb_ref_class_type where type = 'Seminarium'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-05-09 08:00', '2021-05-09 10:35', (select id from tb_ref_subject where name = 'Laboratorium ETL'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-05-09 10:45', '2021-05-09 13:20', (select id from tb_ref_subject where name = 'Laboratorium ETL'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-05-09 13:30', '2021-05-09 16:05', (select id from tb_ref_subject where name = 'Programowanie w chmurze obliczeniowej'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-05-15 08:00', '2021-05-15 10:35', (select id from tb_ref_subject where name = 'Systemy uczące się'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-05-15 10:45', '2021-05-15 13:20', (select id from tb_ref_subject where name = 'Systemy uczące się'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-05-15 13:30', '2021-05-15 16:05', (select id from tb_ref_subject where name = 'Programowanie współbieżne i rozproszone'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-05-15 16:15', '2021-05-15 18:50', (select id from tb_ref_subject where name = 'Wizualizacja danych i raportowanie'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-05-29 10:45', '2021-05-29 13:20', (select id from tb_ref_subject where name = 'Narzędzia analizy czasu rzeczywistego'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-05-29 13:30', '2021-05-29 16:05', (select id from tb_ref_subject where name = 'Wizualizacja danych i raportowanie'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-05-29 16:15', '2021-05-29 18:50', (select id from tb_ref_subject where name = 'Społeczna odpowiedzialność biznesu'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-05-30 08:00', '2021-05-30 10:35', (select id from tb_ref_subject where name = 'Laboratorium ETL'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-05-30 10:45', '2021-05-30 13:20', (select id from tb_ref_subject where name = 'Programowanie w chmurze obliczeniowej'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-06-12 10:45', '2021-06-12 13:20', (select id from tb_ref_subject where name = 'Systemy uczące się'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-06-12 13:30', '2021-06-12 16:05', (select id from tb_ref_subject where name = 'Programowanie współbieżne i rozproszone'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-06-12 16:15', '2021-06-12 18:50', (select id from tb_ref_subject where name = 'Biznesplany projektów informatycznych'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),

		('2021-06-13 08:00', '2021-06-13 10:35', (select id from tb_ref_subject where name = 'Społeczna odpowiedzialność biznesu'), (select id from tb_ref_class_type where type = 'Wykład'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-06-13 10:45', '2021-06-13 13:20', (select id from tb_ref_subject where name = 'Programowanie w chmurze obliczeniowej'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych')),
		('2021-06-13 13:30', '2021-06-13 16:05', (select id from tb_ref_subject where name = 'Biznesplany projektów informatycznych'), (select id from tb_ref_class_type where type = 'Ćwiczenia'), (select id from tb_ref_spec where name = 'Analiza Dużych Zbiorów Danych'))