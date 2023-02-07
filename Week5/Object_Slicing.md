### Object Slicing 
When a derived class object is assigned to a base class object in C++, the derived class object’s extra attributes are sliced off (not considered) to generate the base class object;
and this whole process is termed object slicing. In simple words, when extra components of a derived class are sliced or not used and the priority is given to the base
class’s object this is termed object slicing.                                            

In C++, a derived class object can be assigned to a base class object, but the other way is not possible.
To tackle this slicing problem we can use a dynamic pointer.                         

Moreover, Object slicing happens when a derived class object is assigned to a base class object,
and additional attributes of a derived class object are sliced off to form the base class object.                  
```
// C++ program to demonstrate what is object slicing
class Base {
	int x, y;
};

class Derived : public Base {
	int z, w;
};

int main()
{
	Derived d;

	// Object Slicing,
	// z and w of d are sliced off
	Base b = d;
}
```
![Object_Slicing](https://user-images.githubusercontent.com/103468688/217334292-95b4e678-0594-4777-89e4-b7acfb26c87f.png)                            
```
// C++ program to demonstrate the mechanism or working of
// of the object slicing technique
#include <iostream>
using namespace std;

// Base class
class Base {
protected:
	int i;

public:
	Base(int a) { i = a; }
	virtual void
	display() // virtual function which is declared in base
			// class and re-declared in derived class
	{
		cout << "I am Base class object, i = " << i << endl;
	}
};

// Derived class
class Derived : public Base {
	int j;

public:
	Derived(int a, int b)
		: Base(a)
	{

		// assigning the value to the data members of
		// derived class
		j = b;
	}
	virtual void display()
	{
		cout << "I am Derived class object, i = " << i
			<< ", j = " << j << endl;
	}
};

// Global method, Base class
// object is passed by value
void somefunc(Base obj) { obj.display(); }

int main()
{
	Base b(33);
	Derived d(45, 54);
	somefunc(b);

	// Object Slicing, the member j of d is
	// sliced off
	somefunc(d);
	return 0;
}
```
Output:
```
I am Base class object, i = 33
I am Base class object, i = 45
```
Ref Link: [geeksforgeeks](https://www.geeksforgeeks.org/object-slicing-in-c/) [stackoverflow](https://stackoverflow.com/questions/274626/what-is-object-slicing)
