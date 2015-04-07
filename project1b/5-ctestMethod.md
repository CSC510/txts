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
