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
