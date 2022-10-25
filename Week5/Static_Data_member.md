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

#### Static Variables in a function
Static variables in a Function: When a variable is declared as static, space for it gets allocated for the lifetime of the program. Even if the function is called multiple times, space for the static variable is allocated only once and the value of variable in the previous call gets carried through the next function call. This is useful for implementing coroutines in C/C++ or any other application where previous state of function needs to be stored.                 
```
// C++ program to demonstrate 
// the use of static Static 
// variables in a Function
#include <iostream>
#include <string>
using namespace std;
  
void demo()
{ 
    // static variable
    static int count = 0;
    cout << count << " ";
      
    // value is updated and
    // will be carried to next
    // function calls
    count++;
}
  
int main()
{
    for (int i=0; i<5; i++)    
        demo();
    return 0;
}
```
Ouput:
```
0 1 2 3 4 
```
#### Static Variables in a Class
As the variables declared as static are initialized only once as they are allocated space in separate static storage so, the static variables in a class are shared by the objects. There can not be multiple copies of same static variables for different objects. Also because of this reason static variables can not be initialized using constructors.
```
// C++ program to demonstrate static
// variables inside a class
  
#include<iostream>
using namespace std;
  
class GfG
{
   public:
     static int i;
      
     GfG()
     {
        // Do nothing
     };
};
  
int main()
{
  GfG obj1;
  GfG obj2;
  obj1.i =2;
  obj2.i = 3;
    
  // prints value of i
  cout << obj1.i<<" "<<obj2.i;   
}
```
Output:
```
Error
```
You can see in the above program that we have tried to create multiple copies of the static variable i for multiple objects. But this didn’t happen. So, a static variable inside a class should be initialized explicitly by the user using the class name and scope resolution operator outside the class as shown below:
```
// C++ program to demonstrate static
// variables inside a class

#include<iostream>
using namespace std;

class GfG
{
public:
	static int i;
	
	GfG()
	{
		// Do nothing
	};
};

int GfG::i = 1;

int main()
{
	GfG obj;
	// prints value of i
	cout << obj.i;
}
```
Output:
```
1
```

References: [geeksforgeeks](https://www.geeksforgeeks.org/static-keyword-cpp/) [geeksforgeeks](https://www.geeksforgeeks.org/static-data-members-c/)
