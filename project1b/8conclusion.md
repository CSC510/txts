
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


