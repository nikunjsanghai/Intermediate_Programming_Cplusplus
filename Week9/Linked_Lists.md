### Linked Lists

Like arrays, Linked List is a linear data structure. Unlike arrays, linked list elements are not stored at a contiguous location; the elements are linked using pointers. They include a series of connected nodes. Here, each node stores the data and the address of the next node.                             
![linked_list](https://user-images.githubusercontent.com/103468688/203477708-ae9d881a-1478-4f25-9379-44f048dabeae.JPG)

### Why Linked Lists? 
Arrays can be used to store linear data of similar types, but arrays have the following limitations:

- The size of the arrays is fixed: So we must know the upper limit on the number of elements in advance. Also, generally, the allocated memory is equal to the upper limit irrespective of the usage. 
- Insertion of a new element / Deletion of a existing element in an array of elements is expensive: The room has to be created for the new elements and to create room existing elements have to be shifted but in Linked list if we have the head node then we can traverse to any node through it and insert new node at the required position.
##### Example:                                       
In a system, if we maintain a sorted list of IDs in an array id[] = \[1000, 1010, 1050, 2000, 2040]. 
If we want to insert a new ID 1005, then to maintain the sorted order, we have to move all the elements after 1000 (excluding 1000). 

Deletion is also expensive with arrays until unless some special techniques are used. For example, to delete 1010 in id[], everything after 1010 has to be moved due to this so much work is being done which affects the efficiency of the code.
### Advantages of Linked Lists over arrays:
- Dynamic Array.
- Ease of Insertion/Deletion.
### Drawbacks of Linked Lists: 
- Random access is not allowed. We have to access elements sequentially starting from the first node(head node). So we cannot do a binary search with linked lists efficiently with its default implementation. 
- Extra memory space for a pointer is required with each element of the list. 
- Not cache friendly. Since array elements are contiguous locations, there is locality of reference which is not there in case of linked lists.
### Types of Linked Lists:
- Simple Linked List – In this type of linked list, one can move or traverse the linked list in only one direction
- Doubly Linked List – In this type of linked list, one can move or traverse the linked list in both directions (Forward and Backward)
- Circular Linked List – In this type of linked list, the last node of the linked list contains the link of the first/head node of the linked list in its next pointer and the first/head node contains the link of the last node of the linked list in its prev pointer
### Basic operations on Linked Lists:
- Deletion
- Insertion
- Search
- Display
