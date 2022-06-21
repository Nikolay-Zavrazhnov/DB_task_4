--количество исполнителей в каждом жанре
SELECT name, genre_id , COUNT(author_id) FROM genreauthor g 
LEFT JOIN genre g2 ON g2.id = g.genre_id
GROUP BY genre_id, g2."name" 
ORDER BY COUNT(author_id) DESC;

--количество треков, вошедших в альбомы 2019-2020 годов 
--(вариант1 с общем количеством треков в данном диапазоне годов)
SELECT COUNT(*)  FROM album a 
LEFT JOIN track t ON t.album_id = a.id
WHERE release_year BETWEEN '01/01/2019' AND '01/01/2020'
ORDER BY COUNT(*) DESC;

--количество треков, вошедших в альбомы 2019-2020 годов 
--(вариант2 с разбивкой  по каждому году из диапазона)
SELECT release_year, COUNT(*)  FROM album a 
LEFT JOIN track t ON t.album_id = a.id
WHERE release_year BETWEEN '01/01/2019' AND '01/01/2020'
GROUP BY release_year
ORDER BY COUNT(*) DESC;

--средняя продолжительность треков по каждому альбому
SELECT title, album_id, AVG(song_time)  FROM track t
LEFT JOIN album a ON a.id = t.album_id 
GROUP BY title, album_id; 

--все исполнители, которые не выпустили альбомы в 2020 году
SELECT name, release_year FROM album a
JOIN author a2 ON a2.id = a.id 
WHERE release_year != '01/01/2020'
GROUP BY name, release_year;

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
SELECT a2.name, mc.title FROM music_collection mc
JOIN collectiontrack c ON c.collection_id = mc.id
JOIN track t ON c.track_id = t.id
JOIN albumauthor a ON t.album_id = a.author_id
JOIN author a2 ON a.author_id = a2.id
WHERE a2."name" = 'Elvis Presley'
GROUP BY a2.name, mc.title;

--название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT a.title, COUNT(g2.id) FROM album a
JOIN albumauthor a2 ON a2.author_id  = a.id
JOIN author a3 ON a2.author_id = a3.id
JOIN genreauthor g ON a3.id = g.author_id
JOIN genre g2 ON g2.id = g.genre_id
GROUP BY a.title
HAVING COUNT(g2.id) > 1
ORDER BY COUNT(g2.id) DESC;

--наименование треков, которые не входят в сборники
SELECT t.name, COUNT(mc.id) FROM track t
LEFT JOIN collectiontrack c ON c.track_id = t.id
LEFT JOIN music_collection mc ON mc.id = c.collection_id
GROUP BY t."name"
HAVING COUNT(mc.id) = 0;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
SELECT a2.name, song_time FROM track t
JOIN albumauthor a ON t.album_id =a.author_id
JOIN author a2 ON a2.id = a.author_id
WHERE song_time = (SELECT MIN(song_time) FROM track t2)
GROUP BY a2."name", song_time;

--название альбомов, содержащих наименьшее количество треков
SELECT a.title, COUNT(t.id) FROM album a
JOIN track t ON t.album_id = a.id
GROUP BY a.title
HAVING COUNT(t.id) = (SELECT MIN(count) FROM (SELECT a.title, COUNT(t.id) FROM album a
JOIN track t ON t.album_id = a.id
GROUP BY a.title) AS cnt);

