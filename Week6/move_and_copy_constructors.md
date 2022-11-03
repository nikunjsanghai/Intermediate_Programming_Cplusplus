### Move constructors and Move assignment operator 

#### What is a Move Constructor?  

The copy constructors in C++ work with the l-value references and copy semantics(copy semantics means copying the actual data of the object to another object rather than making another object to point the already existing object in the heap). While move constructors work on the r-value references and move semantics(move semantics involves pointing to the already existing object in the memory).

On declaring the new object and assigning it with the r-value, firstly a temporary object is created, and then that temporary object is used to assign the values to the object. Due to this the copy constructor is called several times and increases the overhead and decreases the computational power of the code. To avoid this overhead and make the code more efficient we use move constructors.

#### Why Move Constructors are used?

Move constructor moves the resources in the heap, i.e., unlike copy constructors which copy the data of the existing object and assigning it to the new object move constructor just makes the pointer of the declared object to point to the data of temporary object and nulls out the pointer of the temporary objects. Thus, move constructor prevents unnecessarily copying data in the memory.  

Work of move constructor looks a bit like default member-wise copy constructor but in this case, it nulls out the pointer of the temporary object preventing more than one object to point to same memory location.
Example Code:
```
// Move constructor.
MemoryBlock(MemoryBlock&& other) noexcept
   : _data(nullptr)
   , _length(0)
{
   std::cout << "In MemoryBlock(MemoryBlock&&). length = "
             << other._length << ". Moving resource." << std::endl;

   // Copy the data pointer and its length from the
   // source object.
   _data = other._data;
   _length = other._length;

   // Release the data pointer from the source object so that
   // the destructor does not free the memory multiple times.
   other._data = nullptr;
   other._length = 0;
}

// Move assignment operator.
MemoryBlock& operator=(MemoryBlock&& other) noexcept
{
   std::cout << "In operator=(MemoryBlock&&). length = "
             << other._length << "." << std::endl;

   if (this != &other)
   {
      // Free the existing resource.
      delete[] _data;

      // Copy the data pointer and its length from the
      // source object.
      _data = other._data;
      _length = other._length;

      // Release the data pointer from the source object so that
      // the destructor does not free the memory multiple times.
      other._data = nullptr;
      other._length = 0;
   }
   return *this;
}
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
