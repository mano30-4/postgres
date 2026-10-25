
— Aggregate Functions:

SELECT COUNT(product_id)
FROM orders


— GROUP BY
SELECT user_id
FROM comments
GROUP BY user_id;

SELECT user_id,contents
FROM comments
GROUP BY user_id; --  Query execute error: column "comments.contents" must appear in the GROUP BY clause or be used in an aggregate function LINE 1: SELECT user_id,contents 

Find the number of comments for each photo

SELECT photo_id,COUNT(contents)
from comments
GROUP BY photo_id

—FIND the number of comments for each photo where the photo_id is less than 3 and photo has more 2 comments 
— photo_id less than 3 deals applying filter like ‘where’ but to get photos with comment more than 2 we need to group photos based on photo_id and apply aggregate function count with to filter groups which are photo_id here having comments more than 2

SELECT photo_id, COUNT(contents)
FROM comments
WHERE photo_id < 3
GROUP BY photo_id
HAVING COUNT(contents)>2

—Find the users has commented on the first 50 photos and the user added more than 20 comments on those photos

SELECT user_id, COUNT(contents)
FROM comments
WHERE photo_id <=50
GROUP BY user_id
HAVING COUNT(contents)>20

— exercise question 

SELECT manufacturer, SUM(price * units_sold)
FROM phones
GROUP BY manufacturer
HAVING SUM(price*units_sold)> 2000000