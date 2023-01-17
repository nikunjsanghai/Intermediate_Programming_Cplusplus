### Object Composition
An object is a basic unit of Object-Oriented Programming and represents real-life entities. Complex objects are objects that are built from smaller or a collection of objects. For example, a mobile phone is made up of various objects like a camera, battery, screen, sensors, etc. This process of building complex objects from simpler ones is called object composition.
In object-oriented programming languages, object composition is used for objects that have a “has-a” relationship with each other. Therefore, the complex object is called the whole or a parent object whereas a simpler object is often referred to as a child object.
```
class A
{
    // body of a class
};


class B
{
    A objA;
    public:
   B(arg-list) : objA(arg-list1);
};
```
In the classes given above, B uses objects of class A as its data members. Hence,
B is a complex class that uses a simple class A. Let’s have a look at the program that makes use of the composition.
```
#include <iostream>
using namespace std;

// Simple class
class A {
public:
	int x;

	// COnstructor initializing
	// the data members
	A() { x = 0; }

	A(int a)
	{
		cout << "Constructor A(int a) is invoked" << endl;
		x = a;
	}
};

// Complex class
class B {
	int data;
	A objA;

public:
	// COnstructor initializing the
	// data members
	B(int a)
		: objA(a)
	{
		data = a;
	}

	// Function to print values
	// of data members in class
	// A and B
	void display()
	{
		cout << "Data in object of class B = " << data
			<< endl;
		cout << "Data in member object of "
			<< "class A in class B = " << objA.x;
	}
};

// Driver code
int main()
{
	// Creating object of class B
	B objb(25);

	// Invoking display function
	objb.display();
	return 0;
}
```
Output:
```
Constructor A(int a) is invoked
Data in object of class B = 25
Data in member object of class A in class B = 25
```

Reference Article:[geeksforgeeks](https://www.geeksforgeeks.org/object-composition-delegation-in-c-with-examples/)
