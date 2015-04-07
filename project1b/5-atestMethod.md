
### Data Models
- Relational design in MySQL
<table border=0 style="border-collapse:collapse;">
  <thead>
 ¡¡<th>one to many</th><th>many to many</th>
  </thead>
 <tr>
  <td><img src="../img/one_to_many.jpg" /></td>
  <td><img src="../img/many_to_many.jpg"></td>
 </tr>
</table>
- Embedded document in MongoDB
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

