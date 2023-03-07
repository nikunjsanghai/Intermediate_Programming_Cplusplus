### Containers
A container is a holder object that stores a collection of other objects (its elements). They are implemented as class templates,
which allows great flexibility in the types supported as elements. 

The container manages the storage space for its elements and provides member functions to access them, 
either directly or through iterators (reference objects with similar properties to pointers)
### Sequence Containers
Sequence containers implement data structures that can be accessed sequentially. 
- array: Static contiguous array (class template)
- vector: Dynamic contiguous array (class template)
- deque: Double-ended queue (class template)
- forward_list: Singly-linked list (class template)
- list: Doubly-linked list (class template)
### Associative Containers
Associative containers implement sorted data structures that can be quickly searched (O(log n) complexity). 
- Set: Collection of unique keys, sorted by keys (class template)
- Map: Collection of key-value pairs, sorted by keys, keys are unique (class template).
- multiset: Collection of keys, sorted by keys (class template)
- multimap: Collection of key-value pairs, sorted by keys (class template)
### Unordered Associative Containers
Unordered associative containers implement unsorted (hashed) data structures that can be quickly searched (O(1) amortized, O(n) worst-case complexity). 
- unordered_set: Collection of unique keys, hashed by keys. (class template)
- unordered_map: Collection of key-value pairs, hashed by keys, keys are unique. (class template)
- unordered_multiset: Collection of keys, hashed by keys (class template)
- unordered_multimap: Collection of key-value pairs, hashed by keys (class template)
### Container Adapters
container adapters provide a different interface for sequential containers.
- stack: Adapts a container to provide stack (LIFO data structure) (class template).
- queue: Adapts a container to provide queue (FIFO data structure) (class template).
- priority_queue: Adapts a container to provide priority queue (class template). 
### Flowchart 1
![sequence_and_ordered_containers](https://user-images.githubusercontent.com/103468688/223302588-fbfcd54d-1aa6-41ae-b24e-2f0fb0ea9abd.png)
### Flowchart 2
![adaptive_and_unordered_containers](https://user-images.githubusercontent.com/103468688/223302658-72d9ed57-c3df-40bb-80f5-a50a9598b468.png)

Reference Links:[geeksforgeeks](https://www.geeksforgeeks.org/containers-cpp-stl/)
