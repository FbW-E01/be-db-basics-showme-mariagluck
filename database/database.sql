CREATE DATABASE addPoems;

SHOWDATABASES;

USE addPoems;

CREATE TABLE PoemUsers(
    pseudoname varchar(100),
    title varchar(1000) not null,
    email TEXT(255) not null, 
    createdby TEXT(255) not null,
    location TEXT(100),
    date DATETIME,
    wordcount INT(255) not null,
    rating INT(255) not null,
    published BOOLEAN NOT NULL
);


-- Here I write modifications to the table data:

ALTER TABLE PoemUsers
  ADD poem TEXT(5000) NOT NULL
    AFTER title;

ALTER TABLE PoemUsers
  ADD charactercount INT(255) not null
    AFTER wordcount;    


ALTER TABLE PoemUsers
   MODIFY poem TEXT(255) NOT NULL;

   
-- TESTING INSERT INTO
INSERT INTO PoemUsers(type) VALUES('date', CURRENT_DATE());


-- this doesnt work to modify the type from varchar to current date
-- ALTER TABLE PoemUsers
--   MODIFY date CURRENT_DATE() NOT NULL;

-- THis doesnt work
INSERT INTO PoemUsers(title, published)
   VALUES('potato Poem', 1);


SELECT pseudoname
       title FROM PoemUsers;

DESCRIBE PoemUsers;





-- here I create a new table with a different logic to test
CREATE TABLE Poems (
title varchar(20) NOT NULL,
poem TEXT(10000) NOT NULL,
date DATE,
time TIME
);  

-- here I delete the table
DROP TABLE Poems;




