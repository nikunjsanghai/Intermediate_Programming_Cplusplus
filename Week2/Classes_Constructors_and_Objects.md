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


Classes: [IBM](https://www.ibm.com/docs/en/i/7.4?topic=reference-classes-c-only)  [Microsoft](https://learn.microsoft.com/en-us/cpp/cpp/class-cpp?view=msvc-170)            
Classes and Objects: [geeksforgeeks](https://www.geeksforgeeks.org/c-classes-and-objects/)                    
Constructors: [geeksforgeeks](https://www.geeksforgeeks.org/constructors-c/)                     
Default Constructors: [geeksforgeeks](https://www.geeksforgeeks.org/constructors-c/)                
Constructor Overloading: [geeksforgeeks](https://www.geeksforgeeks.org/constructor-overloading-c/) [Stackoverflow](https://stackoverflow.com/questions/7330296/constructor-overloading-in-c)            

