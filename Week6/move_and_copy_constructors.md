### Copy Constructor
A copy constructor is a member function that initializes an object using another object of the same class. In simple terms, a constructor which creates an object by initializing it with an object of the same class, which has been created previously is known as a copy constructor.                      

Copy constructor is used to initialize the members of a newly created object by copying the members of an already existing object.Copy constructor takes a reference to an object of the same class as an argument.                            

### Properties of Copy Constructor
1. The copy constructor is used to initialize the members of a newly created object by copying the members of an already existing object.               

2. Copy constructor takes a reference to an object of the same class as an argument.
```
Sample(Sample &t)
{
       id=t.id;
}
```
3. The process of initializing members of an object through a copy constructor is known as copy initialization.                      

4. It is also called member-wise initialization because the copy constructor initializes one object with the existing object, both belonging to the same class on a member-by-member copy basis.                      

5. The copy constructor can be defined explicitly by the programmer. If the programmer does not define the copy constructor, the compiler does it for us.            

### Defualt Copy Constuctor 
1. Default Copy Constructor
An implicitly defined copy constructor will copy the bases and members of an object in the same order that a constructor would initialize the bases and members of the object.

```
// Implicit copy constructor Calling
#include <iostream>
using namespace std;
 
class Sample {
    int id;
 
public:
    void init(int x) { id = x; }
    void display() { cout << endl << "ID=" << id; }
};
 
int main()
{
    Sample obj1;
    obj1.init(10);
    obj1.display();
 
    // Implicit Copy Constructor Calling
    Sample obj2(obj1); // or obj2=obj1;
    obj2.display();
    return 0;
}
```
### Example 
```
// C++ program to demonstrate the
// Working of Copy constructor
#include <cstring>
#include <iostream>
using namespace std;

class String {
private:
	char* s;
	int size;

public:
	String(const char* str = NULL); // constructor
	~String() { delete[] s; } // destructor
	String(const String&); // copy constructor
	void print()
	{
		cout << s << endl;
	} // Function to print string
	void change(const char*); // Function to change
};

// In this the pointer returns the CHAR ARRAY
// in the same sequence of string object but
// with an additional null pointer '\0'
String::String(const char* str)
{
	size = strlen(str);
	s = new char[size + 1];
	strcpy(s, str);
}

void String::change(const char* str)
{
	delete[] s;
	size = strlen(str);
	s = new char[size + 1];
	strcpy(s, str);
}

String::String(const String& old_str)
{
	size = old_str.size;
	s = new char[size + 1];
	strcpy(s, old_str.s);
}

int main()
{
	String str1("GeeksQuiz");
	String str2 = str1;

	str1.print(); // what is printed ?
	str2.print();

	str2.change("GeeksforGeeks");

	str1.print(); // what is printed now ?
	str2.print();
	return 0;
}
```
Output:
```
GeeksQuiz
GeeksQuiz
GeeksQuiz
GeeksforGeeks
```
Copy Constructor absent:
```
#include <cstring>
#include <iostream>
using namespace std;

class String {
private:
	char* s;
	int size;

public:
	String(const char* str = NULL); // constructor
	~String() { delete[] s; } // destructor
	void print() { cout << s << endl; }
	void change(const char*); // Function to change
};

String::String(const char* str)
{
	size = strlen(str);
	s = new char[size + 1];
	strcpy(s, str);
}

// In this the pointer returns the CHAR ARRAY
// in the same sequence of string object but
// with an additional null pointer '\0'
void String::change(const char* str) { strcpy(s, str); }

int main()
{
	String str1("GeeksQuiz");
	String str2 = str1;

	str1.print(); // what is printed ?
	str2.print();

	str2.change("GeeksforGeeks");

	str1.print(); // what is printed now ?
	str2.print();
	return 0;
}
```
Output:
```
GeeksQuiz
GeeksQuiz
GeeksforGeeks
GeeksforGeeks
```
Reference Links:[geeksforgeeks](https://www.geeksforgeeks.org/copy-constructor-in-cpp/) [geeksforgeeks](https://www.geeksforgeeks.org/copy-constructor-argument-const/)

### Move constructors and Move assignment operator 

#### What is a Move Constructor?  

The copy constructors in C++ work with the l-value references and copy semantics(copy semantics means copying the actual data of the object to another object rather than making another object to point the already existing object in the heap). While move constructors work on the r-value references and move semantics(move semantics involves pointing to the already existing object in the memory).

On declaring the new object and assigning it with the r-value, firstly a temporary object is created, and then that temporary object is used to assign the values to the object. Due to this the copy constructor is called several times and increases the overhead and decreases the computational power of the code. To avoid this overhead and make the code more efficient we use move constructors.

#### Why Move Constructors are used?

Move constructor moves the resources in the heap, i.e., unlike copy constructors which copy the data of the existing object and assigning it to the new object move constructor just makes the pointer of the declared object to point to the data of temporary object and nulls out the pointer of the temporary objects. Thus, move constructor prevents unnecessarily copying data in the memory.  

Work of move constructor looks a bit like default member-wise copy constructor but in this case, it nulls out the pointer of the temporary object preventing more than one object to point to same memory location.
Example Code with only Copy constructor:
```
// C++ program without declaring the
// move constructor
#include <iostream>
#include <vector>
using namespace std;

// Move Class
class Move {
private:
	// Declaring the raw pointer as
	// the data member of the class
	int* data;

public:
	// Constructor
	Move(int d)
	{
		// Declare object in the heap
		data = new int;
		*data = d;

		cout << "Constructor is called for "
			<< d << endl;
	};

	// Copy Constructor to delegated
	// Copy constructor
	Move(const Move& source)
		: Move{ *source.data }
	{

		// Copying constructor copying
		// the data by making deep copy
		cout << "Copy Constructor is called - "
			<< "Deep copy for "
			<< *source.data
			<< endl;
	}

	// Destructor
	~Move()
	{
		if (data != nullptr)

			// If the pointer is not
			// pointing to nullptr
			cout << "Destructor is called for "
				<< *data << endl;
		else

			// If the pointer is
			// pointing to nullptr
			cout << "Destructor is called"
				<< " for nullptr"
				<< endl;

		// Free the memory assigned to
		// data member of the object
		delete data;
	}
};

// Driver Code
int main()
{
	// Create vector of Move Class
	vector<Move> vec;

	// Inserting object of Move class
	vec.push_back(Move{ 10 });
	vec.push_back(Move{ 20 });
	return 0;
}

```
Output:
```
Constructor is called for 10
Constructor is called for 10
Copy Constructor is called - Deep copy for 10
Destructor is called for 10
Constructor is called for 20
Constructor is called for 20
Copy Constructor is called - Deep copy for 20
Constructor is called for 10
Copy Constructor is called - Deep copy for 10
Destructor is called for 10
Destructor is called for 20
Destructor is called for 10
Destructor is called for 20
```
Move and Copy constructors together:
```
/ C++ program with declaring the
// move constructor
#include <iostream>
#include <vector>
using namespace std;
 
// Move Class
class Move {
private:
    // Declare the raw pointer as
    // the data member of class
    int* data;
 
public:
   
    // Constructor
    Move(int d)
    {
        // Declare object in the heap
        data = new int;
        *data = d;
        cout << "Constructor is called for "
             << d << endl;
    };
 
    // Copy Constructor
    Move(const Move& source)
        : Move{ *source.data }
    {
 
        // Copying the data by making
        // deep copy
        cout << "Copy Constructor is called -"
             << "Deep copy for "
             << *source.data
             << endl;
    }
 
    // Move Constructor
    Move(Move&& source)
        : data{ source.data }
    {
 
        cout << "Move Constructor for "
             << *source.data << endl;
        source.data = nullptr;
    }
 
    // Destructor
    ~Move()
    {
        if (data != nullptr)
 
            // If pointer is not pointing
            // to nullptr
            cout << "Destructor is called for "
                 << *data << endl;
        else
 
            // If pointer is pointing
            // to nullptr
            cout << "Destructor is called"
                 << " for nullptr "
                 << endl;
 
        // Free up the memory assigned to
        // The data member of the object
        delete data;
    }
};
 
// Driver Code
int main()
{
    // Vector of Move Class
    vector<Move> vec;
 
    // Inserting Object of Move Class
    vec.push_back(Move{ 10 });
    vec.push_back(Move{ 20 });
    return 0;
}
```
Output:
```
Constructor is called for 10
Move Constructor for 10
Destructor is called for nullptr 
Constructor is called for 20
Move Constructor for 20
Constructor is called for 10
Copy Constructor is called -Deep copy for 10
Destructor is called for 10
Destructor is called for nullptr 
Destructor is called for 10
Destructor is called for 20
```
Reference for reading material: [Link1](https://www.geeksforgeeks.org/move-constructors-in-c-with-examples/) [Link2](https://docs.microsoft.com/en-us/cpp/cpp/move-constructors-and-move-assignment-operators-cpp?view=msvc-170) [Link3](https://en.cppreference.com/w/cpp/language/move_constructor)
#### Move assignment operator: [Link1](https://en.cppreference.com/w/cpp/language/move_assignment) 
#### Copy constructors: [Link1](https://www.geeksforgeeks.org/copy-constructor-in-cpp/) 
#### Copy assignment operator: [Link1](https://en.cppreference.com/w/cpp/language/copy_assignment) 
