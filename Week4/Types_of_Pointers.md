### Types of Pointers 

we will discuss the differences between constant pointer, pointers to constant & constant pointers to constants. 
Pointers are the variables that hold the address of some other variables, constants, or functions. There are several ways to qualify pointers using const.

- Pointers to constant.
- Constant pointers.
- Constant pointers to constant.

### Pointer to const 
In the pointers to constant, the data pointed by the pointer is constant and cannot be changed.
Although, the pointer itself can change and points somewhere else (as the pointer itself is a variable). 
You cannot change the value via the pointer but you can change the value directly from the variable memory address. 
```
#include <iostream>
using namespace std;

// Driver Code
int main()
{

	int high{ 100 };
	int low{ 66 };
	const int* score{ &high };

	// Pointer variables are read from
	// the right to left
	cout << *score << "\n";

	// Score is a pointer to integer
	// which is constant 
	// try doing *score = 78
	//*score = 78;
	high = 95;
	cout << *score << "\n";
	// It will give you an Error:
	// assignment of read-only location
	// ‘* score’ because value stored in
	// constant cannot be changed
	score = &low;

	// This can be done here as we are
	// changing the location where the
	// score points now it points to low
	cout << *score << "\n";

	return 0;
}
```
Ouput:
```
100
95
66
```
