#Multi-thread Performance Test <br> of NoSQL databases
<table>
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
</table>
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
