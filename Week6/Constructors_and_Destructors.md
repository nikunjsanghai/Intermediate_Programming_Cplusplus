### Constructors Revision
Constructor revision is important since Constructors and Destructors are related very closely. 

### What is a Contructor?  
* Constructor is member function that shares the same name as the class.    
* Constructors are used to create, and can initialize, objects of their class type.   
* A Constructor does not return any value.     
* A Constructor cannot be declared  static nor can it be declared as const.  
* Just like other fucntions constructors can be overloaded.    
* A Constructor is automatically called when an object is created.  
* It must be placed in public section of class.  
* If we do not specify a constructor, C++ compiler generates a default constructor for object (expects no parameters and has an empty body).  

#### References for further reading: [Link1](https://www.geeksforgeeks.org/constructors-c/) [Link2](https://www.ibm.com/docs/en/zos/2.4.0?topic=only-constructors-c)

### We know variables have a lifetime. Do objects also have a lifetime? Does heap or stack memory allocation affect it? if so how? 

To answer the questions we need to understand how destructors are allocated and what role they play in the program. 

### What is a Destructor? 
A destructor is a special member function that is called when the lifetime of an object ends. The purpose of the destructor is to free the resources that the object may have acquired during its lifetime.

* Destructor function is automatically invoked when the objects are destroyed.
* It cannot be declared static or const.
* The destructor does not have arguments.
* It has no return type not even void.
* An object of a class with a Destructor cannot become a member of the union.
* A destructor should be declared in the public section of the class.
* The programmer cannot access the address of destructor.

Destructor Implementation in Stack:
```
#include <iostream>
using namespace std;
 
class Z
{
public:
    // constructor
    Z()
    {
        cout<<"Constructor called"<<endl;
    }
 
    // destructor
    ~Z()
    {
        cout<<"Destructor called"<<endl;
    }
};
 
int main()
{
    Z z1;   // Constructor Called
    int a = 1;
    if(a==1)
    {
        Z z2;  // Constructor Called
    }  // Destructor Called for z2
} //  Destructor called for z1
```
Output:
```
Constructor called
Constructor called
Destructor called
Destructor called 
```

Destructor Implementation in Heap Memory: 
```
class String {
private:
    char* s;
    int size;
 
public:
    String(char*); // constructor
    ~String(); // destructor
};
 
String::String(char* c)
{
    size = strlen(c);
    s = new char[size + 1];
    strcpy(s, c);
}
String::~String() { delete[] s; }
```
One more Example:
```
class widget
{
private:
    int* data;
public:
    widget(const int size) { data = new int[size]; } // acquire
    ~widget() { delete[] data; } // release
    void do_something() {}
};

void functionUsingWidget() {
    widget w(1000000);   // lifetime automatically tied to enclosing scope
                        // constructs w, including the w.data member
    w.do_something();

} // automatic destruction and deallocation for w and w.data
```
#### Order of Constructor and Destructor call in Inheritance
![call_order](https://user-images.githubusercontent.com/103468688/199700531-58bd3ceb-7008-4877-885a-d495352d51c0.PNG)


#### Can there be more than one destructor in a class?   

No, there can only one destructor in a class with classname preceded by ~, no parameters and no return type.

#### When do we need to write a user-defined destructor?   

If we do not write our own destructor in class, compiler creates a default destructor for us. The default destructor works fine unless we have dynamically allocated memory or pointer in class. When a class contains a pointer to memory allocated in class, we should write a destructor to release memory before the class instance is destroyed. This must be done to avoid memory leak.  

Reference Links: [geeksforgeeks](https://www.geeksforgeeks.org/is-it-possible-to-call-constructor-and-destructor-explicitly-in-cpp/) [geeksforgeeks](https://www.geeksforgeeks.org/virtual-destructor/?ref=rp) [geeksforgeeks](https://www.geeksforgeeks.org/pure-virtual-destructor-c/?ref=rp) [geeksforgeeks](https://www.geeksforgeeks.org/private-destructor-in-cpp/?ref=rp) [geeksforgeeks](https://www.geeksforgeeks.org/order-constructor-destructor-call-c/?ref=rp)

#### References for further reading:[Link1](https://www.geeksforgeeks.org/destructors-c/) [Link2](https://docs.microsoft.com/en-us/cpp/cpp/destructors-cpp?view=msvc-170) [Link3](https://www.ibm.com/docs/en/i/7.1?topic=only-destructors-c) [Link4](https://en.cppreference.com/w/cpp/language/destructor)
### Object Lifetime 
Unlike managed languages, C++ doesn't have automatic garbage collection. 
That's an internal process that releases heap memory and other resources as a program runs. 
A C++ program is responsible for returning all acquired resources to the operating system. 
Failure to release an unused resource is called a leak. 
Leaked resources are unavailable to other programs until the process exits. 
Memory leaks in particular are a common cause of bugs in C-style programming.

Modern C++ avoids using heap memory as much as possible by declaring objects on the stack. 
When a resource is too large for the stack, then it should be owned by an object. 
As the object gets initialized, it acquires the resource it owns. 
The object is then responsible for releasing the resource in its destructor. 
The owning object itself is declared on the stack. 
The principle that objects own resources is also known as "resource acquisition is initialization," or RAII.

When a resource-owning stack object goes out of scope, its destructor is automatically invoked. 
In this way, garbage collection in C++ is closely related to object lifetime, and is deterministic. 
A resource is always released at a known point in the program, which you can control. 
Only deterministic destructors like those in C++ can handle memory and non-memory resources equally.

### References for further reading: [Link1](https://www.geeksforgeeks.org/life-cycle-of-objects-in-c-with-example/) [Link2](https://docs.microsoft.com/en-us/cpp/cpp/object-lifetime-and-resource-management-modern-cpp?view=msvc-170) [Link3](https://en.cppreference.com/w/cpp/language/lifetime)



