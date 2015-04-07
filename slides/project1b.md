#Introduction

SQL: 
* Relational database
* Table based
* Microsoft SQL

NoSQL:
* Not only SQL
* key-value, column-oriented, document-based
* Cassandra, MongoDB

Comparison of SQL and NoSQL database is a hot topic.
#Comparison between SQL and NoSQL

aaa | bbb
------|------
aaaddd | cccddd
#Multi-thread Performance Test of NoSQL databases
- See whether using <b>multiple threads</b> is an effective way to <b>save time</b> in Mongo like NOSQL databases
Method: Control Variates 
<ul>
<li>Insertion
  <ul>
   <li> Different numbers of threads
   <li> Fixed <u>number</u> of records to be added to the database
 <br><b> Increase the <u>number</u> to be added and see if the time gap increases</b>
 
 </ul>
<li>FindbyId
<ul>
<li> Method 1:
   <ul>
   <li> Different numbers of threads
   <li> Fixed number of records existing in the database
   <li> Fixed <u>number</u> of records need to be found
  <br><b> Increase the <u>number</u> to be found and see if the time gap increases</b>
   </ul>
<li> Method 2:
   <ul>
   <li> Different numbers of threads
   <li> Fixed <u>number</u> of records existing in the database
   <li> Fixed number of records need to be found
  <br><b> Increase the <u>number</u> existing in the database and see if the time gap increases</b>
   </ul>
</ul>
<li>deletion
  <ul>
  <li>Method1: Similar as in FindbyId Method 1
  <li>Method2: Similar as in FindbyId Method 2
  </ul>
</ul>
# Test Result in MongoDB
<img src="img/multi_insert.png"/>
<img src="img/multi_find_1.png"/>
<img src="img/multi_find_2.png"/>
<img src="img/multi_del_1.png"/>
<img src="img/multi_del_2.png"/>
# Analysis on Multi-thread Performance in Mongo
 
 - Insertion 
    <br>Not much improvement on the time used to do the insertion. Multi-thread has no contributions to it but wasting the extra resourses.
   - No gain? database Lock Mechanism
 - Find
   - Method 1: 
    <br> Utilizing one more thread saves about 50% time. However, no further gain by adding more threads.
     - Reason : 
   - Method 2:
    <br> No large improvement hoewever has small gain using multiple threads. Adding more threads has little gain.
     - No huge diff? : small dataset, PC performance limit. 
 - Delete
   - Method 1 & 2:
    <br> totally no differences. Barely no point to use multi-thread to delete
     - lock mechanism
