create table Klient(
    nr_kli	                    INTEGER             PRIMARY KEY,
    imie                        varchar(32)     	NOT NULL,
    nazwisko                    varchar(32)				
);
create table Pracownik(
    nr_pra		                INTEGER             PRIMARY KEY,
    imie                        varchar(32)     	NOT NULL,
    nazwisko                    varchar(32)     			,
	wynagrodzenie				numeric(8,2)		NOT NULL
);
create table Kosmetyki(
    nr_kos                      INTEGER              PRIMARY KEY,
    nazwa                       varchar(32)     	NOT NULL,
    marka	                    varchar(32)     	NOT NULL,
	stan						numeric(4)			NOT NULL	
);
create table Stanowisko_Pracy(
    nr_spr                      INTEGER    			PRIMARY KEY,
    rodzaj                      varchar(16)     	NOT NULL
);
create table Narzedzia(
    nr_nar                      serial              PRIMARY KEY,
    nazwa                       varchar(32)     	NOT NULL,
    model	                    varchar(32)     	NOT NULL
);
create table Zabieg(
    nr_zab                      serial              PRIMARY KEY,
    termin                      date		     	NOT NULL,
    kategoria	                varchar(32)     	NOT NULL,
	rodzaj						varchar(32)			NOT NULL,
	cena						numeric(7,2)		NOT NULL,
	Klient_nr					int					NOT NULL,
	Pracownik_nr				int					NOT NULL,
	CONSTRAINT                  Klient_fk 			FOREIGN KEY(Klient_nr)		REFERENCES Klient(nr_kli),
	CONSTRAINT                  Pracownik_fk 		FOREIGN KEY(Pracownik_nr)	REFERENCES Pracownik(nr_pra)
);
create table potrzebne(
	nr_zab						INTEGER    			NOT NULL,
	nr_kos						INTEGER    			NOT NULL,
	ilosc						numeric(4)					,
	CONSTRAINT                  Zabieg_fk 			FOREIGN KEY(nr_zab)		REFERENCES Zabieg(nr_zab),
	CONSTRAINT                  Klient_fk 			FOREIGN KEY(nr_kos)		REFERENCES kosmetyki(nr_kos)
);
create table na(
	nr_zab						INTEGER    			NOT NULL,
	nr_spr						INTEGER     		NOT NULL,
	CONSTRAINT                  Zabieg_fk 			FOREIGN KEY(nr_zab)		REFERENCES Zabieg(nr_zab),
	CONSTRAINT                  Stanowisko_Pracy_fk FOREIGN KEY(nr_spr)		REFERENCES Stanowisko_Pracy(nr_spr)
);
create table sa(
	nr_nar						INTEGER    			NOT NULL,
	nr_spr						INTEGER    			NOT NULL,
	CONSTRAINT                  Narzedzia_fk 		FOREIGN KEY(nr_nar)		REFERENCES Narzedzia(nr_nar),
	CONSTRAINT                  Stanowisko_Pracy_fk FOREIGN KEY(nr_spr)		REFERENCES Stanowisko_Pracy(nr_spr)
);
