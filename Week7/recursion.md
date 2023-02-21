### Recursion
The process in which a function calls itself directly or indirectly is called recursion and the corresponding function is called a recursive function. 
Using a recursive algorithm, certain problems can be solved quite easily.A recursive function solves a particular problem by calling a copy of itself and solving smaller subproblems of the original problems. Many more recursive calls can be generated as and when required. It is essential to know that we should provide a certain case in order to terminate this recursion process.
So we can say that every time the function calls itself with a simpler version of the original problem.

### Properties of Recursion
-Performing the same operations multiple times with different inputs.
-In every step, we try smaller inputs to make the problem smaller.
-Base condition is needed to stop the recursion otherwise infinite loop will occur.

### How are recursive functions stored in memory?

Recursion uses more memory, because the recursive function adds to the stack with each recursive call, and keeps the values there until the call is finished.
The recursive function uses LIFO (LAST IN FIRST OUT) Structure just like the stack data structure. [geeksforgeeks](https://www.geeksforgeeks.org/stack-data-structure/)

### What is the base condition in recursion? 
In the recursive program, the solution to the base case is provided and the solution to the bigger problem is expressed in terms of smaller problems. 
```
int fact(int n)
{
    if (n < = 1) // base case
        return 1;
    else    
        return n*fact(n-1);    
}
```
### How a particular problem is solved using recursion? 
The idea is to represent a problem in terms of one or more smaller problems, and add one or more base conditions that stop the recursion. For example, we compute factorial n if we know the factorial of (n-1). The base case for factorial would be n = 0. We return 1 when n = 0. 

### Why Stack Overflow error occurs in recursion? 
If the base case is not reached or not defined, then the stack overflow problem may arise. Let us take an example to understand this.
```
int fact(int n)
{
    // wrong base case (it may cause
    // stack overflow).
    if (n == 100) 
        return 1;

    else
        return n*fact(n-1);
}
```
If fact(10) is called, it will call fact(9), fact(8), fact(7), and so on but the number will never reach 100. So, the base case is not reached.
If the memory is exhausted by these functions on the stack, it will cause a stack overflow error. 
### What is the difference between direct and indirect recursion? 
A function fun is called direct recursive if it calls the same function fun. 
A function fun is called indirect recursive if it calls another function say fun_new and fun_new calls fun directly or indirectly. 
The difference between direct and indirect recursion has been illustrated in Table 1. 
```
// An example of direct recursion
void directRecFun()
{
    // Some code....

    directRecFun();

    // Some code...
}

// An example of indirect recursion
void indirectRecFun1()
{
    // Some code...

    indirectRecFun2();

    // Some code...
}
void indirectRecFun2()
{
    // Some code...

    indirectRecFun1();

    // Some code...
}
```
### Mutual Recursion
