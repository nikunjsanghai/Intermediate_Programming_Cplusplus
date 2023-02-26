### Linked Lists 
Like arrays, a Linked List is a linear data structure. Unlike arrays, linked list elements are not stored at a contiguous location; the elements are linked using pointers. They include a series of connected nodes. Here, each node stores the data and the address of the next node.
![linked_lists](https://user-images.githubusercontent.com/103468688/221440855-8cf29876-a64a-4ff8-9dfa-f43f518f1032.png)
a linked list consists of nodes where each node contains a data field and a reference(link) to the next node in the list.

### Limitations of Array: 
- The size of the arrays is fixed: So we must know the upper limit on the number of elements in advance. Also, generally, the allocated memory is equal to the upper limit irrespective of the usage. 
- Insertion of a new element / Deletion of a existing element in an array of elements is expensive: The room has to be created for the new elements and to create room existing elements have to be shifted but in Linked list if we have the head node then we can traverse to any node through it and insert new node at the required position.                       
**Example:**                                
In a system, if we maintain a sorted list of IDs in an array id[] = [1000, 1010, 1050, 2000, 2040]. 
If we want to insert a new ID 1005, then to maintain the sorted order, we have to move all the elements after 1000 (excluding 1000).              
Deletion is also expensive with arrays until unless some special techniques are used. For example, to delete 1010 in id[], everything after 1010 has to be moved due to this so much work is being done which affects the efficiency of the code.

### Linked Lists Over Arrays:
- Dynamic Array.
- Ease of Insertion/Deletion.
- Insertion at the beginning is a constant time operation and takes O(1) time, as compared to arrays where inserting an element at the beginning takes O(n) time,where n is the number of elements in the array.

### Drawbacks of Linked Lists
- Random access is not allowed. We have to access elements sequentially starting from the first node(head node). So we cannot do a binary search with linked lists efficiently with its default implementation. 
- Extra memory space for a pointer is required with each element of the list. 
- Not cache-friendly. Since array elements are contiguous locations, there is the locality of reference which is not there in the case of linked lists.
- It takes a lot of time in traversing and changing the pointers.
- Reverse traversing is not possible in singly linked lists.
- It will be confusing when we work with pointers.
- Direct access to an element is not possible in a linked list as in an array by index.
- Searching for an element is costly and requires O(n) time complexity.
- Sorting of linked lists is very complex and costly.
- Appending an element to a linked list is a costly operation, and takes O(n) time, where n is the number of elements in the linked list, as compared to arrays that take O(1) time.

### Types of Linked Lists
- Simple Linked List – In this type of linked list, one can move or traverse the linked list in only one direction. where the next pointer of each node points to other nodes but the next pointer of the last node points to NULL. It is also called “Singly Linked List”.
- Doubly Linked List – In this type of linked list, one can move or traverse the linked list in both directions (Forward and Backward)
- Circular Linked List – In this type of linked list, the last node of the linked list contains the link of the first/head node of the linked list in its next pointer.
- Doubly Circular Linked List – A Doubly Circular linked list or a circular two-way linked list is a more complex type of linked list that contains a pointer to the next as well as the previous node in the sequence. The difference between the doubly linked and circular doubly list is the same as that between a singly linked list and a circular linked list. The circular doubly linked list does not contain null in the previous field of the first node.
- Header Linked List – A header linked list is a special type of linked list that contains a header node at the beginning of the list. 

There are more than 10 articles on Linked Lists all are linked in this article: [geeksforgeeks](https://www.geeksforgeeks.org/data-structures/linked-list/)

More reference articles:[link1](https://www.geeksforgeeks.org/implementing-iterator-pattern-of-a-single-linked-list/) [link2](https://www.geeksforgeeks.org/linked-list-vs-array/) [link3](https://www.geeksforgeeks.org/the-c-standard-template-library-stl/) [link4](https://www.geeksforgeeks.org/templates-cpp/) 
