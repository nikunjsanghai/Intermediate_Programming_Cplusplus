### Virtual Keyword
A virtual function is a member function which is declared within a base class and is re-defined (overridden) by a derived class. When you refer to a derived class object using a pointer or a reference to the base class, you can call a virtual function for that object and execute the derived class’s version of the function.              
                            
Virtual functions ensure that the correct function is called for an object, regardless of the type of reference (or pointer) used for function call.            
- They are mainly used to achieve Runtime polymorphism
- Functions are declared with a virtual keyword in base class.
- The resolving of function call is done at runtime.                       

Example:   
// CPP program to illustrate
// concept of Virtual Functions

#include<iostream>
using namespace std;

class base {
public:
	virtual void print()
	{
		cout << "print base class\n";
	}

	void show()
	{
		cout << "show base class\n";
	}
};

class derived : public base {
public:
	void print()
	{
		cout << "print derived class\n";
	}

	void show()
	{
		cout << "show derived class\n";
	}
};

int main()
{
	base *bptr;
	derived d;
	bptr = &d;

	// Virtual function, binded at runtime
	bptr->print();

	// Non-virtual function, binded at compile time
	bptr->show();
	
	return 0;
}
```
Output:
```
print derived class
show base class
```
Reference Link:[geeksforgeeks](https://www.geeksforgeeks.org/virtual-function-cpp/) [stackoverflow](https://stackoverflow.com/questions/11067975/overriding-non-virtual-methods) 
