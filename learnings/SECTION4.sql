— joins 

— for each comment, lists of contents of comment and user associated to it
SELECT contents, username
FROM comments
JOIN users
On comments.user_id = users.id;

- for each comment, list of contents of comment and the url of photo the comment was added to

SELECT contents,url
FROM comments
JOIN photos
ON comments.photo_id = photos.id; 

— show each photo url and the username of the poster

SELECT url, username 
FROM photos
LEFT JOIN users
ON photos.user_id = users.id;

— show each photo url and the usernames include usernames which are not associated with any url

SELECT url,username
FROM photos
RIGHT JOIN users
ON photos.user_id = users.id;

— FULL JOIN

SELECT url,username
FROM photos
FULL JOIN users
ON photos.user_id = users.id;


SELECT url,contents
FROM comments
JOIN photos
ON comments.photo_id=photos.id
WHERE comments.user_id = photos.user_id;
