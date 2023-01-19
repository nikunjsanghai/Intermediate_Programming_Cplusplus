### Recursion
The process in which a function calls itself directly or indirectly is called recursion and the corresponding function is called a recursive function.
Using a recursive algorithm, certain problems can be solved quite easily.Using a recursive algorithm, certain problems can be solved quite easily.
Need of Recursion
### Need for Recursion
Recursion is an amazing technique with the help of which we can reduce the length of our code and make it easier to read and write. It has certain advantages over the iteration technique which will be discussed later. 
A task that can be defined with its similar subtask, recursion is one of the best solutions for it. For example: The Factorial of a number.
### Properties of Recursion
- Performing the same operations multiple times with different inputs.
- In every step, we try smaller inputs to make the problem smaller.
- Base condition is needed to stop the recursion otherwise infinite loop will occur
### What is the difference between direct and indirect recursion? 
A function fun is called direct recursive if it calls the same function fun.
A function fun is called indirect recursive if it calls another function say fun_new and fun_new calls fun directly or indirectly.
The difference between direct and indirect recursion has been illustrated.
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
Reference Links: [geeksforgeeks](https://www.geeksforgeeks.org/introduction-to-recursion-data-structure-and-algorithm-tutorials/) [tutorialpoint](https://www.programiz.com/cpp-programming/recursion) [geeksforgeeks](https://www.geeksforgeeks.org/types-of-recursions/)
Nested Recursion:[stackoverflow](https://stackoverflow.com/questions/47501191/how-can-i-convert-a-basic-nested-loop-to-recursive-in-c) [dotnettutorials](https://dotnettutorials.net/lesson/nested-recursion/)
