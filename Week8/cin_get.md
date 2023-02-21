### cin.get()
cin.get() is used for accessing character array. It includes white space characters. 
Generally, cin with an extraction operator (>>) terminates when whitespace is found. However, cin.get() reads a string with the whitespace.
### Syntax
```
cin.get(string_name, size);
```
### Difference between cin and cin.get() in char array 
- cin>>a; reads a single word, skipping over any leading space characters, and stopping when it encounters a space character (which includes the end of the line).

- cin.get(a,256);cin.get(); reads a whole line, then consumes the end-of-line character so that repeating this will read the next line. cin.getline(a,256) is a slightly neater way to do this.

- cin.get(a,256) reads a whole line but leaves the end-of-line character in the stream, so that repeating this will give no more input.

In each case, you'll get some kind of ill behaviour if the input word/line is longer than the fixed-size buffer. 
For that reason, you should usually use a friendlier string type:
```
std::string a;
std::cin >> a;              // single word
std::getline(std::cin, a);  // whole line
```
### cin.unget()
The basic_istream::unget() is used to unget the character and used to decrease the location by one character and makes the extracted character available for used once again. 
```
// C++ code for basic_istream::unget()
#include <bits/stdc++.h>
using namespace std;

// Driver code
int main()
{
	// Declare string stream
	istringstream gfg("GeeksforGeeks");

	char a = gfg.get();
	if (gfg.unget()) {
		char b = gfg.get();
		cout << "We got: " << a << endl;
		cout << "After ungetting the "
			<< "character once again"
			<< " we got: "
			<< b << endl;
	}

	return 0;
}
```

Ref Links: [geeksforgeeks](https://www.geeksforgeeks.org/cin-get-in-c-with-examples/) [stackoverflow](
https://stackoverflow.com/questions/29630513/difference-between-cin-and-cin-get-for-char-array) [geeksforgeeks](https://www.geeksforgeeks.org/basic_istreamunget-in-c-with-examples/)
