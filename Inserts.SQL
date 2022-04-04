INSERT INTO Poczty(kod_poczty,poczta)VALUES('05-320','Mrozy');
INSERT INTO Poczty(kod_poczty,poczta)VALUES('05-300','Mińsk Mazowiecki');
INSERT INTO Poczty (kod_poczty,poczta)VALUES('00-001','Warszawa');
INSERT INTO Poczty (kod_poczty,poczta)VALUES('00-002','Warszawa');
INSERT INTO Poczty (kod_poczty,poczta)VALUES('00-004','Warszawa');
INSERT INTO Poczty (kod_poczty,poczta)VALUES('04-218','Kraków');
INSERT INTO Poczty (kod_poczty,poczta)VALUES('30-000','Kraków');
INSERT INTO Poczty (kod_poczty,poczta)VALUES('60-001','Poznań');

INSERT INTO Adresy (miasto,ulica,numer_lokalu,nr_poczty)VALUES('Poznań','Kremówkowa','21','8');
INSERT INTO Adresy (miasto,ulica,numer_lokalu,nr_poczty)VALUES('Mińsk Mazowiecki','Warszawska','37','2');
INSERT INTO Adresy (miasto,ulica,numer_lokalu,nr_poczty)VALUES('Mrozy','Willowa','55','1');
INSERT INTO Adresy (miasto,ulica,numer_lokalu,nr_poczty)VALUES('Warszawa','Aleja Jana Pawła 2','2/13','3');
INSERT INTO Adresy (miasto,ulica,numer_lokalu,nr_poczty)VALUES('Warszawa','Grójecka','112','4');
INSERT INTO Adresy (miasto,ulica,numer_lokalu,nr_poczty)VALUES('Warszawa','Banacha','2/3','5');
INSERT INTO Adresy (miasto,ulica,numer_lokalu,nr_poczty)VALUES('Kraków','Wawelska','178','6');
INSERT INTO Adresy (miasto,ulica,numer_lokalu,nr_poczty)VALUES('Kraków','Podwawelska','213/7','7');
INSERT INTO Adresy (miasto,ulica,numer_lokalu,nr_poczty)VALUES('Poznań','Mariacka','2','8');
INSERT INTO Adresy (miasto,ulica,numer_lokalu,nr_poczty)VALUES('Poznań','Koziolkowa','56','8');
INSERT INTO Adresy (miasto,ulica,numer_lokalu,nr_poczty)VALUES('Warszawa','Marszalkowska','53','5');

INSERT INTO Kluby_Tenisowe(Nazwa,Data_zalozenia,Nr_adresu) VALUES('Masny Klubik','1978-10-16','1');

INSERT INTO Wlasciciele(Imie,Nazwisko,Nr_adresu,Nr_klubu) VALUES('Jerzy','Kornicki','2','1');
INSERT INTO Wlasciciele(Imie,Nazwisko,Nr_adresu,Nr_klubu) VALUES('Daniel','Górnicki','3','1');
INSERT INTO Wlasciciele(Imie,Nazwisko,Nr_adresu,Nr_klubu) VALUES('Daniel','Górzysty','5','1');

INSERT INTO Wydarzenia(Nazwa,Data_rozpoczecia_wydarzenia,Opis,Wpisowe) VALUES ('Turniej Pucharu Sołtysa','2007-03-21','Turniej singlowy w formacie grupowym, zwycięzca zgarnia puchar sołtysa, mecze rozgrywane będą od 21-03-2007 do momentu wyłonienia zwycięzcy, mecze rozgrywane na różnych kortach, 5zł wpisowego ZAPRASZAMY',5.00);
INSERT INTO Wydarzenia(Nazwa,Data_rozpoczecia_wydarzenia,Opis,Data_zakonczenia_wydarzenia) VALUES ('Turniej Pucharu Szkół Podstawowych w Janówku','2007-05-05','Turniej mikst w formacie każdy z kazdym, zwycięzca zgarnia puchar Szkół Podstawowych w Janówku, mecze rozgrywane będą od 2007-05-05 do momentu wyłonienia zwycięzcy, mecze rozgrywane na różnych kortach','2007-06-15');
INSERT INTO Wydarzenia(Nazwa,Data_rozpoczecia_wydarzenia,Opis,Wpisowe) VALUES ('Spotkanie z Agnieszką Radwańską, nauka pokory w dążeniu do celu','2008-01-22','Spotkaj się z Agnieszką Radwańska!, wypytaj ją o wszystko, naucz się grać jak profesjonalista, wstęp płatny',65.00);
INSERT INTO Wydarzenia(Nazwa,Data_rozpoczecia_wydarzenia,Opis) VALUES ('Spotkanie z Michałem Polem, nauka profesjonalnego dziennikarstwa sportowego','2007-06-15','Spotkaj się z Michałem Polem, obecnie najbardziej rozpoznawalnym dziennikarzem sportowym!, przepytaj go jak wyglądał jego wywiad z Ronaldinho lub innymi gwiazdami sportu światowego, wstęp darmowy');
INSERT INTO Wydarzenia(Nazwa,Data_rozpoczecia_wydarzenia,Opis) VALUES ('Wspólny trening z Jerzym Janowiczem na jednej z naszych hal','2007-08-24','Spotkaj się z topowym tenisistą, naucz się jego sztuczek oraz zagrań, wstęp darmowy');

INSERT INTO Stanowiska(Nazwa_stanowiska,Opis_stanowiska) VALUES('Trener','Zajmuje się trenowaniem swoich podopiecznych');
INSERT INTO Stanowiska(Nazwa_stanowiska,Opis_stanowiska) VALUES('Konserwator','Dogląda, aby boiska były sprawne do użytku');
INSERT INTO Stanowiska(Nazwa_stanowiska,Opis_stanowiska) VALUES('Księgowy','Księguje dokumenty i dogląda finansów klubu');
INSERT INTO Stanowiska(Nazwa_stanowiska,Opis_stanowiska) VALUES('Sędzia','Obsługuje mecze w turnieju');

INSERT INTO Klienci(Imie,Nazwisko,Nr_Telefonu,E_mail,PESEL,Data_urodzenia,Plec,Nr_adresu) VALUES('Karol','Górzysty','123456789','numer@wp.pl','07265726823','1998-02-24','K','6');
INSERT INTO Klienci(Imie,Nazwisko,Plec,Nr_adresu) VALUES('Karol','Górzysty','M','7');
INSERT INTO Klienci(Imie,Nazwisko,Nr_Telefonu,Plec,Nr_adresu) VALUES('Karolina','Wojtyła','662812245','K','4');
INSERT INTO Klienci(Imie,Nazwisko,Nr_Telefonu,Data_urodzenia,Nr_adresu) VALUES('Paweł','Pawelczak','665214823','1997-09-11','8');
INSERT INTO Klienci(Imie,Nazwisko,Nr_Telefonu,PESEL,Data_urodzenia,Nr_adresu) VALUES('Szymon','Pawelczak','665214823','82462127582','1994-03-12','8');

INSERT INTO Pracownicy(Imie,Nazwisko,Data_urodzenia,Plec,Data_zatrudnienia,Wazne_badania_lekarskie, Nr_klubu,Nr_adresu,Nr_stanowiska)VALUES ('Leszek','Wałęsa','1980-12-12','M','2000-01-15','1','1','9','1');
INSERT INTO Pracownicy(Imie,Nazwisko,Data_urodzenia,PESEL,Plec,Data_zatrudnienia,Wazne_badania_lekarskie, Nr_klubu,Nr_adresu,Nr_stanowiska)VALUES ('Mateusz','Skowyrski','1978-04-25','12547257821','M','2002-03-05','1','1','9','2');
INSERT INTO Pracownicy(Imie,Nazwisko,Data_urodzenia,PESEL,Plec,Data_zatrudnienia,Data_zwolnienia, Wazne_badania_lekarskie,Nr_klubu,Nr_adresu,Nr_stanowiska)VALUES ('Barbara','Krasucka','1977-03-22','87245812340','K','2002-03-05','2005-03-04','0','1','10','3');

INSERT INTO Wynagrodzenia(Data,Kwota_podstawowa,Kwota_dodatkowa,Nr_pracownika) VALUES('2007-03-10',3000.25,300.45,'1');
INSERT INTO Wynagrodzenia(Data,Kwota_podstawowa,Nr_pracownika) VALUES('2007-03-10',4500.54,'2');

INSERT INTO Turnieje (Nr_wydarzenia,Poziom_turnieju,Typ_rozgrywek,Nagroda,System_rozgrywania_turnieju)
VALUES('1','Profesjonalista','singiel',200.00,'grupowy');
INSERT INTO Turnieje (Nr_wydarzenia,Poziom_turnieju,Typ_rozgrywek,Nagroda,System_rozgrywania_turnieju)
VALUES('2','Open','mikst',500.00,'każdy z każdym');

INSERT INTO Obiekty(Status_obiektu,Nazwa,Typ_obiektu,Nr_klubu,Nr_adresu) VALUES('Otwarty','Kort w Poznaniu im. Mateusza Borka','kort','1','1');
INSERT INTO Obiekty(Status_obiektu,Nazwa,Typ_obiektu,Nr_klubu,Nr_adresu) VALUES('Otwarty','Hala w Warszawie im. Michała Pola','hala','1','5');
INSERT INTO Obiekty(Status_obiektu,Nazwa,Typ_obiektu,Nr_klubu,Nr_adresu) VALUES('Otwarty','Kort w Warszawie im. Igi Świątek','kort','1','5');
INSERT INTO Obiekty(Status_obiektu,Nazwa,Typ_obiektu,Nr_klubu,Nr_adresu) VALUES('Zamkniety','Magazyn sportowy sprzętu','magazyn','1','1');
INSERT INTO Obiekty(Status_obiektu,Nazwa,Typ_obiektu,Nr_klubu,Nr_adresu) VALUES('Zamkniety','Wypożyczalnia sprzętu sportowego','wypożyczalnia','1','1');
INSERT INTO Obiekty(Status_obiektu,Nazwa,Typ_obiektu,Nr_klubu,Nr_adresu) VALUES('Zamkniety','Biuro przedsiębiorstwa Masny Klubik','biuro','1','1');
INSERT INTO Obiekty(Status_obiektu,Nazwa,Typ_obiektu,Nr_klubu,Nr_adresu) VALUES('Zamkniety','Hala w Warszawie im. Jerzego Janowicza','hala','1','11');
INSERT INTO Korty(Nr_obiektu,Nawierzchnia,Trybuny,Krzeselko_sedziowskie) VALUES('1','Twarda','1','1');
INSERT INTO Korty(Nr_obiektu,Nawierzchnia,Trybuny,Krzeselko_sedziowskie) VALUES('3','Ceglana','0','1');

INSERT INTO Uslugi(Nazwa,Data_oplacenia_uslugi,Data_rozpoczecia_uslugi,Data_zakonczenia_uslugi,Cena, Typ_uslugi,Nr_klubu,Nr_klienta) VALUES('Wynajem kortu numer 1','2004-07-12',TO_DATE('2004-07-12 10:25:14', 'yyyy-mm-dd hh24:mi:ss'),TO_DATE('2004-07-12 18:25:14', 'yyyy-mm-dd hh24:mi:ss'),123.00,'Wynajem','1','1');
INSERT INTO Uslugi(Nazwa,Data_oplacenia_uslugi,Cena,Sprzet,Typ_uslugi,Nr_klubu,Nr_klienta)VALUES('Zakup butów sportowych','2004-08-05',100.99,'Buty sportowe','Zakup','1','2');
INSERT INTO Uslugi(Nazwa,Data_oplacenia_uslugi,Data_rozpoczecia_uslugi,Data_zakonczenia_uslugi,Cena,Sprzet, Typ_uslugi,
Nr_klubu,Nr_klienta) VALUES('Wypożyczenie rakiety tenisowej','2004-08-25',TO_DATE('2004-08-25 11:36:15', 'yyyy-mm-dd hh24:mi:ss'),TO_DATE('2004-07-25 12:36:15', 'yyyy-mm-dd hh24:mi:ss'),3.00,'Rakieta Wilson','Wypozyczenie','1','3');

INSERT  INTO Usluga_Obiekt (Nr_uslugi,Nr_obiektu)VALUES(1,8);
INSERT  INTO Usluga_Obiekt (Nr_uslugi,Nr_obiektu)VALUES(2,1);
INSERT  INTO Usluga_Obiekt (Nr_uslugi,Nr_obiektu)VALUES(3,5);

INSERT  INTO Klient_Wydarzenie (Nr_klienta,Nr_wydarzenia)VALUES(1,1);
INSERT  INTO Klient_Wydarzenie (Nr_klienta,Nr_wydarzenia)VALUES(2,2);
INSERT  INTO Klient_Wydarzenie (Nr_klienta,Nr_wydarzenia)VALUES(3,3);
INSERT  INTO Klient_Wydarzenie (Nr_klienta,Nr_wydarzenia)VALUES(4,4);
INSERT  INTO Klient_Wydarzenie (Nr_klienta,Nr_wydarzenia)VALUES(5,5);
INSERT  INTO Klient_Wydarzenie (Nr_klienta,Nr_wydarzenia)VALUES(2,1);
INSERT  INTO Klient_Wydarzenie (Nr_klienta,Nr_wydarzenia)VALUES(3,1);
INSERT  INTO Klient_Wydarzenie (Nr_klienta,Nr_wydarzenia)VALUES(4,1);
INSERT  INTO Klient_Wydarzenie (Nr_klienta,Nr_wydarzenia)VALUES(5,1);

INSERT  INTO Wydarzenie_Obiekt (Nr_wydarzenia,Nr_obiektu)VALUES(3,3);
INSERT  INTO Wydarzenie_Obiekt (Nr_wydarzenia,Nr_obiektu)VALUES(4,2);
INSERT  INTO Wydarzenie_Obiekt (Nr_wydarzenia,Nr_obiektu)VALUES(5,7);

INSERT  INTO Wydarzenie_Pracownik (Nr_wydarzenia,Nr_pracownika)VALUES(1,1);
INSERT  INTO Wydarzenie_Pracownik (Nr_wydarzenia,Nr_pracownika)VALUES(2,1);
INSERT  INTO Wydarzenie_Pracownik (Nr_wydarzenia,Nr_pracownika)VALUES(3,2);
INSERT  INTO Wydarzenie_Pracownik (Nr_wydarzenia,Nr_pracownika)VALUES(4,2);
INSERT  INTO Wydarzenie_Pracownik (Nr_wydarzenia,Nr_pracownika)VALUES(5,1);

INSERT  INTO Klub_Tenisowy_Wydarzenie (Nr_Klubu,Nr_wydarzenia)VALUES(1,1);
INSERT  INTO Klub_Tenisowy_Wydarzenie (Nr_Klubu,Nr_wydarzenia)VALUES(1,2);
INSERT  INTO Klub_Tenisowy_Wydarzenie (Nr_Klubu,Nr_wydarzenia)VALUES(1,3);
INSERT  INTO Klub_Tenisowy_Wydarzenie (Nr_Klubu,Nr_wydarzenia)VALUES(1,4);
INSERT  INTO Klub_Tenisowy_Wydarzenie (Nr_Klubu,Nr_wydarzenia)VALUES(1,5);

INSERT  INTO Usluga_Pracownik (Nr_uslugi,Nr_pracownika)VALUES(2,2);

INSERT  INTO Pracownik_Obiekt (Nr_pracownika,Nr_obiektu)VALUES(2,2);
INSERT  INTO Pracownik_Obiekt (Nr_pracownika,Nr_obiektu)VALUES(2,3);
INSERT  INTO Pracownik_Obiekt (Nr_pracownika,Nr_obiektu)VALUES(2,7);
INSERT  INTO Pracownik_Obiekt (Nr_pracownika,Nr_obiektu)VALUES(1,1);