Created: 15.11.2020
Modified: 19.11.2020
Project: Klub_tenisowy
Model: Klub_tenisowy_logiczny
Company: PW
Author: Szymon_Olejnik Pawel_Denst
Version: 1.0
Database: Oracle 19c
*/


-- Create sequences section -------------------------------------------------

CREATE SEQUENCE Klub_TenisowySeq1
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE PracownikSeq1
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE AdresSeq1
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE PocztaSeq1
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE ObiektSeq1
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE WynagrodzenieSeq1
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE StanowiskoSeq1
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE WlascicielSeq1
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE UslugaSeq1
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE WydarzenieSeq1
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE KlientSeq1
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

-- Create tables section -------------------------------------------------

-- Table Kluby_Tenisowe

CREATE TABLE Kluby_Tenisowe(
  Nr_klubu Integer NOT NULL,
  Nazwa Varchar2(50 ) NOT NULL,
  Data_zalozenia Date NOT NULL,
  Nr_adresu Integer NOT NULL
)
/

-- Create indexes for table Kluby_Tenisowe

CREATE INDEX IX_Klub_ma_adres ON Kluby_Tenisowe (Nr_adresu)
/

-- Add keys for table Kluby_Tenisowe

ALTER TABLE Kluby_Tenisowe ADD CONSTRAINT Klub_PK PRIMARY KEY (Nr_klubu)
/

-- Table Pracownicy

CREATE TABLE Pracownicy(
  Nr_pracownika Integer NOT NULL,
  Imie Varchar2(20 ) NOT NULL,
  Nazwisko Varchar2(30 ) NOT NULL,
  Data_urodzenia Date NOT NULL,
  PESEL Char(11 ),
  Plec Char(1 ) NOT NULL
        CHECK (Plec IN ('K','M')),
  Data_zatrudnienia Date NOT NULL,
  Data_zwolnienia Date,
  Wazne_badania_lekarskie Char(1 ) NOT NULL,
  Kwalifikacje Varchar2(500 ),
  Nr_klubu Integer NOT NULL,
  Nr_adresu Integer NOT NULL,
  Nr_stanowiska Integer NOT NULL
)
/

-- Create indexes for table Pracownicy

CREATE INDEX IX_Zatrudnia ON Pracownicy (Nr_klubu)
/

CREATE INDEX IX_Pracownik_ma_adres ON Pracownicy (Nr_adresu)
/

CREATE INDEX IX_Pracownik_ma_stanowisko ON Pracownicy (Nr_stanowiska)
/

-- Add keys for table Pracownicy

ALTER TABLE Pracownicy ADD CONSTRAINT Unique_Identifier2 PRIMARY KEY (Nr_pracownika)
/

-- Table Obiekty

CREATE TABLE Obiekty(
  Nr_obiektu Integer NOT NULL,
  Status_obiektu Varchar2(15 ) NOT NULL
        CHECK (Status_obiektu IN ('Otwarty','Zamkniety')),
  Nazwa Varchar2(100 ) NOT NULL,
  Typ_obiektu Varchar2(30 ) NOT NULL,
  Nr_klubu Integer NOT NULL,
  Nr_adresu Integer NOT NULL
)
/

-- Create indexes for table Obiekty

CREATE INDEX IX_Posiada ON Obiekty (Nr_klubu)
/

CREATE INDEX IX_Obiekt_ma_adres ON Obiekty (Nr_adresu)
/

-- Add keys for table Obiekty

ALTER TABLE Obiekty ADD CONSTRAINT Unique_Identifier6 PRIMARY KEY (Nr_obiektu)
/

-- Table Korty

CREATE TABLE Korty(
  Nr_obiektu Integer NOT NULL,
  Nawierzchnia Varchar2(10 ) NOT NULL
        CHECK (Nawierzchnia IN ('Trawiasta','Twarda','Ceglana')),
  Trybuny Char(1 ) NOT NULL,
  Krzeselko_sedziowskie Char(1 ) NOT NULL
)
/

-- Add keys for table Korty

ALTER TABLE Korty ADD CONSTRAINT Unique_Identifier7 PRIMARY KEY (Nr_obiektu)
/

-- Table Wydarzenia

CREATE TABLE Wydarzenia(
  Nr_wydarzenia Integer NOT NULL,
  Nazwa Varchar2(100 ) NOT NULL,
  Data_rozpoczecia_wydarzenia Date NOT NULL,
  Opis Varchar2(500 ) NOT NULL,
  Data_zakonczenia_wydarzenia Date,
  Wpisowe Number(4,2)
)
/

-- Add keys for table Wydarzenia

ALTER TABLE Wydarzenia ADD CONSTRAINT Unique_Identifier9 PRIMARY KEY (Nr_wydarzenia)
/

-- Table Turnieje

CREATE TABLE Turnieje(
  Nr_wydarzenia Integer NOT NULL,
  Poziom_turnieju Varchar2(15 ) NOT NULL
        CHECK (Poziom_turnieju IN ('Junior','Amator','Profesjonalista','Open')),
  Typ_rozgrywek Varchar2(10 ) NOT NULL
        CHECK (Typ_rozgrywek IN ('singiel','debel','mikst')),
  Nagroda Number(10,2),
  System_rozgrywania_turnieju Varchar2(30 ) NOT NULL
)
/

-- Add keys for table Turnieje

ALTER TABLE Turnieje ADD CONSTRAINT Unique_Identifier11 PRIMARY KEY (Nr_wydarzenia)
/

-- Table Uslugi

CREATE TABLE Uslugi(
  Nr_uslugi Integer NOT NULL,
  Nazwa Varchar2(200 ) NOT NULL,
  Data_oplacenia_uslugi Date NOT NULL,
  Data_rozpoczecia_uslugi Date,
  Data_zakonczenia_uslugi Date,
  Cena Number(10,2) NOT NULL,
  Sprzet Varchar2(300 ),
  Typ_uslugi Varchar2(15 ) NOT NULL
        CHECK (Typ_uslugi IN ('Wynajem','Wypozyczenie','Zakup','Trening')),
  Nr_klubu Integer NOT NULL,
  Nr_klienta Integer NOT NULL
)
/

-- Create indexes for table Uslugi

CREATE INDEX IX_Oferuje ON Uslugi (Nr_klubu)
/

CREATE INDEX IX_Korzysta_z ON Uslugi (Nr_klienta)
/

-- Add keys for table Uslugi

ALTER TABLE Uslugi ADD CONSTRAINT Unique_Identifier12 PRIMARY KEY (Nr_uslugi)
/

-- Table Klienci

CREATE TABLE Klienci(
  Nr_klienta Integer NOT NULL,
  Imie Varchar2(30 ) NOT NULL,
  Nazwisko Varchar2(30 ) NOT NULL,
  Nr_telefonu Varchar2(15 ),
  E_mail Varchar2(45 ),
  PESEL Char(11 ),
  Data_urodzenia Date,
  Plec Char(1 )
        CHECK (Plec IN ('K','M')),
  Nr_adresu Integer NOT NULL
)
/

-- Create indexes for table Klienci

CREATE INDEX IX_Klient_ma_adres ON Klienci (Nr_adresu)
/

-- Add keys for table Klienci

ALTER TABLE Klienci ADD CONSTRAINT Unique_Identifier16 PRIMARY KEY (Nr_klienta)
/

-- Table Pracownik_Obiekt

CREATE TABLE Pracownik_Obiekt(
  Nr_pracownika Integer NOT NULL,
  Nr_obiektu Integer NOT NULL
)
/

-- Table Klub_Tenisowy_Wydarzenie

CREATE TABLE Klub_Tenisowy_Wydarzenie(
  Nr_klubu Integer NOT NULL,
  Nr_wydarzenia Integer NOT NULL
)
/

-- Table Wydarzenie_Obiekt

CREATE TABLE Wydarzenie_Obiekt(
  Nr_wydarzenia Integer NOT NULL,
  Nr_obiektu Integer NOT NULL
)
/

-- Table Usluga_Pracownik

CREATE TABLE Usluga_Pracownik(
  Nr_uslugi Integer NOT NULL,
  Nr_pracownika Integer NOT NULL
)
/

-- Table Wydarzenie_Pracownik

CREATE TABLE Wydarzenie_Pracownik(
  Nr_wydarzenia Integer NOT NULL,
  Nr_pracownika Integer NOT NULL
)
/

-- Table Usluga_Obiekt

CREATE TABLE Usluga_Obiekt(
  Nr_uslugi Integer NOT NULL,
  Nr_obiektu Integer NOT NULL
)
/

-- Table Klient_Wydarzenie

CREATE TABLE Klient_Wydarzenie(
  Nr_klienta Integer NOT NULL,
  Nr_wydarzenia Integer NOT NULL
)
/

-- Table Adresy

CREATE TABLE Adresy(
  Nr_adresu Integer NOT NULL,
  Miasto Varchar2(30 ) NOT NULL,
  Ulica Varchar2(30 ) NOT NULL,
  Numer_lokalu Varchar2(5 ) NOT NULL,
  Nr_poczty Integer NOT NULL
)
/

-- Create indexes for table Adresy

CREATE INDEX IX_Adres_ma_poczte ON Adresy (Nr_poczty)
/

-- Add keys for table Adresy

ALTER TABLE Adresy ADD CONSTRAINT PK_Adresy PRIMARY KEY (Nr_adresu)
/

-- Table and Columns comments section

COMMENT ON COLUMN Adresy.Nr_adresu IS 'Unikatowy identyfikator adresu'
/
COMMENT ON COLUMN Adresy.Miasto IS 'Miasto'
/
COMMENT ON COLUMN Adresy.Ulica IS 'Ulica'
/
COMMENT ON COLUMN Adresy.Numer_lokalu IS 'Numer_lokalu'
/

-- Table Wlasciciele

CREATE TABLE Wlasciciele(
  Nr_wlasciciela Integer NOT NULL,
  Imie Varchar2(30 ) NOT NULL,
  Nazwisko Varchar2(30 ) NOT NULL,
  Nr_adresu Integer NOT NULL,
  Nr_klubu Integer NOT NULL
)
/

-- Create indexes for table Wlasciciele

CREATE INDEX IX_Wlasciciel_ma_adres ON Wlasciciele (Nr_adresu)
/

CREATE INDEX IX_Klub_ma_wlasciciela ON Wlasciciele (Nr_klubu)
/

-- Add keys for table Wlasciciele

ALTER TABLE Wlasciciele ADD CONSTRAINT PK_Wlasciciele PRIMARY KEY (Nr_wlasciciela)
/

-- Table and Columns comments section

COMMENT ON COLUMN Wlasciciele.Nr_wlasciciela IS 'Unikatowy indentyfikator właściciela'
/
COMMENT ON COLUMN Wlasciciele.Imie IS 'Imię właściciela'
/
COMMENT ON COLUMN Wlasciciele.Nazwisko IS 'Nazwisko właściciela'
/

-- Table Poczty

CREATE TABLE Poczty(
  Nr_poczty Integer NOT NULL,
  Kod_poczty Char(6 ) NOT NULL,
  Poczta Varchar2(30 ) NOT NULL
)
/

-- Add keys for table Poczty

ALTER TABLE Poczty ADD CONSTRAINT PK_Poczty PRIMARY KEY (Nr_poczty)
/

ALTER TABLE Poczty ADD CONSTRAINT Kod_poczty UNIQUE (Kod_poczty)
/

-- Table and Columns comments section

COMMENT ON COLUMN Poczty.Nr_poczty IS 'Unikatowy identyfikator poczty'
/
COMMENT ON COLUMN Poczty.Kod_poczty IS 'Kod_poczty'
/
COMMENT ON COLUMN Poczty.Poczta IS 'Lokalizacja poczty'
/

-- Table Stanowiska

CREATE TABLE Stanowiska(
  Nr_stanowiska Integer NOT NULL,
  Nazwa_stanowiska Varchar2(30 ) NOT NULL,
  Opis_stanowiska Varchar2(400 ) NOT NULL
)
/

-- Add keys for table Stanowiska

ALTER TABLE Stanowiska ADD CONSTRAINT PK_Stanowiska PRIMARY KEY (Nr_stanowiska)
/

ALTER TABLE Stanowiska ADD CONSTRAINT Nazwa_stanowiska UNIQUE (Nazwa_stanowiska)
/

-- Table and Columns comments section

COMMENT ON COLUMN Stanowiska.Nr_stanowiska IS 'Unikatowy identyfikator stanowiska'
/
COMMENT ON COLUMN Stanowiska.Nazwa_stanowiska IS 'Nazwa stanowiska'
/
COMMENT ON COLUMN Stanowiska.Opis_stanowiska IS 'Opis stanowiska'
/

-- Table Wynagrodzenia

CREATE TABLE Wynagrodzenia(
  Nr_wynagrodzenia Integer NOT NULL,
  Data Date NOT NULL,
  Kwota_podstawowa Number(8,2) NOT NULL,
  Kwota_dodatkowa Number(8,2),
  Nr_pracownika Integer NOT NULL
)
/

-- Create indexes for table Wynagrodzenia

CREATE INDEX IX_Pracownik_otrzymuje_wynagrodzenie ON Wynagrodzenia (Nr_pracownika)
/

-- Add keys for table Wynagrodzenia

ALTER TABLE Wynagrodzenia ADD CONSTRAINT PK_Wynagrodzenia PRIMARY KEY (Nr_wynagrodzenia)
/

-- Table and Columns comments section

COMMENT ON COLUMN Wynagrodzenia.Nr_wynagrodzenia IS 'Unikatowy identyfikator wynagrodzenia'
/
COMMENT ON COLUMN Wynagrodzenia.Data IS 'Data wypłaty wynagrodzenia'
/
COMMENT ON COLUMN Wynagrodzenia.Kwota_podstawowa IS 'Podstawowa kwota wynagrodzenia'
/
COMMENT ON COLUMN Wynagrodzenia.Kwota_dodatkowa IS 'Dodatkowa kwota wynagrodzenia'
/

-- Trigger for sequence Klub_TenisowySeq1 for column Nr_klubu in table Kluby_Tenisowe ---------
CREATE OR REPLACE TRIGGER ts_Kluby_Tenisowe_Klub_TenisowySeq1 BEFORE INSERT
ON Kluby_Tenisowe FOR EACH ROW
BEGIN
  :new.Nr_klubu := Klub_TenisowySeq1.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Kluby_Tenisowe_Klub_TenisowySeq1 AFTER UPDATE OF Nr_klubu
ON Kluby_Tenisowe FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column Nr_klubu in table Kluby_Tenisowe as it uses sequence.');
END;
/

-- Trigger for sequence PracownikSeq1 for column Nr_pracownika in table Pracownicy ---------
CREATE OR REPLACE TRIGGER ts_Pracownicy_PracownikSeq1 BEFORE INSERT
ON Pracownicy FOR EACH ROW
BEGIN
  :new.Nr_pracownika := PracownikSeq1.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Pracownicy_PracownikSeq1 AFTER UPDATE OF Nr_pracownika
ON Pracownicy FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column Nr_pracownika in table Pracownicy as it uses sequence.');
END;
/

-- Trigger for sequence ObiektSeq1 for column Nr_obiektu in table Obiekty ---------
CREATE OR REPLACE TRIGGER ts_Obiekty_ObiektSeq1 BEFORE INSERT
ON Obiekty FOR EACH ROW
BEGIN
  :new.Nr_obiektu := ObiektSeq1.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Obiekty_ObiektSeq1 AFTER UPDATE OF Nr_obiektu
ON Obiekty FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column Nr_obiektu in table Obiekty as it uses sequence.');
END;
/

-- Trigger for sequence WydarzenieSeq1 for column Nr_wydarzenia in table Wydarzenia ---------
CREATE OR REPLACE TRIGGER ts_Wydarzenia_WydarzenieSeq1 BEFORE INSERT
ON Wydarzenia FOR EACH ROW
BEGIN
  :new.Nr_wydarzenia := WydarzenieSeq1.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Wydarzenia_WydarzenieSeq1 AFTER UPDATE OF Nr_wydarzenia
ON Wydarzenia FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column Nr_wydarzenia in table Wydarzenia as it uses sequence.');
END;
/

-- Trigger for sequence UslugaSeq1 for column Nr_uslugi in table Uslugi ---------
CREATE OR REPLACE TRIGGER ts_Uslugi_UslugaSeq1 BEFORE INSERT
ON Uslugi FOR EACH ROW
BEGIN
  :new.Nr_uslugi := UslugaSeq1.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Uslugi_UslugaSeq1 AFTER UPDATE OF Nr_uslugi
ON Uslugi FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column Nr_uslugi in table Uslugi as it uses sequence.');
END;
/

-- Trigger for sequence KlientSeq1 for column Nr_klienta in table Klienci ---------
CREATE OR REPLACE TRIGGER ts_Klienci_KlientSeq1 BEFORE INSERT
ON Klienci FOR EACH ROW
BEGIN
  :new.Nr_klienta := KlientSeq1.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Klienci_KlientSeq1 AFTER UPDATE OF Nr_klienta
ON Klienci FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column Nr_klienta in table Klienci as it uses sequence.');
END;
/

-- Trigger for sequence AdresSeq1 for column Nr_adresu in table Adresy ---------
CREATE OR REPLACE TRIGGER ts_Adresy_AdresSeq1 BEFORE INSERT
ON Adresy FOR EACH ROW
BEGIN
  :new.Nr_adresu := AdresSeq1.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Adresy_AdresSeq1 AFTER UPDATE OF Nr_adresu
ON Adresy FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column Nr_adresu in table Adresy as it uses sequence.');
END;
/

-- Trigger for sequence WlascicielSeq1 for column Nr_wlasciciela in table Wlasciciele ---------
CREATE OR REPLACE TRIGGER ts_Wlasciciele_WlascicielSeq1 BEFORE INSERT
ON Wlasciciele FOR EACH ROW
BEGIN
  :new.Nr_wlasciciela := WlascicielSeq1.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Wlasciciele_WlascicielSeq1 AFTER UPDATE OF Nr_wlasciciela
ON Wlasciciele FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column Nr_wlasciciela in table Wlasciciele as it uses sequence.');
END;
/

-- Trigger for sequence PocztaSeq1 for column Nr_poczty in table Poczty ---------
CREATE OR REPLACE TRIGGER ts_Poczty_PocztaSeq1 BEFORE INSERT
ON Poczty FOR EACH ROW
BEGIN
  :new.Nr_poczty := PocztaSeq1.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Poczty_PocztaSeq1 AFTER UPDATE OF Nr_poczty
ON Poczty FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column Nr_poczty in table Poczty as it uses sequence.');
END;
/

-- Trigger for sequence StanowiskoSeq1 for column Nr_stanowiska in table Stanowiska ---------
CREATE OR REPLACE TRIGGER ts_Stanowiska_StanowiskoSeq1 BEFORE INSERT
ON Stanowiska FOR EACH ROW
BEGIN
  :new.Nr_stanowiska := StanowiskoSeq1.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Stanowiska_StanowiskoSeq1 AFTER UPDATE OF Nr_stanowiska
ON Stanowiska FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column Nr_stanowiska in table Stanowiska as it uses sequence.');
END;
/

-- Trigger for sequence WynagrodzenieSeq1 for column Nr_wynagrodzenia in table Wynagrodzenia ---------
CREATE OR REPLACE TRIGGER ts_Wynagrodzenia_WynagrodzenieSeq1 BEFORE INSERT
ON Wynagrodzenia FOR EACH ROW
BEGIN
  :new.Nr_wynagrodzenia := WynagrodzenieSeq1.nextval;
END;
/
CREATE OR REPLACE TRIGGER tsu_Wynagrodzenia_WynagrodzenieSeq1 AFTER UPDATE OF Nr_wynagrodzenia
ON Wynagrodzenia FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20010,'Cannot update column Nr_wynagrodzenia in table Wynagrodzenia as it uses sequence.');
END;
/


-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE Pracownicy ADD CONSTRAINT Zatrudnia FOREIGN KEY (Nr_klubu) REFERENCES Kluby_Tenisowe (Nr_klubu)
/



ALTER TABLE Obiekty ADD CONSTRAINT Posiada FOREIGN KEY (Nr_klubu) REFERENCES Kluby_Tenisowe (Nr_klubu)
/



ALTER TABLE Uslugi ADD CONSTRAINT Oferuje FOREIGN KEY (Nr_klubu) REFERENCES Kluby_Tenisowe (Nr_klubu)
/



ALTER TABLE Uslugi ADD CONSTRAINT Korzysta_z FOREIGN KEY (Nr_klienta) REFERENCES Klienci (Nr_klienta)
/



ALTER TABLE Kluby_Tenisowe ADD CONSTRAINT Klub_ma_adres FOREIGN KEY (Nr_adresu) REFERENCES Adresy (Nr_adresu)
/



ALTER TABLE Wlasciciele ADD CONSTRAINT Wlasciciel_ma_adres FOREIGN KEY (Nr_adresu) REFERENCES Adresy (Nr_adresu)
/



ALTER TABLE Wlasciciele ADD CONSTRAINT Klub_ma_wlasciciela FOREIGN KEY (Nr_klubu) REFERENCES Kluby_Tenisowe (Nr_klubu)
/



ALTER TABLE Adresy ADD CONSTRAINT Adres_ma_poczte FOREIGN KEY (Nr_poczty) REFERENCES Poczty (Nr_poczty)
/



ALTER TABLE Pracownicy ADD CONSTRAINT Pracownik_ma_adres FOREIGN KEY (Nr_adresu) REFERENCES Adresy (Nr_adresu)
/



ALTER TABLE Pracownicy ADD CONSTRAINT Pracownik_ma_stanowisko FOREIGN KEY (Nr_stanowiska) REFERENCES Stanowiska (Nr_stanowiska)
/



ALTER TABLE Wynagrodzenia ADD CONSTRAINT Pracownik_otrzymuje_wynagrodzenie FOREIGN KEY (Nr_pracownika) REFERENCES Pracownicy (Nr_pracownika)
/



ALTER TABLE Obiekty ADD CONSTRAINT Obiekt_ma_adres FOREIGN KEY (Nr_adresu) REFERENCES Adresy (Nr_adresu)
/



ALTER TABLE Klienci ADD CONSTRAINT Klient_ma_adres FOREIGN KEY (Nr_adresu) REFERENCES Adresy (Nr_adresu)
/