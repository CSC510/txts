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
