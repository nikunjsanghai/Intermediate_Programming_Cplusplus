### Type Inference
Type Inference refers to automatic deduction of the data type of an expression in a programming language. Before C++ 11, each data type needed to be explicitly declared at compile-time, limiting the values of an expression at runtime but after the new version of C++, many keywords are included which allows a programmer to leave the type deduction to the compiler itself. 
With type inference capabilities, we can spend less time having to write out things the compiler already knows. As all the types are deduced in the compiler phase only, the time for compilation increases slightly but it does not affect the run time of the program.

### auto keyword
The auto keyword specifies that the type of the variable that is being declared will be automatically deducted from its initializer. In the case of functions, if their return type is auto then that will be evaluated by return type expression at runtime. Good use of auto is to avoid long initializations when creating iterators for containers.   

Note: The variable declared with auto keyword should be initialized at the time of its declaration only or else there will be a compile-time error. 

```
// C++ program to demonstrate working of auto
// and type inference
 
#include <bits/stdc++.h>
using namespace std;
 
int main()
{
    // auto a; this line will give error
    // because 'a' is not initialized at
    // the time of declaration
    // a=33;
 
    // see here x ,y,ptr are
    // initialised at the time of
    // declaration hence there is
    // no error in them
    auto x = 4;
    auto y = 3.37;
      auto z = 3.37f;
      auto c = 'a';
    auto ptr = &x;
      auto pptr = &ptr; //pointer to a pointer
    cout << typeid(x).name() << endl
         << typeid(y).name() << endl
         << typeid(z).name() << endl
         << typeid(c).name() << endl
         << typeid(ptr).name() << endl
           << typeid(pptr).name() << endl;
 
    return 0;
}
```
Output
```
i
d
f
c
Pi
PPi
```
Note: We have used typeid for getting the type of the variables. 
### Typeid
Typeid is an operator which is used where the dynamic type of an object needs to be known. 

typeid(x).name() returns the data type of x, for example, it returns ‘i’ for integers, ‘d’ for doubles, ‘f’ for float, ‘c’ for char , ‘Pi’ for the pointer to integer, ‘Pd’ for the pointer to double, ‘Pf’ for the pointer to float, ‘Pc’ for the pointer to char,’PPi’ for the pointer to pointer to integer. Single Pointer results in  prefix ‘P’ , double pointer results in ‘PP’ as prefix and so on. But the actual name returned is mostly compiler dependent. 

Good use of auto is to avoid long initializations when creating iterators for containers. 

```
// C++ program to demonstrate that we can use auto to
// save time when creating iterators
 
#include <bits/stdc++.h>
using namespace std;
 
int main()
{
    // Create a set of strings
    set<string> st;
    st.insert({ "geeks", "for", "geeks", "org" });
 
    // 'it' evaluates to iterator to set of string
    // type automatically
    for (auto it = st.begin(); it != st.end(); it++)
        cout << *it << " ";
 
    return 0;
}
```
Output
```
for geeks org 
```
Note: auto becomes int type if even an integer reference is assigned to it. To make it reference type, we use auto &. 
```
Function that returns a ‘reference to int’ type : int& fun() {};
m will default to int type instead of int& type : auto m = fun();
n will be of int& type because of use of extra & with auto keyword : auto& n = fun();
2) decltype Keyword: It inspects the declared type of an entity or the type of an expression. ‘auto’ lets you declare a variable with a particular type whereas decltype lets you extract the type from the variable so decltype is sort of an operator that evaluates the type of passed expression. 
Explanation of the above keywords and their uses is given below: 
```
```
// C++ program to demonstrate use of decltype
#include <bits/stdc++.h>
using namespace std;
 
int fun1() { return 10; }
char fun2() { return 'g'; }
 
int main()
{
    // Data type of x is same as return type of fun1()
    // and type of y is same as return type of fun2()
    decltype(fun1()) x;
    decltype(fun2()) y;
 
    cout << typeid(x).name() << endl;
    cout << typeid(y).name() << endl;
 
    return 0;
}
```
Output
```
i
c
```
Below is one more example to demonstrate the use of decltype,

```
// C++ program to demonstrate use of decltype
#include <bits/stdc++.h>
using namespace std;
 
// Driver Code
int main()
{
    int x = 5;
 
    // j will be of type int : data type of x
    decltype(x) j = x + 5;
 
    cout << typeid(j).name();
 
    return 0;
}
```
Output
```
i
```
Reference Link: [geeksforgeeks](https://www.geeksforgeeks.org/type-inference-in-c-auto-and-decltype/) [Microsoft](https://learn.microsoft.com/en-us/cpp/cpp/auto-cpp?view=msvc-170)
