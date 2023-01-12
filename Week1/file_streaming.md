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

Only looking at this example is enough to know implementation of how to write to a file 
```
/* File Handling with C++ using ifstream & ofstream class object*/
/* To write the Content in File*/
/* Then to read the content of file*/
#include <iostream>

/* fstream header file for ifstream, ofstream,
fstream classes */
#include <fstream>

using namespace std;

// Driver Code
int main()
{
	// Creation of ofstream class object
	ofstream fout;

	string line;

	// by default ios::out mode, automatically deletes
	// the content of file. To append the content, open in ios:app
	// fout.open("sample.txt", ios::app)
	fout.open("sample.txt");

	// Execute a loop If file successfully opened
	while (fout) {

		// Read a Line from standard input
		getline(cin, line);

		// Press -1 to exit
		if (line == "-1")
			break;

		// Write line in file
		fout << line << endl;
	}

	// Close the File
	fout.close();

	// Creation of ifstream class object to read the file
	ifstream fin;

	// by default open mode = ios::in mode
	fin.open("sample.txt");

	// Execute a loop until EOF (End of File)
	while (getline(fin, line)) {
	
		// Print line (read from file) in Console
		cout << line << endl;
	}

	// Close the file
	fin.close();

	return 0;
}
```
Another Example:
```
#include <fstream>
#include <iostream>
using namespace std;
 
int main () {
   char data[100];

   // open a file in write mode.
   ofstream outfile;
   outfile.open("afile.dat");

   cout << "Writing to the file" << endl;
   cout << "Enter your name: "; 
   cin.getline(data, 100);

   // write inputted data into the file.
   outfile << data << endl;

   cout << "Enter your age: "; 
   cin >> data;
   cin.ignore();
   
   // again write inputted data into the file.
   outfile << data << endl;

   // close the opened file.
   outfile.close();

   // open a file in read mode.
   ifstream infile; 
   infile.open("afile.dat"); 
 
   cout << "Reading from the file" << endl; 
   infile >> data; 

   // write the data at the screen.
   cout << data << endl;
   
   // again read the data from the file and display it.
   infile >> data; 
   cout << data << endl; 

   // close the opened file.
   infile.close();

   return 0;
}
```
Reference link: [geeksforgeeks](https://www.geeksforgeeks.org/file-handling-c-classes/) [tutorialspoint](https://www.tutorialspoint.com/cplusplus/cpp_files_streams.htm)
