### Recursion and Backtracking 
Recursion and Backtracking are important problem solving approaches. Recursion may also be called as the alternative to our regular iterative approach
of solving any problem. Recursion provides us with an elegant way to solve complex problems, by breaking them down into smaller problems and with fewer
lines of code than iteration. However, not every recursive solution is better than an iterative one. Backtracking too employs recursion to solve complicated problems,
which involving possiblities of multiple solutions.                           
                
                             
```
Input: S = “ABC”
Output: “ABC”, “ACB”, “BAC”, “BCA”, “CBA”, “CAB”


Input: S = “XY”
Output: “XY”, “YX”
```


Backtracking is an algorithmic technique for solving problems recursively by trying to build a solution incrementally, one piece at a time, removing those solutions that 
fail to satisfy the constraints of the problem at any point in time (by time, here, is referred to the time elapsed till reaching any level of the search tree).  
Backtracking can also be said as an improvement to the brute force approach. So basically, the idea behind the backtracking technique is that it searches for a solution 
to a problem among all the available options.  Initially, we start the backtracking from one possible option and if the problem is solved with that selected option then
we return the solution else we backtrack and select another option from the remaining available options. There also might be a case where none of the options will give 
you the solution and hence we understand that backtracking won’t give any solution to that particular problem. We can also say that backtracking is a form of recursion. 
This is because the process of finding the solution from the various option available is repeated recursively until we don’t find the solution or we reach the final state. So we can conclude that backtracking at every step eliminates those choices that cannot give us the 
solution and proceeds to those choices that have the potential of taking us to the solution.

Reference Links[Scalar](https://www.scaler.com/topics/data-structures/recursion-and-backtracking/) 
[Stackoverflow](https://stackoverflow.com/questions/42811988/recursive-backtracking-in-c)
[geeksforgeeks](https://www.geeksforgeeks.org/introduction-to-backtracking-data-structure-and-algorithm-tutorials/)
[stackoverflow](https://stackoverflow.com/questions/30946137/recursive-permutations-using-vector)

