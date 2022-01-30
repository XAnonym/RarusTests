CREATE DATABASE `publishing_house`;

CREATE TABLE `publishing_house`.`authors` (
  `id` int NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256)
);

CREATE TABLE `publishing_house`.`books` (
  `ISBN` varchar(13) NOT NULL PRIMARY KEY ,
  `name` varchar(1000) NOT NULL,
  `number_of_pages` int NOT NULL,
  `date_of_publication` date NOT NULL
);

CREATE TABLE `publishing_house`.`genres` (
  `id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(256) NOT NULL
) ;


CREATE TABLE `publishing_house`.`books_authors` (
  `book_ISBN` varchar(13) NOT NULL,
  `author_id` int NOT NULL
);

CREATE TABLE `publishing_house`.`books_genres` (
  `book_ISBN` varchar(13) NOT NULL,
  `genre_id` int NOT NULL
);


ALTER TABLE `publishing_house`.`books_authors`
  ADD CONSTRAINT `books_authors_ibfk_1` FOREIGN KEY (`book_ISBN`) REFERENCES `books` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `publishing_house`.`books_authors`
  ADD CONSTRAINT `books_authors_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `publishing_house`.`books_genres`
  ADD CONSTRAINT `books_genres_ibfk_1` FOREIGN KEY (`book_ISBN`) REFERENCES `books` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `publishing_house`.`books_genres`
  ADD CONSTRAINT `books_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;


INSERT INTO `publishing_house`.`genres`(`name`) VALUES ('комедия'),('трагедия'),('эпопея'),('пьеса'),('драмма'),('ужасы'),('ода'),('новелла'),('поэма'),('фантастика'),('роман'),('рассказ'),('басня');

INSERT INTO `publishing_house`.`authors`(`first_name`, `last_name`) VALUES ('Михаил','Лермонтов'),('Лев','Толстой'),('Антон','Чехов'),('Николай','Гоголь'),('Иван','Тургенев'),('Александр','Блок');

INSERT INTO `publishing_house`.`books`(`ISBN`, `name`, `number_of_pages`, `date_of_publication`) VALUES ('0000000000001','Мцыри','200','1839-07-23'),('0000000000002','Бородино','148','1837-05-11'),('0000000000003','Демон','312','1860-09-02'),('0000000000004','Маскарад','513','1862-11-16'),
('0000000000005','Казаки','3101','1863-02-03'),('9785447237592','Смерть Ивана Ильича','1039','1865-05-11'),('0000000000007','Сапоги','4708','1885-09-02'),('9785447237929','Студент','4636','1894-11-16'),
('9785447236267','Записки сумасшедшего','886','1839-07-23'),('9785447236304','Невский проспект','4492','1837-05-11'),('0000000000011','Рудин','3644','1860-09-02'),('9785447237691','Отцы и дети','3396','1862-11-16'),
('0000000000013','Рамзес','171','1903-11-16');

INSERT INTO `publishing_house`.`books_authors`(`book_ISBN`, `author_id`) VALUES ('0000000000002','1'),('0000000000001','1'),('0000000000003','1'),('0000000000004','1'),('0000000000005','2'),('9785447237592','2'),
('0000000000007','3'),('9785447237929','3'),
('9785447236267','4'),('9785447236304','4'),
('0000000000011','5'),('9785447237691','5'),
('0000000000013','6'),('0000000000013','3');

INSERT INTO `publishing_house`.`books_genres`(`book_ISBN`, `genre_id`) VALUES ('0000000000002','5'),('0000000000001','6'),('0000000000003','9'),('0000000000004','4'),('0000000000005','10'),('9785447237592','10'),
('0000000000007','12'),('9785447237929','12'),
('9785447236267','10'),('9785447236304','10'),
('0000000000011','11'),('9785447237691','11'),
('0000000000013','4'),('0000000000002','3'),('0000000000002','10'),('0000000000013','10');