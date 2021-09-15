CREATE DATABASE addPoems;

SHOWDATABASES;

USE addPoems;

CREATE TABLE PoemUsers(
    pseudoname TEXT(100),
    title TEXT(1000) not null,
    email TEXT(255) not null, 
    createdby TEXT(255) not null,
    location TEXT(100),
    date DATETIME,
    wordcount INT(255) not null,
    rating INT(255) not null,
    published BOOLEAN NOT NULL
);

-- THis doesnt work
-- INSERT INTO PoemUsers
-- VALUES('poem', varchar(255), not, null);


-- Here I write modifications to the table data:

ALTER TABLE PoemUsers
  ADD poem TEXT(5000) NOT NULL
    AFTER title;

ALTER TABLE PoemUsers
  ADD charactercount INT(255) not null
    AFTER wordcount;    


ALTER TABLE PoemUsers
   MODIFY poem TEXT(255) NOT NULL;
  
   
-- TESTING INSET INTO
INSERT INTO PoemUsers(type) VALUES('date', CURRENT_DATE());


-- this doesnt work to modify the type from varchar to current date
-- ALTER TABLE PoemUsers
--   MODIFY date CURRENT_DATE() NOT NULL;



DESCRIBE PoemUsers;





-- here I create a new table with a different logic to test
CREATE TABLE Poems (
title TEXT(20) NOT NULL,
poem TEXT(10000) NOT NULL,
date DATE,
time TIME
);  

-- here I delete the table
DROP TABLE Poems;




