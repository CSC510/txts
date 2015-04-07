<<<<<<< HEAD
#Single-thread Performance Test of SQL and NoSQL databases
=======
<<<<<<< HEAD
#Single-thread Performance Test of SQL and NoSQL databases
=======

#Single-thread Performance Test <br> of SQL and NoSQL databases

>>>>>>> 4cbb5aba9920ab4659aabc2712b33cc4f693b966
>>>>>>> pli5
- Choose MySQL(SQL) and MongoDB(NoSQL) to test their single thread performance.
- See the performance of Insertion, FindbyID, Deletion for MySQL and MongoDB.
Method: Control Variates 
<ul>
<li>Insertion
  <ul>
   <li> Fixed <u>number</u> of records to be added to the two databases.
 <br><b> Increase the <u>number</u> to be added (from 5,000 to 200,000) and see if the time gap increases</b>
<<<<<<< HEAD
 
 </ul>
<li>FindbyId
=======
<<<<<<< HEAD
 
 </ul>
<li>FindbyId
=======
 </ul>
<li>FindbyId
</ul>
>>>>>>> 4cbb5aba9920ab4659aabc2712b33cc4f693b966
>>>>>>> pli5
<ul>
<li> Method 1:
   <ul>
   <li> Fixed number of records (200,000) existing in the database
   <li> Fixed <u>number</u> of records need to be found
  <br><b> Increase the <u>number</u> to be found and see if the time gap increases</b>
   </ul>
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
</ul>

#Single-thread Performance Test <br> of SQL and NoSQL databases

<ul>
>>>>>>> 4cbb5aba9920ab4659aabc2712b33cc4f693b966
>>>>>>> pli5
<li> Method 2:
   <ul>
   <li> Fixed number of records(5,000) need to be found
   <li> Fixed <u>number</u> of records existing in the database
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> pli5
  <br><b> Increase the <u>number</u> existing in the database (from 5, 000 to 200,000) and see if the time gap increases</b>
   </ul>
</ul>
<li>deletion
<<<<<<< HEAD
=======
=======
   <li> Increase the <u>number</u> existing in the database (from 5, 000 to 200,000) and see if the time gap increases.
   </ul>
<li>Deletion
>>>>>>> 4cbb5aba9920ab4659aabc2712b33cc4f693b966
>>>>>>> pli5
  <ul>
  <li>Method1: Similar as in FindbyId Method 1
  <li>Method2: Similar as in FindbyId Method 2
  </ul>
</ul>

# Test Result in MongoDB

<img src="../img/single_add.jpg"/>
<img src="../img/single_find_1.png"/>
<img src="../img/single_find_2.png"/>
<img src="../img/single_del_1.png"/>
<img src="../img/single_del_2.png"/>
<img src="../img/many_to_many.jpg">

<<<<<<< HEAD
# Analysis on Single-thread Performance in MySQL and MongoDB
=======
<<<<<<< HEAD
# Analysis on Single-thread Performance in MySQL and MongoDB
=======
# Analysis on Single-thread Performance <br> in MySQL and MongoDB
>>>>>>> 4cbb5aba9920ab4659aabc2712b33cc4f693b966
>>>>>>> pli5
 
 - Insertion 
   - MongoDB's Insertion performance is better than MySQL's insertion performance in single thread.
 - Find
   - Method 1: 
   - MySQL is faster than MongoDB in findbyID an increasing number of records in database with a fixed number of records.  
   - Method 2:
   - MysQL is faster than MongoDB in findbyID a fixed number of records from databases with a varied number of records.
<<<<<<< HEAD
   - The number of records in databases can't clearly affect findbyID performance of MySQL and MongoDB.
=======
<<<<<<< HEAD
   - The number of records in databases can't clearly affect findbyID performance of MySQL and MongoDB.
=======
   - The number of records in databases can not clearly affect findbyID performance of MySQL and MongoDB.

# Analysis on Single-thread Performance <br> in MySQL and MongoDB

>>>>>>> 4cbb5aba9920ab4659aabc2712b33cc4f693b966
>>>>>>> pli5
 - Delete
   - Method 1:
   - MongoDB is faster than MySQL in deletion different number of records from databases with fixed number of records(200000). 
   - Method 2：
   - MongoDB is faster than MySQL in deletion the same number of records (5000) from databases with varied number of records.
   - The number of records in databases affects the deletion performance of MySQL, and has little affection on the deletion performance of MongoDB.
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======

>>>>>>> 4cbb5aba9920ab4659aabc2712b33cc4f693b966
>>>>>>> pli5
