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
struct A {
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
A& func(A&); //function declaration or function signature 
// func is a free function here 

int main() {

// Error:
// Class A is an abstract class
//   A a;

   A* pa;
   B b;

// Error:
// Class A is an abstract class
//   static_cast<A>(b);
}
```
**Note:Virtual member functions are inherited. A class derived from an abstract base class will also be abstract unless you override each pure virtual function in the derived class.**   
**Note:A reference to an abstract class is just like a pointer to an abstract class: it needs to reference an object of some non-abstract subclass of the abstract class. You can use a reference like that to call virtual methods on the referenced class using the . syntax**

Reference: [IBM](https://www.ibm.com/docs/en/zos/2.4.0?topic=only-abstract-classes-c) [stackoverflow](https://stackoverflow.com/questions/5019046/reference-to-abstract-class)

