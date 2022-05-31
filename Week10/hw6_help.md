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
  
