### Undefined Behaviour 
 There are no restrictions on the behavior of the program. 
 Examples of undefined behavior are data races, memory accesses outside of array bounds, signed integer overflow, null pointer dereference, more than one modifications 
 of the same scalar in an expression without any intermediate sequence point (until C++11)that is unsequenced (since C++11), 
 access to an object through a pointer of a different type, etc. Compilers are not required to diagnose undefined behavior 
 (although many simple situations are diagnosed), and the compiled program is not required to do anything meaningful.                                      
 
 Same definition in easier words: sometimes we see absurd results instead of expected output. So, in C/C++ programming, undefined behavior means when the program fails to compile, or it may execute incorrectly, either crashes or generates incorrect results, or when it may fortuitously do exactly what the programmer intended. Whenever the result of an executing program is unpredictable, it is said to have undefined behavior.                                    
 
 Examples:           
 - Division By Zero
 ```
 int val = 5;
return val / 0; // undefined behavior
```
- Memory accesses outside of array bounds
```
int arr[4] = {0, 1, 2, 3};
return arr[5];  // undefined behavior for indexing out of bounds
```
- Signed integer overflow
```
int x = INT_MAX;
x= x + 1;     // undefined behavior
std::cout<<x;
```
- Null pointer dereference 
```
int foo(int* p) {
    int x = *p;
    if(!p) return x; // Either UB above or this branch is never taken
    else return 0;
}
int bar() {
    int* p = nullptr;
    return *p;        // Unconditional UB
}
```
The output of all of the above programs is unpredictable (or undefined). The compilers (implementing the C/C++ standard) are free to do anything as these are undefined by the C and C++ standards.                                                
 Reference Links: [cppref](https://en.cppreference.com/w/cpp/language/ub) [geeksforgeeks](https://www.geeksforgeeks.org/undefined-behavior-c-cpp/) [stackoverflow](https://stackoverflow.com/questions/367633/what-are-all-the-common-undefined-behaviours-that-a-c-programmer-should-know-a) 
 
 
