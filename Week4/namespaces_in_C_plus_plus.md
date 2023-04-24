### Namespaces
A namespace is a declarative region that provides a scope to the identifiers (the names of types, functions, variables, etc) inside it.
Namespaces are used to organize code into logical groups and to prevent name collisions that can occur especially when your code base includes multiple libraries. 
All identifiers at namespace scope are visible to one another without qualification. Identifiers outside the namespace can access the members by using the 
fully qualified name for each identifier, for example std::vector<std::string> vec;, or else by a using Declaration for a single identifier (using std::string),
or a using Directive for all the identifiers in the namespace (using namespace std;). Code in header files should always use the fully qualified namespace name.

The following example shows a namespace declaration and three ways that code outside the namespace can accesses their members.
```
#include <iostream>
using namespace std;
// first name space
namespace first_space
{
  void func()
  {
     cout << "Inside first_space" << endl;
  }
}
 
// second name space
namespace second_space
{
  void func()
  {
     cout << "Inside second_space" << endl;
  }
}
using namespace first_space;
int main ()
{
   // This calls function from first name space.
  func();
  return 0;
}
```
```
namespace ContosoData
{
    class ObjectManager
    {
    public:
        void DoSomething() {}
    };
    void Func(ObjectManager) {}
}
```
Use the fully qualified name:
```
ContosoData::ObjectManager mgr;
mgr.DoSomething();
ContosoData::Func(mgr);
```
Use a using declaration to bring one identifier into scope:
```
using ContosoData::ObjectManager;
ObjectManager mgr;
mgr.DoSomething();
```
Use a using directive to bring everything in the namespace into scope:
```
using namespace ContosoData;

ObjectManager mgr;
mgr.DoSomething();
Func(mgr);
```
Reference Link: [microsoft](https://learn.microsoft.com/en-us/cpp/cpp/namespaces-cpp?view=msvc-170)[geeksforgeeks](https://www.geeksforgeeks.org/namespace-in-c/#)
