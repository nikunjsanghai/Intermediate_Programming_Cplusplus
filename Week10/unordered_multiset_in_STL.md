### Unordered_multiset in STL 
The unordered_multiset in C++ STL is an unordered associative container that works similarly to an unordered_set.
The only difference is that we can store multiple copies of the same key in this container.

It is also implemented using a hash table so the time complexity of the operations is O(1) on average which can go up to linear time O(n)
in the worst case. Internally when an existing value is inserted, the data structure increases its count which is associated with each value. 
A count of each value is stored in unordered_multiset, it takes more space than unordered_set (if all values are distinct).

Due to hashing of elements, it has no particular order of storing the elements so all element can come in any order but duplicate element comes together.            
Syntax:
```
std::unordered_set<data_type> name;
```
#### unordered_set vs unordered_multiset
As we can see most of the operations work similarly to that of unordered_set but some things are different such as: 

- equal_range(Val) function returns a pair of types where the first iterator points to the first position of Val and the second points to the last position of Val in the data structure. While erase(Val) function deletes all its instances from the data structure.
For example, if some value v has occurred t times in unordered_multiset and when erase is called, v is deleted completely which is not an expected behavior many times.
- We can delete only one copy of some value by using the find function and the iterator version of erasing, as the find function returns the iterator to the first positi
on of found value we can pass this iterator to erase instead of the actual value to delete only one copy. The following program demonstrates how this happens:
