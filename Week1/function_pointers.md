### Function Pointers 
Pointers are symbolic representations of addresses. They enable programs to simulate call-by-reference as well as to create and manipulate dynamic data structures. Iterating over elements in arrays or other data structures is one of the main use of pointers.

The address of the variable you’re working with is assigned to the pointer variable that points to the same data type (such as an int or string).

### Address of the Function
We all know that every function’s code resides in memory, so every function has an address like all other variables in the program. The name of a function can be used to find the address of the function. We can get the address of a function by just writing the function’s name without parentheses in the function

### Function Pointer in C++
- The function pointer is used to point functions, similarly, the pointers are used to point variables. 
- It is utilized to save a function’s address. 
- The function pointer is either used to call the function or it can be sent as an argument to another function.

### Demo Code
```
// C++ program to implementation
// Function Pointer
#include <iostream>
using namespace std;

int multiply(int a, int b) { return a * b; }

int main()
{
	int (*func)(int, int);

	// func is pointing to the multiplyTwoValues function

	func = multiply;

	int prod = func(15, 2);
	cout << "The value of the product is: " << prod << endl;

	return 0;
}
```
Reference link: [geeksforgeeks](https://www.geeksforgeeks.org/function-pointer-in-cpp/) [learncpp](https://www.learncpp.com/cpp-tutorial/function-pointers/)
