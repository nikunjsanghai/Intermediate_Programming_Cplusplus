# Header Files 
There is a need for a place to store function declarations not definitions but declarations 
Function declaration:
```
void vec(int a, int y);
```
Function definition:
```
void vec(int a,int y)
{
cout<<a<<y<<endl;
}
```
Header files with a .h extension are in the C standard library while those without the .h extension within <> are in the C++ standard library. 
Header Files with a .h extension within "" normally indicate that the header file is located within the directory(storage location) which is same as the .cpp file. 

## #pragma once
Anything with a # is a pre-processor command or directive, it gets evaluated by the pre-processor before the compilation of the program begins. pragma once is essentially a header guard what is does is that it prevents multiple istances of a header file being copied and pasted into a single translation unit. 

## #ifndef 
if you have ifndef defined say ifndef symbol it will check whether or not a statement such as 
```
#define symbol
```
exists or not , if a code by the header of #define symbol is not alrady included in the translation unit( .cpp file) then it will include it in that, but if it is already defined then it will skip over the inclusion of the header file again in the same file. 
Syntax:
```
#ifndef symbol 
#define symbol
#endif
```

# Classes vs Structs
Classes have their member functions and variables declared as private and if you don't declare them public( modify the visibility of the components of a class) they by default tend to remain that way. Structs have their member functions and variable declared as public by default. Structs are declared just because to maintain backward compatibility between C and C++. 
 ### Statements:[Link](https://en.cppreference.com/w/cpp/language/statements)


### Difference between while(cin>>number) and while(cin)
