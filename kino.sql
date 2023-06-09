-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Maj 2023, 22:58
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kino`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL,
  `stanowisko` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `admin`
--

INSERT INTO `admin` (`idadmin`, `imie`, `nazwisko`, `stanowisko`) VALUES
(1, 'Piotr', 'Kowalski', 'manager'),
(2, 'Jan', 'Nowak', 'kasjer'),
(3, 'Alicja', 'Piotrowska', 'kasjer');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bilety`
--

CREATE TABLE `bilety` (
  `idbilety` int(11) NOT NULL,
  `rodzaj` varchar(45) NOT NULL,
  `cena` int(11) NOT NULL,
  `seans_idseans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `bilety`
--

INSERT INTO `bilety` (`idbilety`, `rodzaj`, `cena`, `seans_idseans`) VALUES
(1, 'Normalny', 25, NULL),
(2, 'Ulgowy', 20, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `film`
--

CREATE TABLE `film` (
  `idfilm` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `rezyser` varchar(45) DEFAULT NULL,
  `rok_prod` int(4) DEFAULT NULL,
  `czas_trwania` varchar(10) DEFAULT NULL,
  `kraj` varchar(45) DEFAULT NULL,
  `obsada` longtext DEFAULT NULL,
  `ogr_wiek` varchar(3) DEFAULT NULL,
  `gatunek` varchar(45) DEFAULT NULL,
  `opis` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `film`
--

INSERT INTO `film` (`idfilm`, `title`, `rezyser`, `rok_prod`, `czas_trwania`, `kraj`, `obsada`, `ogr_wiek`, `gatunek`, `opis`) VALUES
(1, 'Plan B', 'Kinga Dębska', 2017, '86 min', 'Polska', 'Kinga Preis, Marcin Dorociński, Edyta Olszówka, Roma Gąsiorowska, Krzysztof Stelmaszyk', '15+', 'Dramat, Komedia', 'Film o miłości - pełen emocji, humoru i życiowej prawdy. Bohaterów poznajemy przed walentynkami w chwili, gdy w ich życiu wydarza się coś całkiem nieoczekiwanego - coś, co wywraca je do góry nogami. Sytuacje, z którymi się konfrontują, prowadzą do zaskakujących rozwiązań. Dają nadzieję na to, że trudne początki nieraz prowadzą do odnalezienia prawdziwych uczuć i autentycznych więzi, a w życiu zawsze jest jakiś plan B!'),
(2, 'Pszczółka Maja: Miodowe Igrzyska', 'Noel Cleary, Alexis Stadermann', 2018, '85 min', 'Niemcy', '', 'BO', 'Komedia, Animowany, Familijny', 'Druga część szalonych i zabawnych perypetii najsłynniejszej pszczółki świata, która żadnej przygody się nie boi! Tym razem Maja i Gucio wezmą udział w międzyłąkowych igrzyskach sportowych, których stawka okaże się wyjątkowo wysoka. W ulu aż huczy od sensacyjnych wieści! W pszczelej stolicy odbyć się mają Miodowe Igrzyska. Maja marzy, by wziąć w nich udział. Niestety mieszkańcy ula nie zostają na nie zaproszeni. Na domiar złego Cesarzowa żąda oddania połowy miodowych zbiorów na potrzeby sportowców. Królowa gotowa jest się pogodzić z poleceniami przełożonej, ale Maja od dziecka jest buntowniczką. A nic nie złości jej bardziej niż jawna niesprawiedliwość. Wyrusza więc do stolicy, by powiedzieć Cesarzowej, co myśli o niej i jej nakazach. I nawet Guciowi nie uda się jej powstrzymać przed wpakowaniem się w kłopoty. Zuchwałość Mai zostanie ukarana: pszczółka musi wystartować w zawodach, ale jeśli przegra jej ul straci całe zapasy na zimę… Cesarzowa nie podejrzewa nawet na co stać tę małą rozrabiakę i paczkę jej wiernych przyjaciół.'),
(3, 'Winchester: Dom duchów', 'Michael Spierig, Peter Spierig', 2018, '99 min', 'Australia, USA', 'Helen Mirren, Jason Clarke', '15+', 'Horror', 'Mrożący krew w żyłach horror inspirowany prawdziwymi wydarzeniami, jakie miały miejsce w jednym z najsłynniejszych nawiedzonych domów w historii. Laureatka Oscara Helen Mirren i Jason Clarke w opowieści o wdowie, która płaci przerażającą cenę za grzechy swego męża…lub tak jej się tylko wydaje. Po tragicznej śmierci męża i syna, Sarah Winchester pogrąża się w żałobie i oddala od codziennego życia. Jest przekonana, że jej rodzinę nawiedzają duchy osób, które zostały zabite z broni skonstruowanej przez jej męża, czyli ze słynnego karabinu Winchester. By bronić się przed demonami Sarah zleca budowę niezwykłej posiadłości. Składający się z setek pokoi, skonstruowany jak labirynt, pełen prowadzących donikąd schodów i ślepych korytarzy dom ma być pułapką na duchy. Rodzina Winchester, zaniepokojona stanem zdrowia wdowy wzywa na konsultację słynnego psychiatrę, który ma odwieść kobietę od jej szalonych planów. Wkrótce okazuje się jednak, że Sarah Winchester wcale nie oszalała…'),
(4, 'Kształt wody', 'Guillermo del Toro', 2017, '119 min', 'USA', 'Sally Hawkins, Michael Shannon, Richard Jenkins, Doug Jones, Michael Stuhlbarg, Octavia Spencer', '12+', 'Fantasy', 'Wyróżniony 7 nominacjami do Złotych Globów i Złotym Lwem na festiwalu w Wenecji 2017 najnowszy film wizjonerskiego reżysera Guillermo del Toro, twórcy nagrodzonego 3 Oscarami „Labiryntu fauna”. Baśń dla dorosłych, której akcja rozgrywa się u szczytu zimnej wojny, w Stanach Zjednoczonych około roku 1962. Elisa (nominowana do Oscara Sally Hawkins) wiedzie monotonną, samotną egzystencję, a całą noc pracuje w pilnie strzeżonym, sekretnym laboratorium rządowym. Jej życie zmienia się na zawsze, gdy wraz z koleżanką z pracy, Zeldą (nagrodzona Oscarem Octavia Spencer), odkrywa, że w laboratorium przeprowadzany jest otoczony ścisłą tajemnicą eksperyment, który zaważyć może na przyszłych losach świata. W pozostałych rolach: nominowany do Oscara Michael Shannon, nominowany do Oscara Richard Jenkins, Michael Stuhlbarg i Doug Jones.'),
(5, 'Podatek od miłości', 'Bartłomiej Ignaciuk', 2017, '102 min', 'Polska', 'Aleksandra Domańska, Grzegorz Damięcki, Roma Gąsiorowska, Weronika Rosati, Magdalena Popławska', '15+', 'Romantyczny, Komedia', '„Podatek od miłości” to nowa produkcja kinowa TVN. W rolach głównych plejada gwiazd: Grzegorz Damięcki, Aleksandra Domańska, Roma Gąsiorowska, Magdalena Różczka, Magdalena Popławska, Anna Smołowik, Weronika Rosati, Ewa Gawryluk, Grażyna Wolszczak, Michał Czernecki, Zbigniew Zamachowski oraz Tomasz Włosok. „Podatek od miłości” to inteligentna i przewrotna komedia romantyczna o miłości, którą można spotkać wszędzie, nawet… w Urzędzie Skarbowym. Surowa inspektor Klara (Aleksandra Domańska) ściga domniemanego oszusta podatkowego – cynicznego, acz pełnego uroku Mariana (Grzegorz Damięcki), który przez niefrasobliwość i dobre serce popadł w kłopoty podatkowe. Kiedy los „ściganego” wydaje się przesądzony, nieoczekiwanie i wbrew wszelkim regułom Klara i Marian zakochują się. Uruchomi to ciąg komicznych wydarzeń, które odmienią życie bohaterów. On dla dobra sprawy może zostać facetem do towarzystwa. Ona może trafić do więzienia. Czy tak się stanie?'),
(6, 'Gwiezdne Wojny: Ostatni Jedi', 'Rian Johnson', 2017, '150 min', 'USA', 'Daisy Ridley, John Boyega, Mark Hamill, Oscar Isaac, Carrie Fisher', '12+', 'Sci-Fi, Przygodowy', 'W najnowszej produkcji Lucasfilm „Gwiezdne Wojny: Ostatni Jedi\" bohaterowie \"Przebudzenia Mocy\" wraz z legendarnymi postaciami gwiezdnego uniwersum odkrywają zaskakujące sekrety przeszłości i niezgłębione dotąd tajemnice Mocy…'),
(7, 'Narzeczony na niby', 'Bartosz Prokopowicz', 2018, '112 min', 'Polska', 'ulia Kamińska, Piotr Stramowski, Sonia Bohosiewicz, Piotr Adamczyk, Barbara Kurdej-Szatan, Tomasz Karolak, Dorota Kolak', '12+', 'Romantyczny, Komedia', 'Czy małe, niewinne kłamstewko może wymknąć się spod kontroli i doprowadzić do totalnej katastrofy? A może dopiero jak wszystko się w życiu rozpada, możliwe staje się poukładanie wszystkiego od nowa? Karina próbuje z całych sił stworzyć pierwszy (tym razem) szczęśliwy związek. Niestety mężczyzna, któremu oddała swoje serce, wydaje się być bardziej zainteresowany sobą, niż nią. Pewnego dnia, jedno nieprzewidziane zdarzenie i jedno małe kłamstewko zamieni jej uporządkowane życie w prawdziwy emocjonalny rollercoster. Szybko okaże się też, że każdy z bohaterów ma tak naprawdę coś do ukrycia. Gdy prawda wyjdzie na jaw, wszyscy będą musieli zrobić w końcu porządek w swoich związkach i w swoich sercach. „Narzeczonego na niby” pokochają ci, którzy choć raz zakochali się w niewłaściwej osobie oraz ci, którzy wierzą, że o prawdziwą miłość warto walczyć, nawet jeśli zaczyna się mocno niefortunnie.'),
(8, 'Atak paniki', 'Paweł Maślona', 2017, '99 min', 'Polska', 'Dorota Segda, Artur Żmijewski, Grzegorz Damięcki, Magdalena Popławska, Mirosław Haniszewsi, Andrzej Konopka', '15+', 'Dramat, Komedia', 'Wielowątkowa historia pozornie niezwiązanych ze sobą osób, które w pewnym momencie doświadczają... ataku paniki. Opowieść o tym jak z pozoru nieistotne w życiu zdarzenia mogą doprowadzić do ogromnych konsekwencji, metaforycznych końców świata.'),
(9, 'Cudowny chłopak', 'Stephen Chbosky', 2017, '113 min', 'Hongkong, USA', 'Jacob Tremblay, Julia Roberts, Owen Wilson', '7+', 'Dramat, Komedia', 'Julia Roberts, Owen Wilson i Jacob Tremblay, młody gwiazdor znakomitego „POKOJU” w porywającej opowieści o tym, że niełatwo być innym. Ekranizacja międzynarodowego bestsellera, który wzruszył i rozbawił miliony czytelników na całym świecie. Każdy chce się wyróżniać. Nikt nie chce być inny. Dla 10-letniego Auggiego nie ma niczego bardziej niezwykłego niż „zwykły dzień w szkole”. Urodzony z licznymi deformacjami twarzy, dotąd uczył się w domu pod okiem mamy. Teraz jednak zaczynając 5 klasę w normalnej szkole, ma nadzieję, że koledzy potraktują go jak zwyczajnego chłopca. Jego wygląd sprawia jednak, że staje się szkolną sensacją, a dla wielu wręcz „dziwadłem”. Jedni się z niego śmieją, inni wytykają palcami, ale nikt tak naprawdę niczego o nim nie wie. Wszystko zacznie się zmieniać, gdy w szkole pojawi się nowa uczennica. Urocza Summer potrafi dostrzec w Auggiem coś więcej niż nietypowy wygląd. Wystarczy jeden przyjazny gest, jedna pomocna dłoń, by obudzić w Auggiem siłę, dzięki której będzie potrafił udowodnić, że nie tylko twarz czyni go kimś niezwykłym.'),
(10, 'Fernando', 'Carlos Saldanha', 2017, '108 min', 'USA', '', 'BO', 'Komedia, Animowany, Familijny', '“Fernando” to przygodowa komedia animowana, inspirowana słynną książką dla dzieci o byczku Fernando, autorstwa Munro Leafa i Roberta Lawsona, a zrealizowana w studio Blue Sky, w którym powstały m.in.: ”Epoka lodowcowa” i ”Rio”. Tytułowy Fernando to wielki byczek o równie wielkim sercu. Omyłkowo wzięty za groźną bestię zostaje schwytany i uprowadzony z rodzinnego domu w hiszpańskim miasteczku. Gotowy na wszystko, by powrócić na łono rodziny, Fernando staje na czele grupy niezwykłych sojuszników i wyrusza na wielką wyprawę, podczas której przeżyje przygodę swego życia. W polskiej wersji językowej Fernando przemówi głosem Marcina Dorocińskiego.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `idklient` int(11) NOT NULL,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`idklient`, `imie`, `nazwisko`, `email`, `telefon`) VALUES
(1, 'Jan', 'Kowalski', 'jan.kowalski@example.com', 123456789),
(2, 'Anna', 'Nowak', 'anna.nowak@example.com', 987654321),
(3, 'Michał', 'Wiśniewski', 'michal.wisniewski@example.com', 555666777),
(4, 'Karolina', 'Kwiatkowska', 'karolina.kwiatkowska@example.com', 111222333),
(5, 'Katarzyna', 'Nowicka', 'katarzyna.nowicka@example.com', 444555666);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `idrezerwacje` int(11) NOT NULL,
  `seans_idseans` int(11) DEFAULT NULL,
  `klient_idklient` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sala`
--

CREATE TABLE `sala` (
  `idsala` int(11) NOT NULL,
  `nazwa_sali` varchar(45) NOT NULL,
  `miejsca` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `sala`
--

INSERT INTO `sala` (`idsala`, `nazwa_sali`, `miejsca`) VALUES
(1, 'Sala Pomarańczowa', 100),
(2, 'Sala Zielona', 120),
(3, 'Sala Niebieska', 80),
(4, 'Sala Złota', 30);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `seans`
--

CREATE TABLE `seans` (
  `idseans` int(11) NOT NULL,
  `data` date NOT NULL,
  `godzina` varchar(5) NOT NULL,
  `film_idfilm` int(11) DEFAULT NULL,
  `sala_idsala` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `seans`
--

INSERT INTO `seans` (`idseans`, `data`, `godzina`, `film_idfilm`, `sala_idsala`) VALUES
(1, '2018-02-12', '10:00', 1, 1),
(2, '2018-02-12', '13:00', 2, 1),
(3, '2018-02-12', '17:00', 3, 2),
(4, '2018-02-12', '21:00', 4, 2),
(5, '2018-02-12', '11:00', 5, 3),
(6, '2018-02-12', '14:00', 6, 3),
(7, '2018-02-12', '18:30', 7, 4),
(8, '2018-02-12', '22:00', 8, 4),
(9, '2018-02-12', '19:00', 9, 3),
(10, '2018-02-12', '22:00', 10, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indeksy dla tabeli `bilety`
--
ALTER TABLE `bilety`
  ADD PRIMARY KEY (`idbilety`),
  ADD KEY `fk_bilety_seans1_idx` (`seans_idseans`);

--
-- Indeksy dla tabeli `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`idfilm`);

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`idklient`);

--
-- Indeksy dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`idrezerwacje`),
  ADD KEY `fk_rezerwacje_seans1_idx` (`seans_idseans`),
  ADD KEY `fk_rezerwacje_klient1_idx` (`klient_idklient`);

--
-- Indeksy dla tabeli `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`idsala`);

--
-- Indeksy dla tabeli `seans`
--
ALTER TABLE `seans`
  ADD PRIMARY KEY (`idseans`),
  ADD KEY `fk_seans_film1_idx` (`film_idfilm`),
  ADD KEY `fk_seans_sala1_idx` (`sala_idsala`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `bilety`
--
ALTER TABLE `bilety`
  MODIFY `idbilety` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `film`
--
ALTER TABLE `film`
  MODIFY `idfilm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `idrezerwacje` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `sala`
--
ALTER TABLE `sala`
  MODIFY `idsala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `seans`
--
ALTER TABLE `seans`
  MODIFY `idseans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `bilety`
--
ALTER TABLE `bilety`
  ADD CONSTRAINT `fk_bilety_seans1` FOREIGN KEY (`seans_idseans`) REFERENCES `seans` (`idseans`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD CONSTRAINT `fk_rezerwacje_klient1` FOREIGN KEY (`klient_idklient`) REFERENCES `klient` (`idklient`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rezerwacje_seans1` FOREIGN KEY (`seans_idseans`) REFERENCES `seans` (`idseans`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `seans`
--
ALTER TABLE `seans`
  ADD CONSTRAINT `fk_seans_film1` FOREIGN KEY (`film_idfilm`) REFERENCES `film` (`idfilm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_seans_sala1` FOREIGN KEY (`sala_idsala`) REFERENCES `sala` (`idsala`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
