#### Constructor Intilializer lists:
A constructor can optionally have a member initializer list, which initializes class members before the constructor body runs. 
(A member initializer list isn't the same thing as an initializer list of type std::initializer_list<T>.)
  
Reference Links for Constructor Initializer lists: [Link](https://www.geeksforgeeks.org/when-do-we-use-initializer-list-in-c/) [Link](https://www.ibm.com/docs/en/zos/2.4.0?topic=only-initialization-base-classes-members-c) [Link](https://stackoverflow.com/questions/926752/why-should-i-prefer-to-use-member-initialization-lists) [Link](https://docs.microsoft.com/en-us/cpp/cpp/constructors-cpp?view=msvc-170)
  
Remember when you call derived class constructor the base class default constructor gets called automatically but also point to note is that it gets called before the derived class constructor which would make sense since the derived class might use some functionality of the base class.
  
```
  // C++ program to explain
// multiple inheritance
#include <iostream>
using namespace std;

// first base class
class Vehicle {
public:
	Vehicle() { cout << "This is a Vehicle\n"; }
};

// second base class
class FourWheeler {
public:
	FourWheeler()
	{
		cout << "This is a 4 wheeler Vehicle\n";
	}
};

// sub class derived from two base classes
class Car : public Vehicle, public FourWheeler {
};

// main function
int main()
{
	// Creating object of sub class will
	// invoke the constructor of base classes.
	Car obj;
	return 0;
}
```
Output: 
```
This is a Vehicle
This is a 4 wheeler Vehicle
```
	
	
One more Example 
```
class A
{
public:
    A() { x = 0; }
    A(int x_) { x = x_; }
    int x;
};

class B
{
public:
    B()
    {
        a.x = 3;
    }
private:
    A a;
};
```
In this case, the constructor for B will call the default constructor for A, and then initialize a.x to 3. A better way would be for B's constructor to directly call A's constructor in the initializer list:
```
B()
  : a(3)
{
}
```
This would only call A's A(int) constructor and not its default constructor. In this example, the difference is negligible, but imagine if you will that A's default constructor did more, such as allocating memory or opening files. You wouldn't want to do that unnecessarily.  
