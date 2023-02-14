Generally, there is always more than one way to solve a problem with different algorithms.
Therefore, it is highly required to use a method to compare the solutions in order to judge which one is more optimal. The method must be:

-Independent of the machine and its configuration, on which the algorithm is running on.
-Shows a direct correlation with the number of inputs.
-Can distinguish two algorithms clearly without ambiguity.

### Time Complexity 
The time complexity of an algorithm quantifies the amount of time taken by an algorithm to run as a function of the length of the input.
Note that the time to run is a function of the length of the input and not the actual execution time of the machine on which the algorithm is running on.The valid algorithm takes a finite amount of time for execution. The time required by the algorithm to solve given problem is called time complexity  of the algorithm. Time complexity is very useful measure in algorithm analysis.
                                                 
 It is the time needed for the completion of an algorithm. 
 To estimate the time complexity, we need to consider the cost of each fundamental instruction and the number of times the instruction is executed.
 ```
 Algorithm ADD SCALAR(A, B)
//Description: Perform arithmetic addition of two numbers
//Input: Two scalar variables A and B
//Output: variable C, which holds the addition of A and B
C <- A + B
return C
```
he of two scalar numbers requires one addition operation. 
the time complexity of this algorithm is constant, so T(n) = O(1) .

In order to calculate time complexity on an algorithm,
it is assumed that a constant time c is taken to execute one operation, and then the total operations for an input length on N are calculated.                  

### Space Complexity 
roblem-solving using computer requires memory to hold temporary data or final result while the program is in execution.
The amount of memory required by the algorithm to solve given problem is called space complexity of the algorithm.                               

The space complexity of an algorithm quantifies the amount of space taken by an algorithm to 
run as a function of the length of the input. Consider an example: Suppose a problem to find the frequency of array elements.

It is the amount of memory needed for the completion of an algorithm. 

To estimate the memory requirement we need to focus on two parts:                     

- A fixed part: It is independent of the input size. It includes memory for instructions (code), constants, variables, etc.
- A variable part: It is dependent on the input size. It includes memory for recursion stack, referenced variables, etc.

```
Algorithm ADD SCALAR(A, B)

//Description: Perform arithmetic addition of two numbers

//Input: Two scalar variables A and B

//Output: variable C, which holds the addition of A and B

C <— A+B

return C
```
The addition of two scalar numbers requires one extra memory location to hold the result.
Thus the space complexity of this algorithm is constant, hence S(n) = O(1).

**Big-O is a just a notation to denote Time Complexity in a rule based manner**
 
 Reference Article: [geeksforgeeks](https://www.geeksforgeeks.org/time-complexity-and-space-complexity/)

### Space and Time Efficiency Trade-off
There is usually a trade-off between optimal memory use and runtime performance. 
In general for an algorithm, space efficiency and time efficiency reach at two opposite ends and each point in between them has a certain time and space efficiency. So, the more time efficiency you have, the less space efficiency you have and vice versa. 
For example, Mergesort algorithm is exceedingly fast but requires a lot of space to do the operations. On the other side, Bubble Sort is exceedingly slow but requires the minimum space. 
At the end of this topic, we can conclude that finding an algorithm that works in less running time and also having less requirement of memory space, can make a huge difference in how well an algorithm performs.

Reference Article:[geeksforgeeks](https://www.geeksforgeeks.org/analysis-algorithms-big-o-analysis/)
