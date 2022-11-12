### L and R values 
For PIC 10A you guys mostly read basics of C++ Programming like functions, variables, types of variables and things such as function overloading.

**lvalue:** L value is any expression that refers to an object. An object from now is a region of storage.

**Why does the distinction exists?**     
- To save storage , if we had to store r values the code will be less efficient. 

In any assignment statement “lvalue” must have the capability to store the data. lvalue cannot be a function, expression (like a+b) or a constant (like 3 , 4 , etc.)  “l-value” refers to memory location which identifies an object. l-value may appear as either left hand or right hand side of an assignment operator(=). l-value often represents as identifier. Expressions referring to modifiable locations are called “modifiable l-values“. A modifiable l-value cannot have an array type, an incomplete type, or a type with the const attribute. For structures and unions to be modifiable lvalues, they must not have any members with the const attribute. The name of the identifier denotes a storage location, while the value of the variable is the value stored at that location. An identifier is a modifiable lvalue if it refers to a memory location and if its type is arithmetic, structure, union or pointer. For example, if ptr is a pointer to a storage region, then \*ptr is a modifiable l-value that designates the storage region to which ptr points. In C, the concept was renamed as “locator value”, and referred to expressions that locate (designate) objects.

**Example:**
```
// declare 'a' an object of type 'int'
int a;

// a is an expression referring to an
// 'int' object as l-value
a = 1;

int b = a; // Ok, as l-value can appear on right

// Switch the operand around '=' operator
9 = a;

// Compilation error:
// as assignment is trying to change the
// value of assignment operator
```

**r-value** simply means, an object that has no identifiable location in memory (i.e. having an address).                           
                                        
Anything that is capable of returning a constant expression or value.                           
Expression like a+b will return some constant.  

r-value” refers to data value that is stored at some address in memory. A r-value is an expression, that can’t have a value assigned to it, which means r-value can appear on right but not on left hand side of an assignment operator(=).
```
// declare 'a', 'b' an object of type 'int'
int a = 1, b;

a + 1 = b; // Error, left expression is
  // is not variable(a + 1)

// declare pointer variable 'p', and 'q'
int *p, *q; // *p, *q are lvalue

*p = 1; // valid l-value assignment

// below is invalid - "p + 2" is not an l-value
// p + 2 = 18;

q = p + 5; // valid - "p + 5" is an r-value

// Below is valid - dereferencing pointer
// expression gives an l-value
*(p + 2) = 18;

p = &b;

int arr[20]; // arr[12] is an lvalue; equivalent
   // to *(arr+12)
   // Note: arr itself is also an lvalue

struct S { int m; };

struct S obj; // obj and obj.m are lvalues

// ptr-> is an lvalue; equivalent to (*ptr).m
// Note: ptr and *ptr are also lvalues
struct S* ptr = &obj;
```
The unary & (address-of) operator requires an l-value as its operand. That is, &n is a valid expression only if n is an l-value. Thus, an expression such as &12 is an error. Again, 12 does not refer to an object, so it’s not addressable. For instance, 
```
// declare 'a' as int variable and
// 'p' as pointer variable
int a, *p;

p = &a; // ok, assignment of address
  // at l-value

&a = p; // error: &a is an r-value

int x, y;

( x < y ? y : x) = 0; // It's valid because the ternary
    // expression preserves the "lvalue-ness"
    // of both its possible return values
```

**DO NOT read further if your grasp of l and r values in C++ is not clear. It will only get more and more confusing.**

### \[ADVANCED]  value types in C++                

Each C++ expression (an operator with its operands, a literal, a variable name, etc.) is characterized by two independent properties: a type and a value category. Each expression has some non-reference type, and each expression belongs to exactly one of the three primary value categories: pr value, x value, and l value.


In C++03, an expression is either an r value or an l value.                                

In C++11, an expression can be an:                                       

r value                
l value               
xv alue              
gl value                
pr value      

**An lvalue has identity** What does it mean for a value to have identity? If you have (or you can take) the memory address of a value, and use it safely, then the value has identity. That way, you can do more than compare the contents of values—you can compare or distinguish them by identity.                     

An lvalue has identity. It's now a matter of only historical interest that the "l" in "lvalue" is an abbreviation of "left" (as in, the left-hand-side of an assignment). In C++, an lvalue can appear on the left or on the right of an assignment. The "l" in "lvalue", then, doesn't actually help you to comprehend nor define what they are. You need only to understand that what we call an lvalue is a value that has identity.                       

Examples of expressions that are lvalues include: a named variable or constant; or a function that returns a reference. Examples of expressions that are not lvalues include: a temporary; or a function that returns by value.  





















Good Reference Links for understanding R & L values : 
[Link](https://en.cppreference.com/w/cpp/language/value_category) [Link](https://stackoverflow.com/questions/3601602/what-are-rvalues-lvalues-xvalues-glvalues-and-prvalues) [Link](https://www.geeksforgeeks.org/understanding-lvalues-prvalues-and-xvalues-in-ccwith-examples/) [link](https://docs.microsoft.com/en-us/cpp/cpp/lvalues-and-rvalues-visual-cpp?view=msvc-170) [link](https://docs.microsoft.com/en-us/windows/uwp/cpp-and-winrt-apis/cpp-value-categories) [link](https://www.ibm.com/docs/en/i/7.4?topic=operators-lvalues-rvalues) 
