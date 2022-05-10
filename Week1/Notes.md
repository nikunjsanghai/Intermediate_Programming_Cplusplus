# Initializer List 
It is not to be confused with std::initializer_list. In the definition of a constructor of a class the initlizer list specifies values of non-static data members. 

Example:

include<iostream.h>
using namespace std;
class demonstrating
{
public:
demonstrating();
demonstrating(int x,int y);
private:
int x;
int y;
}
demonstrating::demonstrating:x(0)y(0){}
demonstrating::demonstrating:x(x1),y(y1){}
int main()
{
demonstrating d;
demonstrating d(1,2);
cout<<"End of execution";
}
