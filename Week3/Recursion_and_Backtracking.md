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
![NewPermutation](https://user-images.githubusercontent.com/103468688/214363034-8d5e2d1c-e747-4ea3-b657-a3b48e762472.gif)

### Psuedocode
- Create a function permute() with parameters as input string, starting index of the string, ending index of the string
- Call this function with values input string, 0, size of string – 1
- In this function, if the value of  L and R is the same then print the same string
- Else run a for loop from L to R and swap the current element in the for loop with the inputString[L]
- Then again call this same function by increasing the value of L by 1
- After that again swap the previously swapped values to initiate backtracking

```
// C++ program to print all
// permutations with duplicates allowed
#include <bits/stdc++.h>
using namespace std;

// Function to print permutations of string
// This function takes three parameters:
// 1. String
// 2. Starting index of the string
// 3. Ending index of the string.
void permute(string& a, int l, int r)
{
	// Base case
	if (l == r)
		cout << a << endl;
	else {
		// Permutations made
		for (int i = l; i <= r; i++) {

			// Swapping done
			swap(a[l], a[i]);

			// Recursion called
			permute(a, l + 1, r);

			// backtrack
			swap(a[l], a[i]);
		}
	}
}

// Driver Code
int main()
{
	string str = "ABC";
	int n = str.size();

	// Function call
	permute(str, 0, n - 1);
	return 0;
}

```
Output:
```
ABC
ACB
BAC
BCA
CBA
CAB
```
Reference Links:[geeksforgeeks](https://www.geeksforgeeks.org/write-a-c-program-to-print-all-permutations-of-a-given-string/)
[geekforgeeks](https://www.geeksforgeeks.org/print-all-possible-permutations-of-an-array-vector-without-duplicates-using-backtracking/)                         

Reference Links:Scalar](https://www.scaler.com/topics/data-structures/recursion-and-backtracking/) 
[Stackoverflow](https://stackoverflow.com/questions/42811988/recursive-backtracking-in-c)
[geeksforgeeks](https://www.geeksforgeeks.org/introduction-to-backtracking-data-structure-and-algorithm-tutorials/)
[stackoverflow](https://stackoverflow.com/questions/30946137/recursive-permutations-using-vector)

