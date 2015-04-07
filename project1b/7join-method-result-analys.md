
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



