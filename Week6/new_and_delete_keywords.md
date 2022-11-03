

- How to delete an array of pointers? 
```
int* a = new int[10];
delete[] a;
a = NULL; // a still exists, but it's a dangling pointer now, so we set it to NULL (or 0)
```


Reference Links:[stackoverflow](https://stackoverflow.com/questions/2814188/c-array-of-pointers-delete-or-delete) [cplusplus](https://cplusplus.com/forum/beginner/30683/) 
