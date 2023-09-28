Scope and Lifetime of a variable are two different things.
### What is Scope?
Scope is the region or section of code where a variable can be accessed.
### What is a lifetime?
Lifetime is the time duration where an object/variable is in a valid state.

### Example
```
foo()
{
  int *p;
  {
    int x = 5; 
    p = &x;
  }
  int y = *p;
}
```
In this example scope of *p is entire function body after it was created.However, x is a non-static local/automatic variable and hence the lifetime of x ends with it's scope i.e the closing brace of } in which it was created, once the scope ends x does not exist. *p points to something that doesn't exist anymore.

Note that technically x does not exist beyond its scope however it might happen that the compiler did not remove the contents of x and one might be able to access contents of x beyond its scope through a pointer(as you do).However, a code which does this is not a valid C++ code. It is a code which invokes Undefined Behaviour. Which means anything can happen(you might even see value of x being intact) and one should not expect observable behaviors from such a code. [link](https://stackoverflow.com/questions/11137516/scope-vs-lifetime-of-variable)
