% Spring SQL vs.NoSQL
% Team Members
%Jesse Xu, Pengyu Li, Jiang Gu, Hongyi Ma




#Introduction

- SQL:
  - Relational database
  - Table based
  - Microsoft SQL
- NoSQL:
  - Not only SQL
  - key-value, column-oriented, document-based
  - Cassandra, MongoDB

#Comparison between SQL and NoSQL


<center>
Differences                                 MySQL                                                             MongoDB
-----------------------------------     --------------------------------------------------------    -----------------------------------------------------------------
Memory Usage                             reasonable memory usage                                    Need enough memory to keep efficient
Scalability                                     hard to scale                                       easy to scale
Complex query performance                 unsatisfying complex query performance                    handle more complicated queries faster
Single thread VS. Multiple thread         vary with different operations                            no apparent advantage over 4 threads
Data association                          support dynamic SQL query like join tables                support embedded collections
Security                                  give a quite safe performance                             still have some security issues
Supports transactions                      supports for atomic transactions                         does not support transactions but single operations are atomic
Data manipulation                          Specific language using Select, Insert, and Update       Through object-oriented APIs
Consistency                                Can be configured for strong consistency                 Depends on product
</center>




#Goal

Compare the performance of MySQL and MongoDB

- Single thread VS. Multiple threads
  - Use basic operations: add, find, and delete
  - Run tests both in single thread and multiple threads
- Join performance





#Architecture of Spring IOC

<img align="right" src="../img/spring_architecture.jpg">

- MySQL Dao:  Hibernate Session
- MongoDB Dao: SpringData MongoTemplate

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

#Multi-thread Performance Test <br> of NoSQL databases
- See whether using <b>multiple threads</b> is an effective way to <b>save time</b> in Mongo like NOSQL databases

<img align="right" src="../img/rsz_multi_insert.png"/>

- Method: Control Variates 

- Insertion
	- Different numbers of threads
	- Fixed <u>number</u> of records to be added to the database
	- <b> Increase the <u>number</u> to be added and see if the time gap increases</b>
 
- Reasons:
	- <br>Not much improvement on the time used to do the insertion. Multi-thread has no contributions to it but wasting the extra resourses.
	- No gain? database Lock Mechanism

#Multi-thread Performance Test <br> of NoSQL databases

- FindbyId

<img align=right src="../img/rsz_multi_find_1.png"/>

- Method 1:
	- Different numbers of threads
	- Fixed number of records existing in the database
	- Fixed <u>number</u> of records need to be found
	- <b> Increase the <u>number</u> to be found and see if the time gap increases</b>

- Reasons:
	- <br> Utilizing one more thread saves about 50% time. However, no further gain by adding more threads.


#Multi-thread Performance Test <br> of NoSQL databases

<img align=right src="../img/rsz_multi_find_2.png"/>

- Method 2:
	- Different numbers of threads
	- Fixed <u>number</u> of records existing in the database
	- Fixed number of records need to be found
	- <b> Increase the <u>number</u> existing in the database and see if the time gap increases</b>

- Reasons:
	- <br> No large improvement hoewever has small gain using multiple threads. Adding more threads has little gain.
	- No huge diff? : small dataset, PC performance limit. 

#Multi-thread Performance Test <br> of NoSQL databases
- Deletion
- Method1: Similar as in FindbyId Method 1
- Method2: Similar as in FindbyId Method 2

<img src="../img/rsz_multi_del_1.png"/>
<img src="../img/rsz_multi_del_2.png"/>

- Reasons:
- Method 1 & 2:
	- <br> totally no differences. Barely no point to use multi-thread to delete
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


# MySQL Analysis

  - Searching requests responding to house takes 10+ times than searching user''s requests. Querying user's requests only search in the "request" table while  house's requests would take 2 join operations which consumes large time. 
 
 - The result of join even generates larger size of result set. Query in that result set pretends to be extremely slow. Generally, query across multiple tables using sql operations would take much time than single table. The situation get worse when these table scaling up. 

# MongoDB Analysis

  - Directly find user's requests when we query a specific user and varies a little when scaling up. Any search takes in single collection. 
  
   - With embedded query, searching would happen in each embedded collections inside the document. 

 - hard to map requests and house in this schema. We can insert such a embedded request collection inside the house collection which causes duplicate records on request. In this schema, the document with embedded collections also takes more space in disk and may causes split because the maximum document size in mongoDB is 16MB. To avoid this, We would expect a small size of embedded collection.




# Conclusion <br> Single-Thread Performance
- MongoDB has a better performance in Insertion and deletion, and the number of records in databases affects the deletion performance of MySQL, but has little affection on the deletion performance of MongoDB. The main reason is that MySQL commands excute transaction and event. 
- MySQL has a better performance in finding records from databases, and the number of records in databases can not clearly affect the finding performance of MySQL and MongoDB.

# Conclusion <br> Multi-Thread Performance
- Little improvement on time factors in insertion and deletion in Mongo like NoSQL database on a single instance has
- Signficant influence on query performance, the performance could be improved by at least 50%
- More improvement could be achieved by utilizing expanded scale of cluster servers

# Conclusion <br> Join Table Performance
- In a scenario that requires much relational design, it is needed in MySQL to strictly define the schema of tables. With dynamic SQL query, we could easily associated data and map the relation. 

- In a less related and huge scale scenario, query is expected inside single table which SQL lost its power. MongoDB is more suit using embedded structure and flexible to extension in data model. 


#Future work

- MongoDB distributed deployment: mongodb support distributed system that running in separate nodes. Data models and operation performance varies with single node scenarios. 
- Improvement in hardware with larger memory and driver. Scale up the size of data set.
- Building service and application layer for the application. Test in a production environment to find out system performance difference.
- Test other NoSQL database such as Cassandra
- MongoDB distributed deployment: mongodb support distributed system that running in separate nodes. Data models and operation performance varies with single node scenarios. 


#Reference:
[1] http://www.thewindowsclub.com/difference-sql-nosql-comparision

[2] http://www.thegeekstuff.com/2014/01/sql-vs-nosql-db/

[3] Ramon Lawrence, "Integration and Virtualization of Relational SQL and NoSQL Systems including MySQL and MongoDB", in International Conference on Computational Science and Computational Intelligence, 2014.

[4] Christoforos Hadjigeorgiou, "RDBMS vs NoSQL: Performance and Scaling Comparison", in MSc in High Performance Computing, 2013.

[5] Alexandru Boicea, Florin Radulescu, and Laura Ioana Agapin, "MongoDB vs Oracle - database comparison", in 2012 Third International Conference on Emerging Intelligent Data and Web Technologies.

[6] Yishan Li, Sathiamoorthy Manoharan, "A performance comparison of SQL and NoSQL databases", in IEEE 2013.

[7]http://docs.spring.io/spring/docs/current/spring-framework-reference/html/mvc.html

- MongoDB distributed deployment: mongodb support distributed system that running in separate nodes. Data models and operation performance varies with single node scenarios. 

#
<center>
<br><br>
<front size = "10">Q & A</p1> </front> <br><br>
<font size="10">Thank you!!</font>
</center>
