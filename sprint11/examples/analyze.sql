-- Какой жанр фильмов больше всего нравится пользователям?
SELECT genres.title AS genre_of_film, COUNT(*) AS likes_count
FROM films
INNER JOIN film_genre ON films.id = film_genre.film_id
INNER JOIN genres ON film_genre.genre_id = genres.id
INNER JOIN likes ON likes.film_id = films.id
GROUP BY genre_of_film
ORDER BY likes_count DESC;