SELECT b.`name`, a.`first_name`, a.`last_name`
FROM `publishing_house`.`books` AS b
JOIN `publishing_house`.`books_authors`  AS ba
ON (b.`ISBN` = ba.`book_ISBN` )
JOIN `publishing_house`.`authors` AS a
ON (a.`id` = ba.`author_id` )
JOIN `publishing_house`.`books_genres`  AS bg
ON (b.`ISBN` = bg.`book_ISBN` )
JOIN `publishing_house`.`genres`AS g 
ON (g.`id` = bg.`genre_id` )
WHERE g.`name` = 'фантастика'
ORDER BY b.`name`;