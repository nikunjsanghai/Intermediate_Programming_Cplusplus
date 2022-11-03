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
- How to delete an array of pointers? 
```
int* a = new int[10];
delete[] a;
a = NULL; // a still exists, but it's a dangling pointer now, so we set it to NULL (or 0)
```


Reference Links:[stackoverflow](https://stackoverflow.com/questions/2814188/c-array-of-pointers-delete-or-delete) [cplusplus](https://cplusplus.com/forum/beginner/30683/) [geeksforgeeks](https://www.geeksforgeeks.org/new-vs-operator-new-in-cpp/#:~:text=new%20keyword,memory%20to%20the%20pointer%20variable.)
