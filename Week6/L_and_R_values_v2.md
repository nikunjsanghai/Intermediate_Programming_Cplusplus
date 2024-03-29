### L value

```
int main()
{
    int x{};

    x = 5; // valid: we can assign 5 to x
    5 = x; // error: can not assign value of x to literal value 5

    return 0;
}
```
One of these assignment statements is valid (assigning value 5 to variable x) and one is not (what would it mean to assign the value of x to the literal value 5?).
So how does the compiler know which expressions can legally appear on either side of an assignment statement?                        

The answer lies in the second property of expressions: the value category.
The value category of an expression (or subexpression) indicates whether an expression resolves to a value, a function, or an object of some kind.                  

Prior to C++11, there were only two possible value categories: lvalue and rvalue.                                  

In C++11, three additional value categories (glvalue, prvalue, and xvalue) were added to support a new feature called move semantics.                         

### L value and R value expressions 
An lvalue (pronounced “ell-value”, short for “left value” or “locator value”, and sometimes written as “l-value”)
is an expression that evaluates to an identifiable object or function (or bit-field).                                     

The term “identity” is used by the C++ standard, but is not well-defined.
An entity (such as an object or function) that has an identity can be differentiated from other similar entities (typically by comparing the addresses of the entity).                

Entities with identities can be accessed via an identifier, reference, or pointer, and typically have a lifetime longer than a single expression or statement.                       

```
#include <iostream>

int main()
{
    int x { 5 };
    int y { x }; // x is an lvalue expression

    return 0;
}
```
In the above program, the expression x is an lvalue expression as it evaluates to variable x (which has an identifier).

Since the introduction of constants into the language, lvalues come in two subtypes: a modifiable lvalue is an lvalue whose value can be modified.
A non-modifiable lvalue is an lvalue whose value can’t be modified (because the lvalue is const or constexpr)                                  
```
#include <iostream>

int main()
{
    int x{};
    const double d{};

    int y { x }; // x is a modifiable lvalue expression
    const double e { d }; // d is a non-modifiable lvalue expression

    return 0;
}
```
An rvalue (pronounced “arr-value”, short for “right value”, and sometimes written as r-value) is an expression that is not an l-value.
Commonly seen rvalues include literals (except C-style string literals, which are lvalues) and the return value of functions and operators.                       
```
#include <iostream>

int return5()
{
    return 5;
}

int main()
{
    int x{ 5 }; // 5 is an rvalue expression
    const double d{ 1.2 }; // 1.2 is an rvalue expression

    int y { x }; // x is a modifiable lvalue expression
    const double e { d }; // d is a non-modifiable lvalue expression
    int z { return5() }; // return5() is an rvalue expression (since the result is returned by value)

    int w { x + 1 }; // x + 1 is an rvalue expression
    int q { static_cast<int>(d) }; // the result of static casting d to an int is an rvalue expression

    return 0;
}
```
You may be wondering why return5(), x + 1, and static_cast<int>(d) are rvalues: the answer is because these expressions produce temporary values that are not 
  identifiable objects.

Now we can answer the question about why x = 5 is valid but 5 = x is not: an assignment operation requires the left operand of the assignment to be a modifiable lvalue expression,
  and the right operand to be an rvalue expression. The latter assignment (5 = x) fails because the left operand expression 5 isn’t an lvalue.
Rvalues aren’t identifiable (meaning they have to be used immediately), and only exist within the scope of the expression in which they are used.                
 ```
 int main()
{
    int x{};

    // Assignment requires the left operand to be a modifiable lvalue expression and the right operand to be an rvalue expression
    x = 5; // valid: x is a modifiable lvalue expression and 5 is an rvalue expression
    5 = x; // error: 5 is an rvalue expression and x is a modifiable lvalue expression

    return 0;
}
 ```
### L-value to R-value conversion
We said above that the assignment operator expects the right operand to be an rvalue expression, so why does code like this work?
```
int main()
{
    int x{ 1 };
    int y{ 2 };

    x = y; // y is a modifiable lvalue, not an rvalue, but this is legal

    return 0;
}
```
The answer is because lvalues will implicitly convert to rvalues, so an lvalue can be used wherever an rvalue is required.
```
int main()
{
    int x { 2 };

    x = x + 1;

    return 0;
}
```
In this statement, the variable x is being used in two different contexts. On the left side of the assignment operator, x is an lvalue expression that evaluates to variable x. On the right side of the assignment operator, x + 1 is an rvalue expression that evaluates to the value 3.                

Now that we’ve covered lvalues, we can get to our first compound type: the lvalue reference.                              
#### As a rule of thumb to identify lvalue and rvalue expressions:

- lvalues expressions are those that evaluate to variables or other identifiable objects that persist beyond the end of the expression.
- rvalues expressions are those that evaluate to literals or the returned value of functions and operators that are discarded at the end of the expression.  

### L value Reference: [learncpp](https://www.learncpp.com/cpp-tutorial/lvalue-references/)
### L value Reference to const: [learncpp](https://www.learncpp.com/cpp-tutorial/lvalue-references-to-const/)
### R value References: [learncpp](https://www.learncpp.com/cpp-tutorial/rvalue-references/)
    
Reference Link:[learncpp](https://www.learncpp.com/cpp-tutorial/value-categories-lvalues-and-rvalues/) [stackoverflow](https://stackoverflow.com/questions/3601602/what-are-rvalues-lvalues-xvalues-glvalues-and-prvalues) [cppref](https://en.cppreference.com/w/cpp/language/value_category) [stackoverflow](https://stackoverflow.com/questions/9406121/what-exactly-is-an-r-value-in-c) [microsoft_docs](https://learn.microsoft.com/en-us/cpp/cpp/lvalues-and-rvalues-visual-cpp?view=msvc-170) [git](https://devtut.github.io/cpp/value-categories.html#value-category-meanings) [stackoverflow](https://stackoverflow.com/questions/42441791/lifetime-extension-prvalues-and-xvalues) [stackoverflow](https://stackoverflow.com/questions/20717180/in-c-what-categories-lvalue-rvalue-xvalue-etc-can-expressions-that-prod)
