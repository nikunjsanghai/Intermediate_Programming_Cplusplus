### Static 
Static data members are class members that are declared using static keywords. A static member has certain special characteristics. These are:          

- Only one copy of that member is created for the entire class and is shared by all the objects of that class, no matter how many objects are created.
- It is initialized before any object of this class is being created, even before main starts.
- It is visible only within the class, but its lifetime is the entire program.  

Example:                  
```
#include <iostream>
using namespace std;
 
class A
{
public:
    A() { cout << "A's Constructor Called " << endl;  }
};
 
class B
{
    static A a;
public:
    B() { cout << "B's Constructor Called " << endl; }
};
 
int main()
{
    B b;
    return 0;
}
```
Output:
```
B's Constructor Called
```
The above program calls only B’s constructor, it doesn’t call A’s constructor. The reason for this is simple, static members are only declared in a class declaration, not defined. They must be explicitly defined outside the class using the scope resolution operator. If we try to access static member ‘a’ without an explicit definition of it, we will get a compilation error. For example, the following program fails in the compilation.                  
```
#include <iostream>
using namespace std;
 
class A
{
    int x;
public:
    A() { cout << "A's constructor called " << endl;  }
};
 
class B
{
    static A a;
public:
    B() { cout << "B's constructor called " << endl; }
    static A getA() { return a; }
};
 
int main()
{
    B b;
    A a = b.getA();
    return 0;
}
```
Output:
```
Compiler Error: undefined reference to `B::a'
```
If we add the definition of a the program will work fine and will call A’s constructor. See the following program.
```
#include <iostream>
using namespace std;
 
class A
{
    int x;
public:
    A() { cout << "A's constructor called " << endl;  }
};
 
class B
{
    static A a;
public:
    B() { cout << "B's constructor called " << endl; }
    static A getA() { return a; }
};
 
A B::a;  // definition of a
 
int main()
{
    B b1, b2, b3;
    A a = b1.getA();
 
    return 0;
}
```
Output:
```
A's constructor called
B's constructor called
B's constructor called
B's constructor called
```
Note that the above program calls B’s constructor 3 times for 3 objects (b1, b2, and b3), but calls A’s constructor only once. The reason is, static members are shared among all objects. That is why they are also known as class members or class fields. Also, static members can be accessed without any object, see the below program where static member ‘a’ is accessed without any object.
