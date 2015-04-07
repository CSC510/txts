#Introduction

- SQL:
  - Relational database
  - Table based
  - Microsoft SQL
- NoSQL:
  - Not only SQL
  - key-value, column-oriented, document-based
  - Cassandra, MongoDB


Comparison of SQL and NoSQL database is a hot topic.

#Comparison between SQL and NoSQL

<img src="../img/comparison table.png">




#Goal

Compare the performance of MySQL and MongoDB

- Single thread VS. Multiple threads
- Join performance





#Architecture

Spring IoC
 
- MySQL Dao:  Hibernate Session
- MongoDB Dao: SpringData MongoTemplate

<img src="../img/spring_architecture.jpg">

#Single-thread Performance Test <br> of SQL and NoSQL databases

- Choose MySQL(SQL) and MongoDB(NoSQL) to test their single thread performance.
- See the performance of Insertion, FindbyID, Deletion for MySQL and MongoDB.
Method: Control Variates 
<ul>
<li>Insertion
  <ul>
   <li> Fixed <u>number</u> of records to be added to the two databases.
   <li> Increase the <u>number</u> to be added (from 5,000 to 200,000) and see if the time gap increases.
 
 </ul>
<li>FindbyId
</ul>
<ul>
<li> Method 1:
   <ul>
   <li> Fixed number of records (200,000) existing in the database
   <li> Fixed <u>number</u> of records need to be found
  <br><b> Increase the <u>number</u> to be found and see if the time gap increases</b>
   </ul>
</ul>

#Single-thread Performance Test <br> of SQL and NoSQL databases
<ul>
<li> Method 2:
   <ul>
   <li> Fixed number of records(5,000) need to be found
   <li> Fixed <u>number</u> of records existing in the database
  <br><b> Increase the <u>number</u> existing in the database (from 5, 000 to 200,000) and see if the time gap increases</b>
   </ul>
</ul>
   <li> Increase the <u>number</u> existing in the database (from 5, 000 to 200,000) and see if the time gap increases.
   </ul>
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
<img src="../img/many_to_many.jpg"/>

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
#Multi-thread Performance Test <br> of NoSQL databases
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
</ul>

#Multi-thread Performance Test <br> of NoSQL databases

<ul>
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
<img src="../img/multi_insert.png"/>
<img src="../img/multi_find_1.png"/>
<img src="../img/multi_find_2.png"/>
<img src="../img/multi_del_1.png"/>
<img src="../img/multi_del_2.png"/>

# Analysis on Multi-thread Performance <br>in Mongo
 
 - Insertion 
    <br>Not much improvement on the time used to do the insertion. Multi-thread has no contributions to it but wasting the extra resourses.
   - No gain? database Lock Mechanism
 - Find
   - Method 1: 
    <br> Utilizing one more thread saves about 50% time. However, no further gain by adding more threads.
     - Reason : 

# Analysis on Multi-thread Performance <br>in Mongo

   - Method 2
    <br> No large improvement hoewever has small gain using multiple threads. Adding more threads has little gain.
     - No huge diff? : small dataset, PC performance limit. 
 - Delete
   - Method 1 & 2:
    <br> totally no differences. Barely no point to use multi-thread to delete
     - lock mechanism


# Data Models
- Relational design in MySQL
<table border=0 style="border-collapse:collapse;">
  <thead>
  <th>one to many</th>
  </thead>
 <tr>
  <td><img src="../img/one_to_many.jpg" /></td>
 </tr>
 <th>many to many</th>
 <tr>
  <td><img src="../img/many_to_many.jpg"></td>
 </tr>
</table>

# Embedded document in MongoDB

In MongoDB,  we would apply following model structure to represent one to many relation.

<pre><code>
{
	"_id":
	"name":
	"password":
	"requestList":{
		{ 
		   "_id":
		   "comment":
		   "house":{
		   	  "_id":
		   	  "name":
		   	  "type":
		   }
		},
		{ 
		   "_id":
		   "comment":
		   "house":{
		   	  "_id":
		   	  "name":
		   	  "type":
		   }
		}
	}
}
</code></pre>

#Data
- MySQL
<table border=0 style="border-collapse:collapse;">
  <thead>
 <th>#Records</th>
 <th>100</th>
 <th>1000</th>
 <th>10000</th>
  </thead>
 <tr>
  <td>user+request</td>
  <td>73</td>
  <td>597</td>
  <td>4937</td>
 </tr>
 <tr>
  <td>reqeust+house_request+house</td>
  <td>456</td>
  <td>7473</td>
  <td>88244</td>
 </tr>
</table>

- MongoDB
<table border=0 style="border-collapse:collapse;">
  <thead>
 <th>#Records</th>
 <th>100</th>
 <th>1000</th>
 <th>10000</th>
 <th>100000</th>
  </thead>
 <tr>
  <td>user</td>
  <td>82</td>
  <td>56</td>
  <td>95</td>
  <td>103</td>
 </tr>
 <tr>
  <td>user.requestList</td>
  <td>42</td>
  <td>102</td>
  <td>1407</td>
  <td>22778</td>
 </tr>
 <tr>
  <td>user.requestList.house</td>
  <td>45</td>
  <td>112</td>
  <td>1891</td>
  <td>72789</td>
 </tr>
</table>


# Analysis

- MySQL

  - Searching requests responding to house takes 10+ times than searching user''s requests. Querying user's requests only search in the "request" table while  house's requests would take 2 join operations which consumes large time. 
 
 - The result of join even generates larger size of result set. Query in that result set pretends to be extremely slow. Generally, query across multiple tables using sql operations would take much time than single table. The situation get worse when these table scaling up. 

- MongoDB

  - Directly find user's requests when we query a specific user and varies a little when scaling up. Any search takes in single collection. 
  
   - With embedded query, searching would happen in each embedded collections inside the document. 

 - hard to map requests and house in this schema. We can insert such a embedded request collection inside the house collection which causes duplicate records on request. In this schema, the document with embedded collections also takes more space in disk and may causes split because the maximum document size in mongoDB is 16MB. To avoid this, We would expect a small size of embedded collection.




# Single-Thread Performance
- MongoDB has a better performance in Insertion and deletion, and the number of records in databases affects the deletion performance of MySQL, but has little affection on the deletion performance of MongoDB. The main reason is that MySQL commands excute transaction and event. 
- MySQL has a better performance in finding records from databases, and the number of records in databases can not clearly affect the finding performance of MySQL and MongoDB.

# Multi-Thread Performance
- Little improvement on time factors in insertion and deletion in Mongo like NoSQL database on a single instance has
- Signficant influence on query performance, the performance could be improved by at least 50%
- More improvement could be achieved by utilizing expanded scale of cluster servers

# Join Table Performance
- In a scenario that requires much relational design, it is needed in MySQL to strictly define the schema of tables. With dynamic SQL query, we could easily associated data and map the relation. 

- In a less related and huge scale scenario, query is expected inside single table which SQL lost its power. MongoDB is more suit using embedded structure and flexible to extension in data model. 


#Future work

- MongoDB distributed deployment: mongodb support distributed system that running in separate nodes. Data models and operation performance varies with single node scenarios. 
- Improvement in hardware with larger memory and driver. Scale up the size of data set.
- Building service and application layer for the application. Test in a production environment to find out system performance difference.
- Test other NoSQL database such as Cassandra


#Reference:
[1] http://www.thewindowsclub.com/difference-sql-nosql-comparision

[2] http://www.thegeekstuff.com/2014/01/sql-vs-nosql-db/

[3] Ramon Lawrence, "Integration and Virtualization of Relational SQL and NoSQL Systems including MySQL and MongoDB", in International Conference on Computational Science and Computational Intelligence, 2014.

[4] Christoforos Hadjigeorgiou, "RDBMS vs NoSQL: Performance and Scaling Comparison", in MSc in High Performance Computing, 2013.

[5] Alexandru Boicea, Florin Radulescu, and Laura Ioana Agapin, "MongoDB vs Oracle - database comparison", in 2012 Third International Conference on Emerging Intelligent Data and Web Technologies.

[6] Yishan Li, Sathiamoorthy Manoharan, "A performance comparison of SQL and NoSQL databases", in IEEE 2013.

[7] http://docs.spring.io/spring/docs/current/spring-framework-reference/html/mvc.html
