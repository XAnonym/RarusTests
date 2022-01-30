SELECT  a.`first_name`, a.`last_name` FROM `publishing_house`.`authors` AS a 
RIGHT JOIN (
    SELECT COUNT(ba.`book_ISBN`) AS `book_count`, ba.`author_id` 
    FROM `publishing_house`.`books_authors` AS ba
    GROUP BY ba.`author_id`
    ORDER BY `book_count` DESC 
    LIMIT 1
) t 
ON (t.`author_id` = a.`id`)