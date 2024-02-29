insert into ratings (name) values
('G'),
('PG'),
('PG-13'),
('R'),
('NC-17');

insert into genres (name) values
('Комедия'),
('Драма'),
('Мультфильм'),
('Триллер'),
('Документальный'),
('Боевик');

insert into films (name, description, release_date, duration, mpa) values
('Приключенческие приключения', 'Длинное описание фильма', '2015-03-12', 5150, 4),
('Приключенческие ужастики', 'Длинное описание фильма', '2020-03-12', 6115, 5),
('Комедийный боевик', 'Длинное описание фильма', '2017-03-12', 7115, 3);

insert into film_genre (film_id, genre_id)
(select films.id, genres.id from films left outer join genres on genres.id = 2
where films.name = 'Приключенческие приключения');

insert into film_genre (film_id, genre_id)
(select films.id, genres.id from films left outer join genres on genres.id in (6,4)
where films.name = 'Приключенческие ужастики');

insert into film_genre (film_id, genre_id)
(select films.id, genres.id from films left outer join genres on genres.id in (1,6)
where films.name = 'Комедийный боевик');

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

insert into likes (film_id, user_id)
select films.id, users.id
from films
inner join users
on films.id % 2 = 0 AND users.id % 2 = 1;

insert into likes (film_id, user_id)
select films.id, users.id
from films
inner join users
on films.id % 2 = 1 AND users.id > 0;

insert into friendship (user_id, friend_id)
select u1.id, u2.id
from users as u1
inner join users as u2
on u1.id % 2 = 0 AND u2.id % 2 = 1;

insert into friendship (user_id, friend_id)
select u1.id, u2.id
from users as u1
inner join users as u2
on u1.id % 3 = 1 AND u2.id % 2 = 0;