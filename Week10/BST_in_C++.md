### Binary Search Tree
Binary Search Tree is a node-based binary tree data structure which has the following properties:

- The left subtree of a node contains only nodes with keys lesser than the node’s key.
- The right subtree of a node contains only nodes with keys greater than the node’s key.
- The left and right subtree each must also be a binary search tree.                           

![BST](https://user-images.githubusercontent.com/103468688/224972642-cee64b74-c7e7-4ed7-aac0-96a808d659c7.png)
### Searching in a BST:


Searching in BST involves the comparison of the key values. If the key value is equal to root key then, search successful, if lesser than root key then search the key in the left subtree and if the key is greater than root key then search the key in the right subtree.

Searching in BST algorithm:-

- Check if tree is NULL, if the tree is not NULL then follow the following steps.
- Compare the key to be searched with the root of the BST.
- If the key is lesser than the root then search in the left subtree.
- If the key is greater than the root then search in the right subtree.
- If the key is equal to root then, return and print search successful.
- Repeat step 3, 4 or 5 for the obtained subtree.
- 
### Insertion in a BST:
Insertion in BST involves the comparison of the key values. If the key value is lesser than or equal to root key then go to left subtree, find an empty space following to the search algorithm and insert the data and if the key is greater than root key then go to right subtree, find an empty space following to the search algorithm and insert the data.

### Deletion in a BST:

Deletion in BST involves three cases:-

First, search the key to be deleted using searching algorithm and find the node. Then, find the number of children of the node to be deleted.               

Case 1- If the node to be deleted is leaf node: If the node to be deleted is a leaf node, then delete it.                  
Case 2- If the node to be deleted has one child: If the node to be deleted has one child then, delete the node and place the child of the node at the position of the deleted node.              
Case 3- If the node to be deleted has two children: If the node to be deleted has two children then, find the inorder successor or inorder predecessor of the node according to the nearest capable value of the node to be deleted. Delete the inorder successor or predecessor using the above cases. Replace the node with the inorder successor or predecessor.             
###  Traversals in a BST:

There are 4 types of traversals of the Binary Search Tree.                   

Level Order Traversal: Each node of the tree is traversed level by level in order of its appearance.             

Pre-order Traversal: The nodes are traversed in the format of root and then left subtree and then right subtree.              

Inorder Traversal: The nodes are traversed in the format of left subtree and then root and then right subtree.                  

Post Traversal: The nodes are traversed in the format of left subtree  and then right subtree and then root                  

Reference Links:[geeksforgeeks](https://www.geeksforgeeks.org/binary-search-tree-data-structure/) [geeksforgeeks](https://www.geeksforgeeks.org/introduction-to-binary-search-tree-data-structure-and-algorithm-tutorials/) [geeksforgeeks](https://www.geeksforgeeks.org/applications-advantages-and-disadvantages-of-binary-search-tree/)
