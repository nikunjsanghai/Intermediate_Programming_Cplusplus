### Overload Resolution
With non-overloaded functions (functions with unique names), there is only one function that can potentially match a function call. That function either matches (or can be made to match after type conversions are applied), or it doesn’t (and a compile error results). With overloaded functions, there can be many functions that can potentially match a function call. Since a function call can only resolve to one of them, the compiler has to determine which overloaded function is the best match. The process of matching function calls to a specific overloaded function is called overload resolution.                           

Example 1:
```
#include <iostream>

void print(int x)
{
     std::cout << x << '\n';
}

void print(double d)
{
     std::cout << d << '\n';
}

int main()
{
     print(5); // 5 is an int, so this matches print(int)
     print(6.7); // 6.7 is a double, so this matches print(double)

     return 0;
}
```
Step 1:The compiler tries to find an exact match. This happens in two phases. First, the compiler will see if there is an overloaded function where the type of the arguments in the function call exactly matches the type of the parameters in the overloaded functions
```
void print(int)
{
}

void print(double)
{
}

int main()
{
    print(0); // exact match with print(int)
    print(3.4); // exact match with print(double)

    return 0;
}
```
Step 2:If no exact match is found, the compiler tries to find a match by applying numeric promotion to the argument. If, after numeric promotion, a match is found, the function call is resolved.
```
void print(int)
{
}

void print(double)
{
}

int main()
{
    print('a'); // promoted to match print(int)
    print(true); // promoted to match print(int)
    print(4.5f); // promoted to match print(double)

    return 0;
}
```
Step 3:If no match is found via numeric promotion, the compiler tries to find a match by applying numeric conversions to the arguments.
```
#include <string> // for std::string

void print(double)
{
}

void print(std::string)
{
}

int main()
{
    print('a'); // 'a' converted to match print(double)

    return 0;
}
```
### Functions with Multiple Arguments 
f there are multiple arguments, the compiler applies the matching rules to each argument in turn. The function chosen is the one for which each argument matches at least as well as all the other functions, with at least one argument matching better than all the other functions. In other words, the function chosen must provide a better match than all the other candidate functions for at least one parameter, and no worse for all of the other parameters.

In the case that such a function is found, it is clearly and unambiguously the best choice. If no such function can be found, the call will be considered ambiguous (or a non-match).
Example:
```
void moo(int a, int b, double c){ cout << "1" << endl;}//function 1
void moo(double a, double b, int c){ cout << "2" << endl;}//function 2

int main()
{
moo(6.3,0, 1);
return 0;
}
```
This example does not work, but the example in Prof Midterm problem works. We will use the same rule mentioned above. For function 1 and 2, there is an exact match for 6.3 for function 2, but function 1 needs to apply a conversion(Promotion), for the second argument there is an exact match for function 1, but function 2 needs a conversion. Finally for the third argument function 2 again is the better match but since function 2, needed a conversion for argument 2. It never held the rule that we discussed above **It needs to provide a better match than all other candidates in at least one parameter, and no worse for all of the other parameters** thus this example is an ambiguous function call and will result in an error. 
```
//functions 
void moo(int);
void moo(int, double);
void moo(const std::string);
void moo(int, int, double);//function 4 
void moo(int, double, double); //function 5 
//function call 
moo(11 , 11) ;
moo( " hey " ) ;
moo(7 , 8 , 9) ;//example 3 
moo( 6 . 3 , 0 , 1) ;//example 4 
//moo(6.3,8.8,1);//example 5 
```
For example 3, we have function 4 providing a better match in argument 2 and no worse than function 5 for the rest of the parameters;So function 4 will be called. For example 4 this is the exact same case for the 2nd argument we have a better match in function 4 with no worse in all other arguments when we compare func 4 and fun 5, thus fun 4 is called again.                             

Example 5  both func 4 and func 5 need type-conversion for the first argument,func 5 is better for the second argument(exact match) and for the third argument both functions need type conversion, thus the rule is still consistent. We will call function 5.  


Overload resolution: [microsoft](https://learn.microsoft.com/en-us/cpp/cpp/function-overloading?view=msvc-170) [IBM](https://www.ibm.com/docs/en/i/7.3?topic=conversions-function-argument)
[microsoft](https://learn.microsoft.com/en-us/cpp/cpp/type-conversions-and-type-safety-modern-cpp?view=msvc-170)[cppref](https://en.cppreference.com/w/cpp/language/overload_resolution)
[stackoveflow](https://stackoverflow.com/questions/29961100/c-function-match-priority) [geeksforgeeks](https://www.geeksforgeeks.org/calling-of-overloaded-subroutines-and-ways-for-finding-accurate-match-in-c/)

If you can read only one article , please read this one about overload resolution: [learncpp](https://www.learncpp.com/cpp-tutorial/function-overload-resolution-and-ambiguous-matches/)
