INSERT INTO Klient(nr_kli,imie,nazwisko) VALUES (1,'Małgorzata', 'Kuśmierek');
INSERT INTO Klient(nr_kli,imie,nazwisko) VALUES (2,'Jan', 'Chodkiewicz');
INSERT INTO Klient(nr_kli,imie,nazwisko) VALUES (3,'Jadwiga', 'Szczęsna');
INSERT INTO Klient(nr_kli,imie,nazwisko) VALUES (4,'Agnieszka', 'Kołak');
INSERT INTO Klient(nr_kli,imie,nazwisko) VALUES (5,'Agnieszka', 'Kołak');
INSERT INTO Klient(nr_kli,imie) VALUES (6,'Ewex sp.zoo');

INSERT INTO Pracownik(nr_pra,imie,nazwisko,wynagrodzenie) VALUES (1,'Anna', 'Kamm',4000.00);
INSERT INTO Pracownik(nr_pra,imie,nazwisko,wynagrodzenie) VALUES (2,'Anna', 'Kowalska',2000.00);
INSERT INTO Pracownik(nr_pra,imie,nazwisko,wynagrodzenie) VALUES (3,'Paulina', 'Kamm',2000.00);
INSERT INTO Pracownik(nr_pra,imie,wynagrodzenie) VALUES (4,'Stażystka',400);
INSERT INTO Pracownik(nr_pra,imie,wynagrodzenie) VALUES (5,'Stażystka',400);

INSERT INTO Kosmetyki(nr_kos,nazwa,marka,stan) VALUES (1,'Olej do masażu', 'Olejix',20);
INSERT INTO Kosmetyki(nr_kos,nazwa,marka,stan) VALUES (2,'Peeling', 'Manicurex',14);
INSERT INTO Kosmetyki(nr_kos,nazwa,marka,stan) VALUES (3,'Krem do cery suchej', 'Kremix',10);
INSERT INTO Kosmetyki(nr_kos,nazwa,marka,stan) VALUES (4,'Krem do cery wysuszonej', 'Kremix',5);
INSERT INTO Kosmetyki(nr_kos,nazwa,marka,stan) VALUES (5,'Krem przeciwtrądzikowy', 'Kremix',16);
INSERT INTO Kosmetyki(nr_kos,nazwa,marka,stan) VALUES (6,'Lakiery', 'Manicurex',13);
INSERT INTO Kosmetyki(nr_kos,nazwa,marka,stan) VALUES (7,'Farby do włosów', 'Farbix',4);

INSERT INTO Stanowisko_Pracy(nr_spr,rodzaj) VALUES (1,'Gabinet 1');
INSERT INTO Stanowisko_Pracy(nr_spr,rodzaj) VALUES (2,'Gabinet 2');
INSERT INTO Stanowisko_Pracy(nr_spr,rodzaj) VALUES (3,'Paznokcie');
INSERT INTO Stanowisko_Pracy(nr_spr,rodzaj) VALUES (4,'Masaż');

INSERT INTO Narzedzia(nr_nar,nazwa,model) VALUES (1,'Parownica','Parownicex 3000');
INSERT INTO Narzedzia(nr_nar,nazwa,model) VALUES (2,'Laser','Laserex 3000');
INSERT INTO Narzedzia(nr_nar,nazwa,model) VALUES (4,'Frezarka','Frezarka 3600');
INSERT INTO Narzedzia(nr_nar,nazwa,model) VALUES (5,'Lampa UV','Lampex 3000');
INSERT INTO Narzedzia(nr_nar,nazwa,model) VALUES (6,'Lampa IR','Lampex 3000');
INSERT INTO Narzedzia(nr_nar,nazwa,model) VALUES (7,'Pędzle','Farbix');
INSERT INTO Narzedzia(nr_nar,nazwa,model) VALUES (8,'Laptop','HPex');
INSERT INTO Narzedzia(nr_nar,nazwa,model) VALUES (9,'Narzędzia Chirurgiczne','Manicurex');

INSERT INTO Zabieg(nr_zab,termin,kategoria,rodzaj,cena,Klient_nr,Pracownik_nr) VALUES (1,'2021-05-22','Masaż relaxacyjny','Masaż',250,1,1);
INSERT INTO Zabieg(nr_zab,termin,kategoria,rodzaj,cena,Klient_nr,Pracownik_nr) VALUES (2,'2021-05-22','Manicure','Paznokcie',150.50,2,3);
INSERT INTO Zabieg(nr_zab,termin,kategoria,rodzaj,cena,Klient_nr,Pracownik_nr) VALUES (3,'2021-05-22','Farbowanie włosów','Gabinet 1',124.20,3,4);
INSERT INTO Zabieg(nr_zab,termin,kategoria,rodzaj,cena,Klient_nr,Pracownik_nr) VALUES (4,'2021-05-23','Odnowa skóry','Gabinet 1 i 2',44.40,4,1);
INSERT INTO Zabieg(nr_zab,termin,kategoria,rodzaj,cena,Klient_nr,Pracownik_nr) VALUES (5,'2021-05-23','Odmładznie skóry','Gabinet 1 i 2',320.30,5,2);
INSERT INTO Zabieg(nr_zab,termin,kategoria,rodzaj,cena,Klient_nr,Pracownik_nr) VALUES (6,'2021-05-23','Manicure','Paznokcie',150.50,6,3);

INSERT INTO potrzebne(nr_zab,nr_kos,ilosc) VALUES (1,1,1);
INSERT INTO potrzebne(nr_zab,nr_kos,ilosc) VALUES (2,6,2);
INSERT INTO potrzebne(nr_zab,nr_kos,ilosc) VALUES (2,2,0.5);
INSERT INTO potrzebne(nr_zab,nr_kos,ilosc) VALUES (3,7,1);
INSERT INTO potrzebne(nr_zab,nr_kos,ilosc) VALUES (4,4,0.5);
INSERT INTO potrzebne(nr_zab,nr_kos,ilosc) VALUES (4,2,0.5);
INSERT INTO potrzebne(nr_zab,nr_kos,ilosc) VALUES (5,3,0.5);
INSERT INTO potrzebne(nr_zab,nr_kos,ilosc) VALUES (5,2,0.5);
INSERT INTO potrzebne(nr_zab,nr_kos,ilosc) VALUES (6,6,2);
INSERT INTO potrzebne(nr_zab,nr_kos,ilosc) VALUES (6,2,0.5);

INSERT INTO na(nr_zab,nr_spr) VALUES (1,4);
INSERT INTO na(nr_zab,nr_spr) VALUES (2,3);
INSERT INTO na(nr_zab,nr_spr) VALUES (3,1);
INSERT INTO na(nr_zab,nr_spr) VALUES (4,1);
INSERT INTO na(nr_zab,nr_spr) VALUES (4,2);
INSERT INTO na(nr_zab,nr_spr) VALUES (5,1);
INSERT INTO na(nr_zab,nr_spr) VALUES (5,2);
INSERT INTO na(nr_zab,nr_spr) VALUES (6,3);

INSERT INTO sa(nr_nar,nr_spr) VALUES (1,2);
INSERT INTO sa(nr_nar,nr_spr) VALUES (2,1);
INSERT INTO sa(nr_nar,nr_spr) VALUES (2,2);
INSERT INTO sa(nr_nar,nr_spr) VALUES (4,3);
INSERT INTO sa(nr_nar,nr_spr) VALUES (5,2);
INSERT INTO sa(nr_nar,nr_spr) VALUES (6,2);
INSERT INTO sa(nr_nar,nr_spr) VALUES (7,1);
INSERT INTO sa(nr_nar,nr_spr) VALUES (8,3);
INSERT INTO sa(nr_nar,nr_spr) VALUES (9,1);
INSERT INTO sa(nr_nar,nr_spr) VALUES (9,2);