### Iterators
Before we go in the definition,lets look at a quick sample case use of iterators in case of container type:vector
```
std::vector<int> vec={1,2,3,4}
vec.insert(vec.begin()+2,5)
vec.erase(vec.begin())//erases the first element
```
An iterator is an object (like a pointer) that points to an element inside the container. We can use iterators to move through the contents of the container. They can be visualized as something similar to a pointer pointing to some location and we can access the content at that particular location using them. Iterators play a critical role in connecting algorithm with containers along with the manipulation of data stored inside the containers. The most obvious form of an iterator is a pointer. A pointer can point to elements in an array and can iterate through them using the increment operator (++). But, all iterators do not have similar functionality as that of pointers. Depending upon the functionality of iterators they can be classified into five categories, as shown in the venn diagram below from the most powerful one and consequently the inner one is the least powerful in terms of functionality.  
![Iterators_venn_diagram](https://user-images.githubusercontent.com/103468688/221435105-0e7c358a-97a5-42e9-b20b-bac5fa381466.png)


Input Iterators: They are the weakest of all the iterators and have very limited functionality. They can only be used in a single-pass algorithms, i.e., those algorithms which process the container sequentially, such that no element is accessed more than once.   

Output Iterators: Just like input iterators, they are also very limited in their functionality and can only be used in single-pass algorithm, but not for accessing elements, but for being assigned elements.    

Forward Iterator: They are higher in the hierarchy than input and output iterators, and contain all the features present in these two iterators. But, as the name suggests, they also can only move in a forward direction and that too one step at a time.   

Bidirectional Iterators: They have all the features of forward iterators along with the fact that they overcome the drawback of forward iterators, as they can move in both the directions, that is why their name is bidirectional.   

Random-Access Iterators: They are the most powerful iterators. They are not limited to moving sequentially, as their name suggests, they can randomly access any element inside the container. They are the ones whose functionality are same as pointers.   

For now let just look at basic implemetation of iterators and reflect on the difference using iterators makes in programming:
```
// C++ program to demonstrate iterators
 
#include <iostream>
#include <vector>
using namespace std;
int main()
{
    // Declaring a vector
    vector<int> v = { 1, 2, 3 };
 
    // Declaring an iterator
    vector<int>::iterator i;
 
    int j;
 
    // Inserting element using iterators
    for (i = v.begin(); i != v.end(); ++i) {
        if (i == v.begin()) {
            i = v.insert(i, 5);
            // inserting 5 at the beginning of v
        }
    }
     
    // v contains 5 1 2 3
 
    // Deleting a element using iterators
    for (i = v.begin(); i != v.end(); ++i) {
        if (i == v.begin() + 1) {
            i = v.erase(i);
            // i now points to the element after the
            // deleted element
        }
    }
     
    // v contains 5 2 3
 
    // Accessing the elements using iterators
    for (i = v.begin(); i != v.end(); ++i) {
        cout << *i << " ";
    }
 
    return 0;
}
```




Now each one of these iterators are not supported by all the containers in STL, different containers support different iterators, like vectors support Random-access iterators, while lists support bidirectional iterators. The whole list is as given below:  

![image](https://user-images.githubusercontent.com/103468688/168028238-0adfd2a9-3605-469a-9269-95e8e7f4413a.png)






```
#include <iostream>
#include <vector>
using namespace std;
int main()
{
    // Declaring a vector
    vector<int> v = { 1, 2, 7,9,6,5,8,4,3 };

    // Declaring an iterator
    vector<int>::iterator i;

    int j;

    // Inserting element using iterators
    for (i = v.begin(); i != v.end(); ++i) {
        if (i == v.begin()) {
            i = v.insert(i, 5);
            // inserting 5 at the beginning of v
        }
    }

    // v contains 5 1 2 3

    // Deleting a element using iterators
   // Type your code here!

    // Accessing the elements using iterators
    for (i = v.begin(); i != v.end(); ++i) {
        cout << *i << " ";
    }

    return 0;
}
```




Reference Links [Link1](https://www.cplusplus.com/reference/iterator/#:~:text=An%20iterator%20is%20any%20object,dereference%20(%20*%20)%20operators) [Link2](https://www.geeksforgeeks.org/iterators-c-stl/) [Link3](https://www.geeksforgeeks.org/introduction-iterators-c/) [Link4](https://www.geeksforgeeks.org/random-access-iterators-in-cpp/)[Link5](https://www.geeksforgeeks.org/bidirectional-iterators-in-cpp/) [Link6](https://www.geeksforgeeks.org/input-iterators-in-cpp/) [Link7](https://www.geeksforgeeks.org/output-iterators-cpp/) [Link7](https://www.geeksforgeeks.org/forward-iterators-in-cpp/) [Link8](https://www.geeksforgeeks.org/bidirectional-iterators-in-cpp/) [link9](https://docs.microsoft.com/en-us/cpp/standard-library/iterators?view=msvc-170) [link10](https://users.cs.northwestern.edu/~riesbeck/programming/c++/stl-iterators.html) [link11](https://en.cppreference.com/w/cpp/iterator/iterator) [link12](https://www.javatpoint.com/cpp-iterators)


 
