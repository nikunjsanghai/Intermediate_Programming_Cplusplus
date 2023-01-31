### File Handling 
File handling is used to store data permanently in a computer. Using file handling we can store our data in secondary memory (Hard disk).

### Streams in C++
We give input to the executing program and the execution program gives back the output.
The sequence of bytes given as input to the executing program and the sequence of bytes that comes as output from the executing program are called stream. 
In other words, streams are nothing but the flow of data in a sequence.                                        

The input and output operation between the executing program and the devices like keyboard and monitor are known as “console I/O operation”.
The input and output operation between the executing program and files are known as “disk I/O operation”.

**Kindly do not read too much about file streaming classes since you guys are unfamiliar with some of the topics needed to understand the classes completely. 
Only reading about fstream, ofstream and ifstream is sufficient for now**                               

In C++, files are mainly dealt by using three classes fstream, ifstream, ofstream available in fstream headerfile. 
- ofstream: Stream class to write on files 
- ifstream: Stream class to read from files 
- fstream: Stream class to both read and write from/to files

Only looking at this example is enough to know implementation of how to write to a file.The example below writes to a file and takes input from the file. 
```
/* File Handling with C++ using ifstream & ofstream class object*/
/* To write the Content in File*/
/* Then to read the content of file*/
#include <iostream>

/* fstream header file for ifstream, ofstream,
fstream classes */ 
#include <fstream>

std::ifstream fin;
std::ofstream fout;
std::string name;
std::string arr[3];
fout.open("output.txt");
for (size_t i = 0; i < 3; i++)
{
	std::getline(std::cin, name);
	fout << name << std::endl;
}
fout.close();
fin.open("output.txt");
for (size_t i = 0; i < 3; i++)
 {
        std::getline(fin, name);
	arr[i] = name;
}
for (size_t i = 0; i < 3; i++)
{
	std::cout << arr[i] << std::endl;
}
fin.close();

```
Practice Problem: Write a program to take input from a file "output.txt" which contains only one line, and reverse all the letters in each word of the sentence, without alterating the original sentence in the file, only printing out the modified sentence out on the console, evenly spaced with a single blank space after each word. 
```
Sample Input:
The sky is            blue
Sample Output:
ehT yks si eulb
```
Reference link: [geeksforgeeks](https://www.geeksforgeeks.org/file-handling-c-classes/) [tutorialspoint](https://www.tutorialspoint.com/cplusplus/cpp_files_streams.htm)
