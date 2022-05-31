Reference Links for Abstract Classes and Pure virtual function: [Link](https://www.ibm.com/docs/en/zos/2.4.0?topic=only-abstract-classes-c) [Link](https://www.geeksforgeeks.org/pure-virtual-functions-and-abstract-classes/) [Link](https://docs.microsoft.com/en-us/cpp/cpp/abstract-classes-cpp?view=msvc-170) [Link](https://en.cppreference.com/w/cpp/language/abstract_class).    

### Difference between C style class and C++ style cast: [Link](https://stackoverflow.com/questions/1609163/what-is-the-difference-between-static-cast-and-c-style-casting)
Some Points:   
C++ style casts are checked by the compiler. C style casts aren't and can fail at runtime.  
C++ style casts can be searched for easily, whereas it's really hard to search for c style casts.   
Another big benefit is that the 4 different C++ style casts express the intent of the programmer more clearly.    

#### Examples:
The static cast performs conversions between compatible types. It is similar to the C-style cast, but is more restrictive. For example, the C-style cast would allow an integer pointer to point to a char.
```
char c = 10;       // 1 byte
int *p = (int*)&c; // 4 bytes
```
Since this results in a 4-byte pointer ( a pointer to 4-byte datatype) pointing to 1 byte of allocated memory, writing to this pointer will either cause a run-time error or will overwrite some adjacent memory.
```
*p = 5; // run-time error: stack corruption
```
In contrast to the C-style cast, the static cast will allow the compiler to check that the pointer and pointee data types are compatible, which allows the programmer to catch this incorrect pointer assignment during compilation.
```
int *q = static_cast<int*>(&c); // compile-time error
```
Dynamic Casting Reference Links: [Link](https://stackoverflow.com/questions/2253168/dynamic-cast-and-static-cast-in-c) [Link](https://docs.microsoft.com/en-us/cpp/cpp/dynamic-cast-operator?view=msvc-170) [Link](https://www.ibm.com/docs/en/zos/2.4.0?topic=expressions-dynamic-cast-operator-c-only)

### Dynamic Cast: 
A cast is an operator that converts data from one type to another type. In C++, dynamic casting is mainly used for safe downcasting at run time. To work on dynamic_cast there must be one virtual function in the base class. A dynamic_cast works only polymorphic base class because it uses this information to decide safe downcasting.

Syntax:
```
dynamic_cast <new_type>(Expression)
```
### Downcasting: 
Casting a base class pointer (or reference) to a derived class pointer (or reference) is known as downcasting. In figure 1  casting from the Base class pointer/reference to the “derived class 1” pointer/reference showing downcasting (Base ->Derived class).


### Upcasting:
Casting a derived class pointer (or reference) to a base class pointer (or reference) is known as upcasting. In figure 1 Casting from Derived class 2 pointer/reference to the “Base class” pointer/reference showing Upcasting (Derived class 2 -> Base Class).

### As we mention above for dynamic casting there must be one Virtual function. Suppose If we do not use the virtual function.In that case, it generates an error message “Source type is not polymorphic”.
```
// C++ program demonstrate if there
// is no virtual function used in
// the Base class
#include <iostream>
using namespace std;
  
// Base class declaration
class Base {
    void print()
    {
        cout << "Base" << endl;
    }
};
  
// Derived Class 1 declaration
class Derived1 : public Base {
    void print()
    {
        cout << "Derived1" << endl;
    }
};
  
// Derived class 2 declaration
class Derived2 : public Base {
    void print()
    {
        cout << "Derived2" << endl;
    }
};
  
// Driver Code
int main()
{
    Derived1 d1;
  
    // Base class pointer hold Derived1
    // class object
    Base* bp = dynamic_cast<Base*>(&d1);
  
    // Dynamic casting
    Derived2* dp2 = dynamic_cast<Derived2*>(bp);
    if (dp2 == nullptr)
        cout << "null" << endl;
  
    return 0;
}
```
Output:
```
not null
```
Virtual functions include run-time type information and there is no virtual function in the base class. So this code generates an error.

Case 1: Let’s take an example of dynamic_cast which demonstrates if the casting is successful, it returns a value of type new_type.

```
// C++ Program demonstrates successful
// dynamic casting and it returns a
// value of type new_type
#include <iostream>
  
using namespace std;
// Base Class declaration
class Base {
    virtual void print()
    {
        cout << "Base" << endl;
    }
};
  
// Derived1 class declaration
class Derived1 : public Base {
    void print()
    {
        cout << "Derived1" << endl;
    }
};
  
// Derived2 class declaration
class Derived2 : public Base {
    void print()
    {
        cout << "Derived2" << endl;
    }
};
  
// Driver Code
int main()
{
    Derived1 d1;
  
    // Base class pointer holding
    // Derived1 Class object
    Base* bp = dynamic_cast<Base*>(&d1);
  
    // Dynamic_casting
    Derived1* dp2 = dynamic_cast<Derived1*>(bp);
    if (dp2 == nullptr)
        cout << "null" << endl;
    else
        cout << "not null" << endl;
  
    return 0;
}
```
Output:
```
not null
```
Explanation: In this program, there is one base class and two derived classes (Derived1, Derived2), here the base class pointer hold derived class 1 object (d1). At the time of dynamic_casting base class, the pointer held the Derived1 object and assigning it to derived class 1, assigned valid dynamic_casting. 

Case 2: Now, If the cast fails and new_type is a pointer type, it returns a null pointer of that type.

```
// C++ Program demonstrate if the cast
// fails and new_type is a pointer type
// it returns a null pointer of that type
#include <iostream>
using namespace std;
  
// Base class declaration
class Base {
    virtual void print()
    {
        cout << "Base" << endl;
    }
};
  
// Derived1 class declaration
class Derived1 : public Base {
    void print()
    {
        cout << "Derived1" << endl;
    }
};
  
// Derived2 class declaration
class Derived2 : public Base {
    void print()
    {
        cout << "Derived2" << endl;
    }
};
  
// Driver Code
int main()
{
    Derived1 d1;
    Base* bp = dynamic_cast<Base*>(&d1);
  
    // Dynamic Casting
    Derived2* dp2 = dynamic_cast<Derived2*>(bp);
    if (dp2 == nullptr)
        cout << "null" << endl;
  
    return 0;
}
```
Output:
```
null
```
Explanation: In this program, at the time of dynamic_casting base class pointer holding the Derived1 object and assigning it to derived class 2, which is not valid dynamic_casting. So, it returns a null pointer of that type in the result.

Case 3:Now take one more case of dynamic_cast, If the cast fails and new_type is a reference type, it throws an exception that matches a handler of type std::bad_cast and gives a warning: dynamic_cast of “Derived d1” to “class  Derived2&” can never succeed. 
```
// C++ Program demonstrate if the cast
// fails and new_type is a reference
// type it throws an exception
#include <exception>
#include <iostream>
using namespace std;
  
// Base class declaration
class Base {
    virtual void print()
    {
        cout << "Base" << endl;
    }
};
  
// Derived1 class
class Derived1 : public Base {
    void print()
    {
        cout << "Derived1" << endl;
    }
};
  
// Derived2 class
class Derived2 : public Base {
    void print()
    {
        cout << "Derived2" << endl;
    }
};
  
// Driver Code
int main()
{
    Derived1 d1;
    Base* bp = dynamic_cast<Base*>(&d1);
  
    // Type casting
    Derived1* dp2 = dynamic_cast<Derived1*>(bp);
    if (dp2 == nullptr)
        cout << "null" << endl;
    else
        cout << "not null" << endl;
  
    // Exception handling block
    try {
        Derived2& r1 = dynamic_cast<Derived2&>(d1);
    }
    catch (std::exception& e) {
        cout << e.what() << endl;
    }
  
    return 0;
}
```
Output:
```
warning: dynamic_cast of ‘Derived1 d1’ to ‘class Derived2&’ can never succeed Derived2& r1 = dynamic_cast<Derived2&>(d1);
```
