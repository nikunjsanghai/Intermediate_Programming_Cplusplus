### Assignment Operator 
Your assignment operator should always do these three things:

- Take a const-reference input (const MyClass &rhs) as the right hand side of the assignment. The reason for this should be obvious, since we don't want to accidentally change that value; we only want to change what's on the left hand side.
- Always return a reference to the newly altered left hand side, return \*this. This is to allow operator chaining  a = b = c; .
- Always check for self assignment (this == &rhs). This is especially important when your class does its own memory allocation.
```
MyClass& MyClass::operator=(const MyClass &rhs) {
    // Check for self-assignment!
    if (this == &rhs) // Same object?
        return *this; // Yes, so skip assignment, and just return *this.

    ... // Deallocate, allocate new space, copy values, etc...

    return *this; //Return self
}
```
