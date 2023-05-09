### Typedef
typedef keyword in C++ is used for aliasing existing data types, user-defined data types, and pointers to a more meaningful name. Typedefs allow you to give descriptive names to standard data types,
which can also help you self-document your code. Mostly typedefs are used for aliasing, only if the predefined name is too long or complex to write again and again. The unnecessary use of typedef is generally not a good practice.

Syntax:
```
typedef <current_name> <new_name>
```
Example:
```
typedef std::vector<int> vInt;
```
