### Discussion 9
- Student Questions: L and R values/Copy and move constructors on HW4
- Q1. Parameterized List and variable usage
- Q2. Why is Polygon(4,x,y) is an r-value? 
- Q3. Why is Parameterized Constructor being called instead of Move Constructor? 
- [operator overloading](https://github.com/nikunjsanghai/Intermediate_Programming_Cplusplus/blob/main/Week3/operator_overloading.md) 
- [File Streaming](https://github.com/nikunjsanghai/Intermediate_Programming_Cplusplus/blob/main/Week1/file_streaming.md) 
- [String Stream](https://github.com/nikunjsanghai/Intermediate_Programming_Cplusplus/blob/main/Week5/string_stream.md)
- [Inheritance](https://github.com/nikunjsanghai/Intermediate_Programming_Cplusplus/blob/main/Week4/Inheritance.md)
- [Inheritance:Virtual and Final Keyword](https://github.com/nikunjsanghai/Intermediate_Programming_Cplusplus/blob/main/Week4/Virtual_and_final_keyword.md)
- [Inheritance:Constructor calling based derived](https://github.com/nikunjsanghai/Intermediate_Programming_Cplusplus/blob/main/Week4/constructor_calling_base_derived.md)
- [Relationship between ostream and ofstream](https://cplusplus.com/reference/ios/)
### Discussion 10
- [Polymorphism](https://github.com/nikunjsanghai/Intermediate_Programming_Cplusplus/blob/main/Week5/Polymorphism.md)
- [Polymorphism: Object Slicing](https://github.com/nikunjsanghai/Intermediate_Programming_Cplusplus/blob/main/Week5/Object_Slicing.md)
- [Abstract Class](https://github.com/nikunjsanghai/Intermediate_Programming_Cplusplus/blob/main/Week4/abstract_class.md)
- [Pure Virtual Function](https://github.com/nikunjsanghai/Intermediate_Programming_Cplusplus/blob/main/Week4/pure_virtual_functions.md) 
- [Pointers of based class pointing to derived class](https://github.com/nikunjsanghai/Intermediate_Programming_Cplusplus/blob/main/Week5/Pointer_of_base_class_pointing_to_derived_class.md)

### Talking Points 
- derived class objects can use data members or member functions of the base class and not the other way around. 
- virtual keyword/ runtime polymorphism is only possible with respect to a pointer or a reference type
- Look at the definition of pre and post increment operators to determine the difference as to which one will be faster in C++. 
- If you have << operator with arguments as non-const reference type they will not be able to access r-value types as a argument. 
- We can have a derived class object assigned to a base class pointer and not the other way around. 
- If the derived class object is assigned to a base class without pointer type then the object is sliced and becomes a base class object. 
- Difference between function overloading and function overriding is that overloading is done at compile time whereas overriding happens at run-time. 
- You can call base class functions using the scope resolution operator in C++. Refer to the class demo for more information. 
- Some discussion over the HW5 Frac class will be done. 


HW5 is due.
