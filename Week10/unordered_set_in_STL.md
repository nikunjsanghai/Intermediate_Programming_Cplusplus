### Unordered Sets 
An unordered_set is an unordered associative container implemented using a hash table where keys 
are hashed into indices of a hash table so that the insertion is always randomized. All operations on the unordered_set take constant time O(1) on an average which 
can go up to linear time O(n) in the worst case which depends on the internally used hash function, but practically they perform very well and generally provide a 
constant time lookup operation.                    
 
The unordered_set can contain a key of any type – predefined or user-defined data structure but all the keys must be unique.
It is defined inside <unordered_set> header file as std::unordered_set class.                        
Syntax:
```
std::unordered_set<data_type> name;
```
In std::unordered_set, many functions are defined among which the most used functions are:

- The size() and empty() for capacity.
- The find() for searching a key.
- The insert () and erase() for modification.

Example:
```
// C++ program to demonstrate various function of
// unordered_set
#include <bits/stdc++.h>
using namespace std;

int main()
{
	// declaring set for storing string data-type
	unordered_set<string> stringSet;

	// inserting various string, same string will be stored
	// once in set

	stringSet.insert("code");
	stringSet.insert("in");
	stringSet.insert("c++");
	stringSet.insert("is");
	stringSet.insert("fast");

	string key = "slow";

	// find returns end iterator if key is not found,
	// else it returns iterator to that key

	if (stringSet.find(key) == stringSet.end())
		cout << key << " not found" << endl << endl;
	else
		cout << "Found " << key << endl << endl;

	key = "c++";
	if (stringSet.find(key) == stringSet.end())
		cout << key << " not found\n";
	else
		cout << "Found " << key << endl;

	// now iterating over whole set and printing its
	// content
	cout << "\nAll elements : ";
	unordered_set<string>::iterator itr;
	for (itr = stringSet.begin(); itr != stringSet.end();
		itr++)
		cout << (*itr) << endl;
}
```
Output:
```
slow not found

Found c++

All elements : is
fast
c++
in
code
```
The functions find(), insert() and erase() take a constant amount of time on average. 
The find() function returns an iterator to end() if a key is not there in the set, otherwise, an iterator to the key position is returned.
The iterator works as a pointer to the key values so that we can get the key by dereferencing them using the * operator.
Reference Link: [geeksforgeeks](https://www.geeksforgeeks.org/unordered_set-in-cpp-stl/) 
