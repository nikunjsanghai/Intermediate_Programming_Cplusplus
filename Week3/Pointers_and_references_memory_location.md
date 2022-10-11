Example:
```
    int a=10;
    int&b =a;
    int*ptr=&a;
    cout<<"Memory location of a:"<<&a<<endl;
    cout<<"Memory location stored inside ptr:"<<ptr<<endl;
    cout<<"Memory location of reference b:"<<&b<<endl;
    cout<<"Memory location of ptr:"<<&(ptr)<<endl;
```
Output:
```
Memory location of a:0x7ffd5c6ab574
Memory location stored inside ptr:0x7ffd5c6ab574
Memory location of reference b:0x7ffd5c6ab574
Memory location of ptr:0x7ffd5c6ab578
```
