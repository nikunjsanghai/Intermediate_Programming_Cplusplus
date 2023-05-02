### String Stream
A stringstream associates a string object with a stream allowing you to read from the string as if it were a stream (like cin). 
To use stringstream, we need to include sstream header file. The stringstream class is extremely useful in parsing input. 

Basic methods are:

- clear()- To clear the stream.
- str()- To get and set string object whose content is present in the stream. 
- operator <<- Add a string to the stringstream object. 
- operator >>- Read something from the stringstream object.

Sample Code:
```
// C++ program to demonstrate use
// of stringstream to count
// frequencies of words.
#include <bits/stdc++.h>
#include <iostream>
#include <sstream>
#include<string>
using namespace std;

void printFrequency(string st)
{
	// Each word it mapped to
	// it's frequency
	map<string, int>FW;

	// Used for breaking words
	stringstream ss(st);

	// To store individual words
	string Word;

	while (ss >> Word)
		FW[Word]++;

	map<string, int>::iterator m;
	for (m = FW.begin(); m != FW.end(); m++)
		cout << m->first << "-> "
			<< m->second << "\n";
}

// Driver code
int main()
{
	string s = "Geeks For Geeks Ide";
	printFrequency(s);
	return 0;
}
```
Output:
```
For-> 1
Geeks-> 2
Ide-> 1
```

Reference Link: [geeksforgeeks](https://www.geeksforgeeks.org/stringstream-c-applications/)
