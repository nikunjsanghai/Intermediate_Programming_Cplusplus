### New Keyword
The new operator is an operator which denotes a request for memory allocation on the Heap. If sufficient memory is available, new operator initializes the memory and returns the address of the newly allocated and initialized memory to the pointer variable. When you create an object of class using new keyword(normal new).         

- The memory for the object is allocated using operator new from heap.
- The constructor of the class is invoked to properly initialize this memory.
```
// CPP program to illustrate
// use of new keyword
#include<iostream>
using namespace std;
class car
{
	string name;
	int num;

	public:
		car(string a, int n)
		{
			cout << "Constructor called" << endl;
			this ->name = a;
			this ->num = n;
		}

		void enter()
		{
			cin>>name;
			cin>>num;
		}

		void display()
		{
			cout << "Name: " << name << endl;
			cout << "Num: " << num << endl;
		}
};

int main()
{
	// Using new keyword
	car *p = new car("Honda", 2017);
	p->display();
}
```
Output:
```
Constructor called
Name: Honda
Num: 2017
```
### Difference between stack and heap allocation in an example 
- With the new keyword...
```
    MyClass* myClass = new MyClass();
    myClass->MyField = "Hello world!";
 ```
 - Without the new keyword
 ```
  MyClass myClass;
  myClass.MyField = "Hello world!";
 ```
#### Method 1 (using new)

- Allocates memory for the object on the free store (This is frequently the same thing as the heap)
- Requires you to explicitly delete your object later. (If you don't delete it, you could create a memory leak)
- Memory stays allocated until you delete it. (i.e. you could return an object that you created using new)
- The example in the question will leak memory unless the pointer is deleted; and it should always be deleted, regardless of which control path is taken, or if exceptions are thrown.
#### Method 2 (not using new)

- Allocates memory for the object on the stack (where all local variables go) There is generally less memory available for the stack; if you allocate too many objects, you risk stack overflow.
- You won't need to delete it later.
- Memory is no longer allocated when it goes out of scope. (i.e. you shouldn't return a pointer to an object on the stack)                     

As far as which one to use; you choose the method that works best for you, given the above constraints.

**Some easy cases:**

- If you don't want to worry about calling delete, (and the potential to cause memory leaks) you shouldn't use new.
- If you'd like to return a pointer to your object from a function, you must use new                             

### Delete Keyword 
Delete is an operator that is used to destroy array and non-array(pointer) objects which are created by new expression.

- Delete can be used by either using Delete operator or Delete [ ] operator
- New operator is used for dynamic memory allocation which puts variables on heap memory.
- Which means Delete operator deallocates memory from heap.
- Pointer to object is not destroyed, value or memory block pointed by pointer is destroyed.
- The delete operator has void return type does not return a value.


Here, Below are examples where we can apply delete operator:
1. Deleting Array Objects: We delete an array using [] brackets.
```
// Program to illustrate deletion of array
#include <bits/stdc++.h>
using namespace std;

int main()
{
	// Allocate Heap memory
	int* array = new int[10];
	
	// Deallocate Heap memory
	delete[] array;

	return 0;
}
```
2. Deleting Null pointer:Deleting a NULL does not cause any change and no error. 
```
// C++ program to deleting
// NULLL pointer
#include <bits/stdc++.h>
using namespace std;

int main()
{
	// ptr is NULL pointer
	int* ptr = NULL;

	// deleting ptr
	delete ptr;

	return 0;
}
```
3. Deleting pointer with or without value
```
#include <bits/stdc++.h>
using namespace std;

int main()
{
	// Creating int pointer
	int* ptr1 = new int;
	
	// Initializing pointer with value 20
	int* ptr2 = new int(20);

	cout << "Value of ptr1 = " << *ptr1 << "\n";
	cout << "Value of ptr2 = " << *ptr2 << "\n";

	delete ptr1; // Destroying ptr1
	delete ptr2; // Destroying ptr2

	return 0;
}
```
Output:
```
Value of ptr1 = 0
Value of ptr2 = 20
```
4. Deleting a void pointer
```
#include <bits/stdc++.h>
using namespace std;
int main()
{
	void* ptr; // Creating void pointer

	delete ptr; // Destroying void pointer

	cout << "ptr deleted successfully";
	return 0;
}
```
Output:
```
ptr deleted successfully
```
Can we delete stack allocated pointers via delete?
```
#include <bits/stdc++.h>
using namespace std;

int main()
{
	int x;
	int* ptr1 = &x;

	// x is present on stack frame as
	// local variable, only dynamically
	// allocated variables can be destroyed
	// using delete operator
	delete ptr1;

	return 0;
}
```
Output:
```
Runtime error
```
How to delete an array of pointers? 
```
int* a = new int[10];
delete[] a;
a = NULL; // a still exists, but it's a dangling pointer now, so we set it to NULL (or 0)
```


Reference Links:[stackoverflow](https://stackoverflow.com/questions/2814188/c-array-of-pointers-delete-or-delete) [cplusplus](https://cplusplus.com/forum/beginner/30683/) [geeksforgeeks](https://www.geeksforgeeks.org/new-vs-operator-new-in-cpp/#:~:text=new%20keyword,memory%20to%20the%20pointer%20variable.) [stackoverflow](https://stackoverflow.com/questions/655065/when-should-i-use-the-new-keyword-in-c)
