SELECT nazwa,rodzaj FROM narzedzia N, stanowisko_pracy S, sa D WHERE N.nr_nar=D.nr_nar AND D.nr_spr=S.nr_spr;
SELECT termin,kategoria,imie,nazwisko FROM zabieg Z, pracownik L WHERE Z.pracownik_nr=L.nr_pra ORDER BY pracownik_nr;
SELECT termin,kategoria,nazwa,stan FROM zabieg N, kosmetyki S, potrzebne D WHERE N.nr_zab=D.nr_zab AND D.nr_kos=S.nr_kos;
SELECT nazwisko,count (nazwisko) FROM klient GROUP BY nazwisko HAVING count (nazwisko) > 1;
ile pracownik zrobił zabiegów
SELECT nr_pra,imie,nazwisko, COUNT(zabieg.pracownik_nr ) AS ilosc_zabiegow FROM (pracownik INNER JOIN zabieg ON pracownik.nr_pra = zabieg.pracownik_nr) GROUP BY nr_pra,imie,nazwisko ORDER BY nr_pra;
SELECT * FROM klient WHERE nazwisko IS NULL;
który kosmety jest najbardziej używany
nieużywane narzedzia
nueużywane kosmetyki