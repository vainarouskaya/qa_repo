-- Create database 'db_test'

CREATE DATABASE IF NOT EXISTS db_test;

-- Go to database 'db_test'

USE db_test;

-- Delete table 'employee'

DROP TABLE IF EXISTS `employee`;

-- Create table 'employee'

CREATE TABLE employee (
    id int unsigned not null auto_increment primary key,
    firstname varchar(20),
    lastname varchar(20),
    title varchar(30),
    age int,
    yearofservice int,
    salary int,
    perks int,
    email varchar(60)
); 

INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("John", "Chen", "Senior Programmer", 31, 3, 120000, 25000, "j@hotmail.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Jan", "Pillai", "Senior Programmer", 32, 4, 110000, 20000, "g@yahoo.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Ane", "Pandit", "Web Designer", 24, 3, 90000, 15000, "a@gmail.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Mary", "Anchor", "Web Designer", 27, 2, 85000, 15000, "m@mail.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Fred", "King", "Programmer", 32, 3, 75000, 15000, "f@net.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("John", "Mac", "Programmer", 32, 4, 80000, 16000, "j@hotmail.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Arthur", "Sam", "Programmer", 28, 2, 75000, 14000, "e@yahoo.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Alok", "Nanda", "Programmer", 32, 3, 70000, 10000, "a@yahoo.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Susan", "Ra", "Multimedia Programmer", 32, 4, 90000, 15000, "h@gmail.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Paul", "Simon", "Multimedia Programmer", 23, 1, 85000, 12000, "ps@gmail.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Edward", "Parhar", "Multimedia Programmer", 30, 2, 75000, 15000, "a@hotmail.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Kim", "Hunter", "Senior Web Designer", 32, 4, 110000, 20000, "kim@coolmail.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Roger", "Lewis", "System Administrator", 32, 3, 100000, 13000, "roger@mail.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Danny", "Gibson", "System Administrator", 31, 2, 90000, 12000, "danny@hotmail.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Mike", "Harper", "Senior Marketing Executive", 36, 1, 120000, 28000, "m@gmail.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Mary", "Sunday", "Marketing Executive", 31, 5, 90000, 25000, "monica@bigmail.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Jack", "Sim", "Marketing Executive", 27, 1, 70000, 18000, "hal@gmail.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Joe", "Irvine", "Marketing Executive", 27, 1, 72000, 18000, "joseph@hotmail.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Henry", "Ali", "Customer Service Manager", 32, 3, 70000, 9000, "shahida@hotmail.com");
INSERT INTO employee (firstname, lastName, title, age, yearofservice, salary, perks, email) values ("Peter", "Champion", "Finance Manager", 32, 2, 120000, 25000, "peter@yahoo.com");
