### Undefined Behaviour 
 There are no restrictions on the behavior of the program. 
 Examples of undefined behavior are data races, memory accesses outside of array bounds, signed integer overflow, null pointer dereference, more than one modifications 
 of the same scalar in an expression without any intermediate sequence point (until C++11)that is unsequenced (since C++11), 
 access to an object through a pointer of a different type, etc. Compilers are not required to diagnose undefined behavior 
 (although many simple situations are diagnosed), and the compiled program is not required to do anything meaningful.  
 
 
 
 
 Reference Links: [cppref](https://en.cppreference.com/w/cpp/language/ub)
 
 
