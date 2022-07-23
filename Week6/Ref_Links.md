 
Each C++ expression (an operator with its operands, a literal, a variable name, etc.) is characterized by two independent properties: a type and a value category. Each expression has some non-reference type, and each expression belongs to exactly one of the three primary value categories: prvalue, xvalue, and lvalue.


In C++03, an expression is either an rvalue or an lvalue.                                

In C++11, an expression can be an:                                       

rvalue                
lvalue               
xvalue              
glvalue                
prvalue               





















Good Reference Links for understanding R & L values : 
[Link](https://en.cppreference.com/w/cpp/language/value_category) [Link](https://stackoverflow.com/questions/3601602/what-are-rvalues-lvalues-xvalues-glvalues-and-prvalues) [Link](https://www.geeksforgeeks.org/understanding-lvalues-prvalues-and-xvalues-in-ccwith-examples/) [link](https://docs.microsoft.com/en-us/cpp/cpp/lvalues-and-rvalues-visual-cpp?view=msvc-170) [link](https://docs.microsoft.com/en-us/windows/uwp/cpp-and-winrt-apis/cpp-value-categories) [link](https://www.ibm.com/docs/en/i/7.4?topic=operators-lvalues-rvalues) 
