— relationships(one to many, many to one, one to one, many to many)
CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  username VARCHAR(50)
);


INSERT INTO users(username)
VALUES
('monahan93'),
('pferrer'),
('si93onis'),
('99stroman');



CREATE TABLE photos(
    id SERIAL PRIMARY KEY,
    url VARCHAR(200) ,
    user_id INTEGER REFERENCES users(id)
);

INSERT INTO photos(url,user_id)
VALUES
('https://img1.png',4),
('https://img2.png',4),
('https://img3.png',1),
('https://img4.png',2);

— find all photos created by particular 
SELECT * FROM photos WHERE user_id = 4

SELECT * FROM photos WHERE user_id = 4 OR user_id = 1
ORDER BY user_id;  -- (ORDER BY column_name ASEC (OR) DSEC)

INSERT INTO photos(url,username)
VALUES ('https.jgfepdg',3235);  -- throws error bc no referencing user doesn’t exist in user table

INSERT INTO photos(url,username)
VALUES ('https.dg’,NULL); -- NOW the image is not associated to any user NULL = nothing

DROP TABLE table_name;

CREATE TABLE photos(
    id SERIAL PRIMARY KEY,
    url VARCHAR(200) ,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE/ ON DELETE SET NULL / ON DELETE SET DEFAULT
);