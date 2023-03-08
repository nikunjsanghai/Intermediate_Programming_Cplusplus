### Set in STL
Sets are a type of associative container in which each element has to be unique because the value of the element identifies it. The values are stored in a specific sorted order i.e. either ascending or descending.The std/::set class is the part of C++ Standard Template Library /(STL) and it is defined inside the /<set/> header file. 
### Properties 
- Storing order – The set stores the elements in sorted order.
- Values Characteristics – All the elements in a set have unique values.
- Values Nature – The value of the element cannot be modified once it is added to the set, though it is possible to remove and then add the modified value of that element. Thus, the values are immutable.
- Search Technique – Sets follow the Binary search tree implementation.
- Arranging order – The values in a set are unindexed.
### Functions in Set
- begin() – Returns an iterator to the first element in the set.
- end() – Returns an iterator to the theoretical element that follows the last element in the set.
- size() – Returns the number of elements in the set.
- max_size() – Returns the maximum number of elements that the set can hold.
- empty() – Returns whether the set is empty.
### Syntax
```
std::set <data_type> set_name;
```
Datatype: Set can take any data type depending on the values, e.g. int, char, float, etc.                                         
Example:
```
set<int> val; // defining an empty set
set<int> val = {6, 10, 5, 1}; // defining a set with values
```
Program:
```
// C++ Program to Demonstrate
// the basic working of STL
#include <iostream>
#include <set>

int main()
{
	std::set<char> a;
	a.insert('G');
	a.insert('F');
	a.insert('G');
	for (auto& str : a) {
		std::cout << str << ' ';
	}
	std::cout << '\n';
	return 0;
}
```
Output:
```
F G
```
Time complexity: O(N) // N is the size of the set.                                

Auxiliary Space: O(N)                                   

The reason it printed only F and G is that set does not take multiple same values it only accepts a unique value. We can use Multiset if we want to store multiple same values.                      
### Set Sorted in Descending Order 
By default, the std::set is sorted in ascending order. However, we have the option to change the sorting order by using the following syntax. 
```
std::set <data_type, greater<data_type>> set_name;
```
Example:
```
// C++ program to demonstrate the creation of descending
// order set container
#include <iostream>
#include <set>
using namespace std;

int main()
{

	set<int, greater<int> > s1;
	s1.insert(10);
	s1.insert(5);
	s1.insert(12);
	s1.insert(4);

	for (auto i : s1) {
		cout << i << ' ';
	}
	return 0;
}
```
Output:
```
12 10 5 4 
```
Reference Link:[geeksforgeeks](https://www.geeksforgeeks.org/set-in-cpp-stl/)
