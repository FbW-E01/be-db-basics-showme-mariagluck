CREATE DATABASE addPoems;

SHOWDATABASES;

USE addPoems;

CREATE TABLE PoemUsers(
    name varchar(255) not null,
    title varchar(255) not null,
    email varchar(255) not null, 
    createdby varchar(255) not null,
    location varchar(255) not null,
    date varchar(255) not null,
    wordcount varchar(255) not null,
    rating varchar(255) not null
);

-- THis doesnt work
-- INSERT INTO PoemUsers
-- VALUES('poem', varchar(255), not, null);


-- Here I write modifications to the table data:

ALTER TABLE PoemUsers
  ADD poem varchar(255)
    AFTER title;

ALTER TABLE PoemUsers
  ADD charactercount varchar(255) not null
    AFTER wordcount;    


ALTER TABLE PoemUsers
   MODIFY poem varchar(255) NOT NULL;

ALTER TABLE PoemUsers
  MODIFY name varchar(45) NOT NULL;   


ALTER TABLE PoemUsers
  MODIFY poem varchar(5000) NOT NULL;
   
INSERT INTO PoemUsers(type) VALUES('date', CURRENT_DATE());


-- this doesnt work to modify the type from varchar to current date
-- ALTER TABLE PoemUsers
--   MODIFY date CURRENT_DATE() NOT NULL;

-- here I create a new table with a different logic to test
CREATE TABLE Poems (
name VARCHAR(20) NOT NULL,
date DATE,
time TIME
);  

-- here I delete the table
DROP TABLE Poems;


DESCRIBE PoemUsers;