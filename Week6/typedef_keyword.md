### Typedef
typedef keyword in C++ is used for aliasing existing data types, user-defined data types, and pointers to a more meaningful name. Typedefs allow you to give descriptive names to standard data types,
which can also help you self-document your code. Mostly typedefs are used for aliasing, only if the predefined name is too long or complex to write again and again. The unnecessary use of typedef is generally not a good practice.

Syntax:
```
typedef <current_name> <new_name>
```
Example:
```
typedef std::vector<int> vInt;
```
Example Implementation:
```
// C++ Program to implement typedef
#include <bits/stdc++.h>

using namespace std;

int main()
{
	// Now we can make more vectors by using vInt
	typedef std::vector<int> vInt;

	// vec1 is a vectorof type int
	vInt v;

	v.push_back(190);
	v.push_back(180);
	v.push_back(10);
	v.push_back(10);
	v.push_back(27);

	for (auto X : v) {
		cout << X << " ";
	}

	return 0;
}
```
Reference Link:[geeksforgeeks](https://www.geeksforgeeks.org/typedef-in-cpp/)
