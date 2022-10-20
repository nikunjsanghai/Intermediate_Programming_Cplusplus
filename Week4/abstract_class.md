### Abstract Class 
An abstract class is a class that is designed to be specifically used as a base class. An abstract class contains at least one pure virtual function.
You declare a pure virtual function by using a pure specifier (= 0) in the declaration of a virtual member function in the class declaration.                      

The following is an example of an abstract class:               
```
class AB {
public:
  virtual void f() = 0;
};
```
#### Pointers and References to an Abstract Class
You cannot use an abstract class as a parameter type, a function return type, or the type of an explicit conversion, nor can you declare an object of an abstract class.
You can, however, declare pointers and references to an abstract class. The following example demonstrates this:                               
```
truct A {
  virtual void f() = 0;
};

struct B : A {
  virtual void f() { }
};

// Error:
// Class A is an abstract class
// A g();

// Error:
// Class A is an abstract class
// void h(A);
A& i(A&);
```
**Note:Virtual member functions are inherited. A class derived from an abstract base class will also be abstract unless you override each pure virtual function in the derived class.**
Reference: [IBM](https://www.ibm.com/docs/en/zos/2.4.0?topic=only-abstract-classes-c) 

