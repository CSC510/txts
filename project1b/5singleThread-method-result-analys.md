#Single-thread Performance Test of SQL and NoSQL databases
- Choose MySQL(SQL) and MongoDB(NoSQL) to test their single thread performance.
- See the performance of Insertion, FindbyID, Deletion for MySQL and MongoDB.
Method: Control Variates 
<ul>
<li>Insertion
  <ul>
   <li> Fixed <u>number</u> of records to be added to the two databases.
 <br><b> Increase the <u>number</u> to be added (from 5,000 to 200,000) and see if the time gap increases</b>
 
 </ul>
<li>FindbyId
<ul>
<li> Method 1:
   <ul>
   <li> Fixed number of records (200,000) existing in the database
   <li> Fixed <u>number</u> of records need to be found
  <br><b> Increase the <u>number</u> to be found and see if the time gap increases</b>
   </ul>
<li> Method 2:
   <ul>
   <li> Fixed number of records(5,000) need to be found
   <li> Fixed <u>number</u> of records existing in the database
  <br><b> Increase the <u>number</u> existing in the database (from 5, 000 to 200,000) and see if the time gap increases</b>
   </ul>
</ul>
<li>deletion
  <ul>
  <li>Method1: Similar as in FindbyId Method 1
  <li>Method2: Similar as in FindbyId Method 2
  </ul>
</ul>

# Test Result in MongoDB
<img src="img/single_add.png"/>
<img src="img/single_find_1.png"/>
<img src="img/single_find_2.png"/>
<img src="img/single_del_1.png"/>
<img src="img/single_del_2.png"/>

# Analysis on Single-thread Performance in MySQL and MongoDB
 
 - Insertion 
   - MongoDB's Insertion performance is better than MySQL's insertion performance in single thread.
 - Find
   - Method 1: 
   - MySQL is faster than MongoDB in findbyID an increasing number of records in database with a fixed number of records.  
   - Method 2:
   - MysQL is faster than MongoDB in findbyID a fixed number of records from databases with a varied number of records.
   - The number of records in databases can't clearly affect findbyID performance of MySQL and MongoDB.
 - Delete
   - Method 1:
   - MongoDB is faster than MySQL in deletion different number of records from databases with fixed number of records(200000). 
   - Method 2：
   - MongoDB is faster than MySQL in deletion the same number of records (5000) from databases with varied number of records.
   - The number of records in databases affects the deletion performance of MySQL, and has little affection on the deletion performance of MongoDB.
