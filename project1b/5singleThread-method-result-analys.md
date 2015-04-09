
#Single-Thread Performance Test <br> of SQL and NoSQL databases

- Test performance of Insertion, FindbyID, Deletion in MySQL and MongoDB under single-thread.

<img align=right src="../img/rsz_single_add.png"/>

- Insertion

- Test method:
	- Fixed <u>number</u> of records to be added to the two databases.
	- Increase the <u>number</u> to be added (from 5,000 to 200,000) and see if the time gap increases.
- Analysis:

	- MongoDB's Insertion performance is better than MySQL's insertion performance in single thread.

#Single-Thread Performance Test <br> of SQL and NoSQL databases

- FindbyId

<img align=right src="../img/rsz_single_find_1.png"/>

- Test method 1:

	- Fixed number of records (200,000) existing in the database
	- Fixed <u>number</u> of records need to be found
	- Increase the <u>number</u> to be found and see if the time gap increases
- Analysis:
	- MySQL is faster than MongoDB in findbyID an increasing number of records in database with a fixed number of records.  

#Single-Thread Performance Test <br> of SQL and NoSQL databases

- Method 2:
<img align=right src="../img/rsz_single_find_2.png"/>

	- Fixed number of records(5,000) need to be found
	- Fixed <u>number</u> of records existing in the database
	- Increase the <u>number</u> existing in the database (from 5, 000 to 200,000) and see if the time gap increases

- Analysis: 
	- MysQL is faster than MongoDB in findbyID a fixed number of records from databases with a varied number of records.
	- The number of records in databases can't clearly affect findbyID performance of MySQL and MongoDB.
	- The number of records in databases can not clearly affect findbyID performance of MySQL and MongoDB.


#Single-Thread Performance Test <br> of SQL and NoSQL databases

- Deletion

- Method1: Similar as in FindbyId Method 1

- Method2: Similar as in FindbyId Method 2

<img src="../img/rsz_single_del_1.png"/>
<img src="../img/rsz_single_del_2.png"/>

- Analysis:

	- MongoDB is faster than MySQL in deletion different number of records from databases with fixed number of records(200000). 
	- MongoDB is faster than MySQL in deletion the same number of records (5000) from databases with varied number of records.
	- The number of records in databases affects the deletion performance of MySQL, and has little affection on the deletion performance of MongoDB.


# Analysis on Single-thread Performance <br> in MySQL and MongoDB
 
 - Insertion 
   - MongoDB's Insertion performance is better than MySQL's insertion performance in single thread.
 - Find
   - Method 1: 
   - MySQL is faster than MongoDB in findbyID an increasing number of records in database with a fixed number of records.  
   - Method 2:
   - MysQL is faster than MongoDB in findbyID a fixed number of records from databases with a varied number of records.
   - The number of records in databases can't clearly affect findbyID performance of MySQL and MongoDB.
   - The number of records in databases can not clearly affect findbyID performance of MySQL and MongoDB.

# Analysis on Single-thread Performance <br> in MySQL and MongoDB

 - Delete
   - Method 1:
   - MongoDB is faster than MySQL in deletion different number of records from databases with fixed number of records(200000). 
   - Method 2：
   - MongoDB is faster than MySQL in deletion the same number of records (5000) from databases with varied number of records.
   - The number of records in databases affects the deletion performance of MySQL, and has little affection on the deletion performance of MongoDB.


