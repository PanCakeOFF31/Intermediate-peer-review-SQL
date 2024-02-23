
INSERT INTO genres (id, title) VALUES
(1000, 'Комедия'),
(2000, 'Ужасы'),
(3000, 'Боевик'),
(4000, 'Приключения');

INSERT INTO films (name, description, release_date, duration, rating) VALUES
('Приключенческие приключения', 'Длинное описание фильма', '2015-03-12', 115, 'R'),
('Приключенческие ужастики', 'Длинное описание фильма', '2020-03-12', 115, 'NC-17'),
('Комедийный боевик', 'Длинное описание фильма', '2017-03-12', 115, 'PG-13');

INSERT INTO film_genre (film_id, genre_id)
(SELECT films.id, genres.id FROM films LEFT OUTER JOIN genres ON genres.id = 4000
WHERE name = 'Приключенческие приключения');

INSERT INTO film_genre (film_id, genre_id)
(SELECT films.id, genres.id FROM films LEFT OUTER JOIN genres ON genres.id IN (4000,2000)
WHERE name = 'Приключенческие ужастики');

INSERT INTO film_genre (film_id, genre_id)
(SELECT films.id, genres.id FROM films LEFT OUTER JOIN genres ON genres.id IN (1000, 3000)
WHERE name = 'Комедийный боевик');

insert into users (email, login, name, birthday) values ('iheinke0@google.com.hk', 'Ivor', 'Ivor Heinke', '1998-09-03');
insert into users (email, login, name, birthday) values ('ffills1@biglobe.ne.jp', 'Fraze', 'Fraze Fills', '2011-05-01');
insert into users (email, login, name, birthday) values ('sgrinyov2@mlb.com', 'Sidnee', 'Sidnee Grinyov', '1983-07-26');
insert into users (email, login, name, birthday) values ('hspeeding3@booking.com', 'Hilda', 'Hilda Speeding', '1983-03-30');
insert into users (email, login, name, birthday) values ('scadore4@netvibes.com', 'Stefan', 'Stefan Cadore', '1987-08-21');
insert into users (email, login, name, birthday) values ('kmingey5@java.com', 'Kelsy', 'Kelsy Mingey', '1991-12-01');
insert into users (email, login, name, birthday) values ('mbrinkley6@illinois.edu', 'Marge', 'Marge Brinkley', '1983-10-22');
insert into users (email, login, name, birthday) values ('rdickinson7@hugedomains.com', 'Regina', 'Regina Dickinson', '1984-08-20');
insert into users (email, login, name, birthday) values ('bteligin8@ustream.tv', 'Bibbie', 'Bibbie Teligin', '1999-10-15');
insert into users (email, login, name, birthday) values ('skitching9@seesaa.net', 'Sherwood', 'Sherwood Kitching', '1985-04-16');
insert into users (email, login, name, birthday) values ('nloudyana@mediafire.com', 'Noreen', 'Noreen Loudyan', '2010-09-04');
insert into users (email, login, name, birthday) values ('wgladerb@phpbb.com', 'Winfield', 'Winfield Glader', '1998-01-04');
insert into users (email, login, name, birthday) values ('dkeverenc@yahoo.com', 'Donnie', 'Donnie Keveren', '1991-09-21');
insert into users (email, login, name, birthday) values ('hbernond@eepurl.com', 'Hilario', 'Hilario Bernon', '2000-02-18');
insert into users (email, login, name, birthday) values ('gborriee@friendfeed.com', 'Giuseppe', 'Giuseppe Borrie', '1992-09-14');
insert into users (email, login, name, birthday) values ('gpawlettf@storify.com', 'Gaston', 'Gaston Pawlett', '1994-08-04');
insert into users (email, login, name, birthday) values ('fmumbesong@goodreads.com', 'Florance', 'Florance Mumbeson', '2001-08-18');
insert into users (email, login, name, birthday) values ('rrembrandth@ustream.tv', 'Rollin', 'Rollin Rembrandt', '1995-06-04');
insert into users (email, login, name, birthday) values ('mbartaluccii@hostgator.com', 'Marin', 'Marin Bartalucci', '2013-11-13');
insert into users (email, login, name, birthday) values ('kbidmeadj@blinklist.com', 'Keary', 'Keary Bidmead', '2002-08-26');
insert into users (email, login, name, birthday) values ('hcarrettk@canalblog.com', 'Hetty', 'Hetty Carrett', '1993-03-31');
insert into users (email, login, name, birthday) values ('aswyersexeyl@parallels.com', 'Axe', 'Axe Swyer-Sexey', '1988-11-23');
insert into users (email, login, name, birthday) values ('framblem@admin.ch', 'Fidole', 'Fidole Ramble', '2012-12-27');
insert into users (email, login, name, birthday) values ('cmorsleyn@ebay.com', 'Camey', 'Camey Morsley', '1989-12-03');
insert into users (email, login, name, birthday) values ('bpartletono@nymag.com', 'Basia', 'Basia Partleton', '2008-02-14');
insert into users (email, login, name, birthday) values ('kdevannyp@salon.com', 'Kippie', 'Kippie Devanny', '2003-12-13');
insert into users (email, login, name, birthday) values ('mskullyq@edublogs.org', 'Marci', 'Marci Skully', '1988-08-24');
insert into users (email, login, name, birthday) values ('keliasr@taobao.com', 'Kalina', 'Kalina Elias', '1980-09-17');
insert into users (email, login, name, birthday) values ('kstrothers@hp.com', 'Karmen', 'Karmen Strother', '2008-07-18');
insert into users (email, login, name, birthday) values ('mjackst@constantcontact.com', 'Marissa', 'Marissa Jacks', '2006-09-21');

INSERT INTO likes (film_id, user_id)
SELECT films.id, users.id
FROM films
INNER JOIN users
ON films.id % 2 = 0 AND users.id % 2 = 1;

INSERT INTO likes (film_id, user_id)
SELECT films.id, users.id
FROM films
INNER JOIN users
ON films.id % 2 = 1 AND users.id > 0;

INSERT INTO friends (user_id, friend_id)
SELECT u1.id, u2.id
FROM users AS u1
INNER JOIN users AS u2
ON u1.id % 2 = 0 AND u2.id % 2 = 1;

INSERT INTO friends (user_id, friend_id)
SELECT u1.id, u2.id
FROM users AS u1
INNER JOIN users AS u2
ON u1.id % 3 = 1 AND u2.id % 2 = 0;

UPDATE friends SET is_confirmed = true;