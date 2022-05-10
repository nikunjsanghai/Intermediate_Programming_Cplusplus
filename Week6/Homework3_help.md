Resources for Vector class implementation: 
[Link1](https://stackoverflow.com/questions/5159061/implementation-of-vector-in-c)
[Link2](https://www.geeksforgeeks.org/how-to-implement-our-own-vector-class-in-c/)
[Link3](https://www.journaldev.com/56360/vector-class-in-cpp)
[Link4](https://www.cs.odu.edu/~zeil/cs361/sum18/Public/vectorImpl/index.html)

Usage of myspace in the vector.hpp: Two resources for it [Link1](https://docs.microsoft.com/en-us/cpp/cpp/namespaces-cpp?view=msvc-170#:~:text=A%20namespace%20is%20a%20declarative,code%20base%20includes%20multiple%20libraries.) [Link2](https://www.geeksforgeeks.org/namespace-in-c/) 

copy assignment operator help : [Link](https://en.cppreference.com/w/cpp/language/copy_assignment) [Link2](https://www.ibm.com/docs/en/zos/2.1.0?topic=only-copy-assignment-operators) [Link3](https://www.geeksforgeeks.org/copy-constructor-vs-assignment-operator-in-c/).  

Syntax for copy assignment operator:
```
class-name & class-name :: operator= ( const class-name & )
```

Move assignment operator:[Link1](https://docs.microsoft.com/en-us/cpp/cpp/move-constructors-and-move-assignment-operators-cpp?view=msvc-170) [Link2](https://en.cppreference.com/w/cpp/language/move_assignment) [Link3](https://www.learncpp.com/cpp-tutorial/move-constructors-and-move-assignment/).  

Syntax for copy assignment operator:
```
class-name & class-name :: operator= ( class-name && )
```

Intitializer list resources: [Link1](https://en.cppreference.com/w/cpp/utility/initializer_list) [Link2](https://www.cplusplus.com/reference/initializer_list/initializer_list/) [Link3](https://www.learncpp.com/cpp-tutorial/stdinitializer_list/) [Link4](https://docs.microsoft.com/en-us/cpp/standard-library/initializer-list-class?view=msvc-170)

Ranged based for loop:[Link1](https://en.cppreference.com/w/cpp/language/range-for)
```
std::vector<int> v;
    print_info(v, 0);


    int* ptr = v.data();  // store copy of v.ptr


    for (int i = 1; i <= 7; ++i) {
        v.push_back(i * 11);

        if (ptr != &v[0]) {
            std::cout << "there's been a memory reallocation" << std::endl;
            ptr = &v[0];
        }
        print_info(v, v.capacity());
    }
```

Let's look at the entire code, when v is initialized without any element pointer will surely point at location of V[0] , so (ptr != &v[0])  is checking whether or not there has been any memory allocation. Let's assume the name of the memory location is 12345 for V[0], we know pointers also work like arrays *(ptr+1) will give the value of the next element stored. so if the memory location is different that means the pointer is pointing to something other than 12345 which was the location of V[0] , the only reason that can happen in the main file typed as the way it is that there has been some memory allocation and the pointer might be pointing to V[1] or V[2] etc. 

2)You can use the new_capacity() in the reserve function to reserve more memory, important point to remember is that just changing the cap value does not allocate more memory from the computer's end.
3) 0x0 is just another way of writing nullptr as we know points can point to nullptr, hopefully you can connect the dots now. 
