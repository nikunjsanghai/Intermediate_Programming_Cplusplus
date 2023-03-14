### Shallow Copy vs Deep Copy
Creating a copy of an object by copying data of all member variables as it is, is called shallow copy while creating an object by copying data of another object 
along with the values of memory resources that reside outside the object but handled by that object, is called deep copy.

In general, creating a copy of an object means creating an exact replica of the object having the same literal value, data type, and resources.

Depending upon the resources like dynamic memory held by the object, either we need to perform Shallow Copy or Deep Copy in order to create a replica of the objec
In general, if the variables of an object have been dynamically allocated then it is required to do a Deep Copy in order to create a copy of the object.

In shallow copy, an object is created by simply copying the data of all variables of the original object.
This works well if none of the variables of the object are defined in the heap section of memory. 
If some variables are dynamically allocated memory from the heap section, then copied object variable will also reference the same memory location.

This will create ambiguity and run-time errors dangling pointer. Since both objects will reference the same memory location, 
then change made by one will reflect those change in another object as well. Since we wanted to create a replica of the object, 
this purpose will not be filled by Shallow copy.                    

Example:
```
class Test
{
    int a;
    int *p;
    Test (int x)
    {
        a = x;
        p = new int[a];
    }
    Test (const Test &t)
    {
        a = t.a;
        p = t.p;
    }
};
```
Shallow Copy Code:
```
int main(){
      Test t (5);
      Test t2 (t);
}
```
Deep Copy Constructor:
```
Test(const Test &t){
      a = t.a;
      p = new int [a];
}
```
