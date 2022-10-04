Pointers and References in C++: [Link](https://github.com/TejasViswa/PIC10B_Disc1B_Disc2B/blob/main/Week_1/Pointers_and_memory.md)        
Pointers and const:[Stackoverflow](https://stackoverflow.com/questions/1143262/what-is-the-difference-between-const-int-const-int-const-and-int-const)  [geekforgeeks](https://www.geeksforgeeks.org/difference-between-const-int-const-int-const-and-int-const/) [geekforgeeks](https://www.geeksforgeeks.org/difference-between-constant-pointer-pointers-to-constant-and-constant-pointers-to-constants/) [learncpp](https://www.learncpp.com/cpp-tutorial/pointers-and-const/)

### Function Overloading with respect to const.
C++ allows member methods to be overloaded on the basis of const type. Overloading on the basis of const type can be useful when a function returns a reference or pointer.
We can make one function const, that returns a const reference or const pointer, and another non-const function, that returns a non-const reference or pointer.

**Example**
```
fun() 
fun() const 
```
The two methods ‘void fun() const’ and ‘void fun()’ have the same signature except that one is const and the other is not.
Also, if we take a closer look at the output, we observe that ‘const void fun()’ is called on the const object, and ‘void fun()’ is called on the non-const object.            

Program 1:
```
// PROGRAM 1 (Fails in compilation)
#include<iostream>
using namespace std;
 
void fun(const int i)
{
    cout << "fun(const int) called ";
}
void fun(int i)
{
    cout << "fun(int ) called " ;
}
int main()
{
    const int i = 10;
    fun(i);
    return 0;
}
```
Output:
```
Compile Error
```
Why does this code fail ?                 

Program 2:
```
// PROGRAM 2 (Compiles and runs fine)
#include<iostream>
using namespace std;
 
void fun(char *a)
{
cout << "non-const fun() " << a;
}
 
void fun(const char *a)
{
cout << "const fun() " << a;
}
 
int main()
{
const char *ptr = "GeeksforGeeks";
fun(ptr);
return 0;
}
```
C++ allows functions to be overloaded on the basis of the const-ness of parameters only if the const parameter is a reference or a pointer. 
This rule actually makes sense.           
- In program 1, the parameter ‘i’ is passed by value,so ‘i’ in fun() is a copy of ‘i’ in main(). Hence fun() irrespective of const or non-const cannot modify ‘i’ of main().
Therefore, it doesn’t matter whether ‘i’ is received as a const parameter or a normal parameter.This redudancy causes the error.                
- When we pass by reference or pointer,we can modify the value referred or pointed, so we can have two versions of a function,
one which can modify the referred or pointed value, other which can not. Compiler is able to differentiate between the two and overload them.
