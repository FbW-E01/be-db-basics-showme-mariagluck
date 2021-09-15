CREATE DATABASE addPoems;

SHOWDATABASES;

USE addPoems;

CREATE TABLE PoemUsers(
    id INT NOT NULL AUTO_INCREMENT,
    pseudoname varchar(100),
    title varchar(1000) not null,
    abstract TEXT(500) not null, 
    createdby TEXT(255) not null,
    location TEXT(100),
    date DATETIME,
    wordcount INT(255) not null,
    rating INT(255) not null,
    published BOOLEAN NOT NULL,
    PRIMARY KEY(id)
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
INSERT INTO PoemUsers
     title
   VALUES 'potato Poem';


SELECT pseudoname
       title FROM PoemUsers;

DESCRIBE PoemUsers;





-- here I create a new table with a different logic to test
CREATE TABLE Poems (
    id INT NOT NULL AUTO_INCREMENT,
    title varchar(20) NOT NULL,
    abstract text(500) NOT NULL,
    poem TEXT(10000) NOT NULL,
    date DATETIME,
    published BOOLEAN NOT NULL,
    PRIMARY KEY(id)
);  


INSERT INTO 
    Poems(title, abstract, poem, date, published)
VALUES
    ("Potatoem", "I like trains. They are Great. But not as great as a potato.", "He was traveling from Chicago
to Joliet, he said, on the expressway,
Old State Highway 59, when a
semi rollover caused a load of potatoes
to scatter across the road.

People stopped, pulled their
pickups and jeeps, their Chevy vans
and VW bugs off to the shoulder,
got out and dashed across three lanes
of traffic after Idaho russets and
Yukon Golds, reds and whites and yams.

I’d have understood if it were
a Brinks truck with flyaway tens
and twenties. But potatoes?
Perhaps it was the fact of
sudden bounty dropping down
in front of you, and like unexpected
grace, you must be grateful,
whatever it is that is given.", "2021-01-01T13:37:00", 1);


SELECT title, abstract FROM Poems;

SELECT title, abstract FROM Poems WHERE published = 0;

UPDATE Poems SET abstract = "Haters gonna hate, potatoes gonna potate" WHERE published = 0;

DELETE FROM poems WHERE id=1;

SELECT id FROM Poems WHERE published = 0;

-- here I delete the table
DROP TABLE Poems;




