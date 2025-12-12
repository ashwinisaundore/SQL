CREATE DATABASE ONLINE_BOOKSTORE;
USE ONLINE_BOOKSTORE;
#Create a database for a small online bookstore. The database should have three tables:Books, Authors, and Orders
CREATE TABLE BOOKS(book_id  INT,title VARCHAR(50),price  INT,publication_date  DATE,Author_id  INT,author_name VARCHAR(50));
CREATE TABLE AUTHORS(author_id INT, author_name VARCHAR(50), book_id INT,book_name VARCHAR(50)); 
CREATE TABLE ORDERS(order_id INT, book_id INT, order_date DATE,quantity INT, author_id INT);
INSERT INTO BOOKS(book_id,title,price,publication_date,Author_id,author_name)
VALUES(101, 'The Silent Sea', 15, '2022-01-10', 201, 'Arthur Clarke'),
      (102, 'Moonlight Shadows', 22, '2021-03-12', 202, 'Sarah Wilson'),
      (103, 'Digital Fortress', 30, '2020-10-05', 203, 'Dan Brown'),
      (104, 'Ancient Tales', 18, '2023-02-08', 204, 'Emily Carter'),
      (105, 'Beyond the Horizon', 25, '2022-07-21', 205, 'Robert Miles'),
      (106, 'Shadow Hunters', 19, '2021-12-15', 206, 'Kate Richards'),
      (107, 'The Lost Empire', 27, '2019-09-09', 207, 'Michael Grant'),
      (108, 'Firestorm', 21, '2020-04-17', 208, 'Alex Knight'),
      (109, 'The Last Oracle', 35, '2023-03-01', 209, 'James Rollins'),
      (110, 'Fallen Stars', 17, '2022-11-11', 210, 'Nora Blake'),
      (111, 'Golden Sands', 24, '2021-05-18', 211, 'David Harris'),
      (112, 'Iron Will', 29, '2020-08-23', 212, 'Linda Scott'),
      (113, 'Echoes of Time', 16, '2019-12-30', 213, 'Peter Nolan'),
      (114, 'Stormbreaker', 26, '2023-06-14', 214, 'Anthony Horowitz'),
      (115, 'Blue Horizon', 22, '2021-01-19', 215, 'Wilbur Smith'),
      (116, 'Neon Skies', 19, '2022-10-05', 216, 'Chris Taylor'),
      (117, 'Quantum Drift', 28, '2020-09-28', 217, 'Evan Greene'),
      (118, 'Whispers in Rain', 13, '2023-05-05', 218, 'Rachel Moore'),
      (119, 'Scarlet Night', 23, '2021-04-04', 219, 'Liam Turner'),
      (120, 'Phoenix Rising', 31, '2019-03-15', 220, 'Sophia Hayes');

INSERT INTO AUTHORS( author_id,author_name,book_id,book_name)
 VALUES (201, 'Arthur Clarke', 1001, 'The Silent Sea'),
        (202, 'Sarah Wilson', 1002, 'Moonlight Shadows'),
        (203, 'Dan Brown', 1003, 'Digital Fortress'),
        (204, 'Emily Carter', 1004, 'Ancient Tales'),
        (205, 'Robert Miles', 1005, 'Beyond the Horizon'),
        (206, 'Kate Richards', 1006, 'Shadow Hunters'),
        (207, 'Michael Grant', 1007, 'The Lost Empire'),
        (208, 'Alex Knight', 1008, 'Firestorm'),
        (209, 'James Rollins', 1009, 'The Last Oracle'),
        (210, 'Nora Blake', 1010, 'Fallen Stars'),
        (211, 'David Harris', 1011, 'Golden Sands'),
        (212, 'Linda Scott', 1012, 'Iron Will'),
        (213, 'Peter Nolan', 1013, 'Echoes of Time'),
        (214, 'Anthony Horowitz', 1014, 'Stormbreaker'),
        (215, 'Wilbur Smith', 1015, 'Blue Horizon'),
        (216, 'Chris Taylor', 1016, 'Neon Skies'),
        (217, 'Evan Greene', 1017, 'Quantum Drift'),
        (218, 'Rachel Moore', 1018, 'Whispers in Rain'),
        (219, 'Liam Turner', 1019, 'Scarlet Night'),
        (220, 'Sophia Hayes', 1020, 'Phoenix Rising');
        
INSERT INTO ORDERS(order_id,book_id,order_date,quantity,author_id)
 VALUES(301, 1001, '2024-01-02', 2, 201),
       (302, 1002, '2024-01-05', 1, 202),
       (303, 1003, '2024-01-07', 3, 203),
       (304, 1004, '2024-01-08', 2, 204),
       (305, 1005, '2024-01-10', 1, 205),
       (306, 1006, '2024-01-11', 5, 206),
       (307, 1007, '2024-01-12', 4, 207),
       (308, 1008, '2024-01-13', 1, 208),
       (309, 1009, '2024-01-15', 2, 209),
       (310, 1010, '2024-01-18', 3, 210),
       (311, 1011, '2024-01-20', 2, 211),
       (312, 1012, '2024-01-21', 1, 212),
       (313, 1013, '2024-01-22', 4, 213),
       (314, 1014, '2024-01-23', 3, 214),
       (315, 1015, '2024-01-24', 2, 215),
       (316, 1016, '2024-01-25', 6, 216),
       (317, 1017, '2024-01-26', 3, 217),
       (318, 1018, '2024-01-27', 1, 218),
       (319, 1019, '2024-01-28', 7, 219),
       (320, 1020, '2024-01-29', 4, 220);

SELECT *FROM BOOKS

SELECT *FROM AUTHORS

select * from ORDERS

#2. Write a SELECT statement to retrieve all books from the Books table. 
select title from BOOKS

#3. Write a SELECT statement to retrieve books with a price greater than 20. 
select *from BOOKS WHERE price>20;

#4. Write a SELECT statement to retrieve books with a publication date between '2020-01-01' and '2020-06-30'.
select *from BOOKS WHERE publication_date between '2020-01-01' and '2020-06-30';

#5. Write a SELECT statement to retrieve orders with a quantity greater than or equal to 2.
select *from ORDERS WHERE quantity>=2

#6. Write an UPDATE statement to update the price of a book with a book_id of 1. 
UPDATE BOOKS
SET price = 25
WHERE book_id = 1;

#7. Write a DELETE statement to delete an order with an order_id of 5. 
DELETE FROM ORDERS
WHERE order_id = 5;

#8. Write a SELECT statement to retrieve books with a price less than 15. 
select *from BOOKS WHERE price < 15

#9. Write a SELECT statement to retrieve orders with an order date greater than or equal to '2020-03-01'.
select *from ORDERS WHERE order_date >= '2020-03-01'

#10. Write a SELECT statement to retrieve books with a title not equal to 'Book 1'. 
select *from BOOKS WHERE title != 'Book 1';

#11. Write a SELECT statement to retrieve authors with an author_id less than or equal to 2.
select *from AUTHORS WHERE author_id >= 2

#12. Write a SELECT statement to retrieve books with a price between 10 and 20. 
select *from BOOKS WHERE price between 10 and 20;

#13. Write a SELECT statement to retrieve orders with a quantity in (1, 2, 3). 
select *from ORDERS where quantity between 1 and 3

#14. Write a SELECT statement to retrieve books with a publication date like '%2020%'. 
#select *from BOOKS 



#15. Write a SELECT statement to retrieve authors with an author_name starting with 'A'. 


#16. Write an INSERT statement to add a new book to the Books table. 
INSERT INTO BOOKS(book_id, title, price, publication_date, author_id, author_name)
VALUES (2001, 'The Mahabharata ', 19, '2024-01-01', 301, 'Vyasa');

select *from BOOKS

#17. Write an UPDATE statement to update the quantity of an order in the Orders table. 
UPDATE ORDERS
SET quantity = 5
WHERE order_id = 310;

select *from ORDERS

#18. Write a DELETE statement to delete a book from the Books table. 
DELETE FROM BOOKS
WHERE book_id = 101;

select *from BOOKS

#19. Write a SQL query to retrieve the total number of books in the Books table. 
SELECT COUNT(*)FROM BOOKS;

#20. Write a SQL query to retrieve the average price of books in the Books table. 
SELECT book_id,AVG(price)
from books
group by book_id;

#21. Write a SQL query to retrieve the maximum quantity of orders in the Orders table. 
SELECT order_id,max(quantity)
FROM orders
group by order_id;

#22. Write a SQL query to retrieve the minimum publication date of books in the Books table.
SELECT MIN(publication_date)FROM BOOKS;

#23. Write a GRANT statement to grant SELECT privilege to bookstore_user on the Orders table.
create user 'bookstore_user@localhost' identified by 'root';
grant select on BOOKS to 'bookstore_user@localhost';

#24. Write a REVOKE statement to revoke INSERT privilege from bookstore_user on the Books table.
revoke select on BOOKS from 'bookstore_user@localhost';

