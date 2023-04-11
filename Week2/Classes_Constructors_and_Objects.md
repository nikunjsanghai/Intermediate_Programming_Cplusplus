### Classes
A class is a mechanism for creating user-defined data types. It is similar to the C language structure data type. In C, a structure is composed of a set of data members. In C++, a class type is like a C structure, except that a class is composed of a set of data members and a set of operations that can be performed on the class.                    

In C++, a class type can be declared with the keywords union, struct, or class. A union object can hold any one of a set of named members. Structure and class objects hold a complete set of members. Each class type represents a unique set of class members including data members, member functions, and other type names. The default access for members depends on the class key:
- The members of a class declared with the keyword class are private by default. A class is inherited privately by default.
- The members of a class declared with the keyword struct are public by default. A structure is inherited publicly by default.
- The members of a union (declared with the keyword union) are public by default. A union cannot be used as a base class in derivation.
Once you create a class type, you can declare one or more objects of that class type. For example:
```
class X
{
   /* define class members here */
};
int main()
{
   X xobject1;       // create an object of class type X
   X xobject2;       // create another object of class type X
}
```
### Relation between Classes and Objects
A C++ class is like a blueprint for an object. For Example: Consider the Class of Cars. There may be many cars with different names and brand but all of them will share some common properties like all of them will have 4 wheels, Speed Limit, Mileage range etc. So here, Car is the class and wheels, speed limits, mileage are their properties.                             

### Objects 
An Object is an instance of a Class. When a class is defined, no memory is allocated but when it is instantiated (i.e. an object is created) memory is allocated.The data members and member functions of class can be accessed using the dot(‘.’) operator with the object. For example if the name of object is obj and you want to access the member function with the name printName() then you will have to write obj.printName()

### Constructors
Constructors are special class members which are called by the compiler every time an object of that class is instantiated. Constructors have the same name as the class and may be defined inside or outside the class definition. 

Classes: [IBM](https://www.ibm.com/docs/en/i/7.4?topic=reference-classes-c-only)  [Microsoft](https://learn.microsoft.com/en-us/cpp/cpp/class-cpp?view=msvc-170)            
Classes and Objects: [geeksforgeeks](https://www.geeksforgeeks.org/c-classes-and-objects/)                    
Constructors: [geeksforgeeks](https://www.geeksforgeeks.org/constructors-c/)                     
Default Constructors: [geeksforgeeks](https://www.geeksforgeeks.org/constructors-c/)                
Constructor Overloading: [geeksforgeeks](https://www.geeksforgeeks.org/constructor-overloading-c/) [Stackoverflow](https://stackoverflow.com/questions/7330296/constructor-overloading-in-c)            

