- How to intialize an object A in class B as a pointer? 
```
class A
{
 protected;	
 int x;
 int y ;
public:
 A()//constructor
 {    
   x=25;
   y=17;   
   cout << "x: " << x << endl;
   cout << "y: " << y << endl;
 }
};

class B
{
B():a(new A){}
protected:
	A*a;
  }
```
