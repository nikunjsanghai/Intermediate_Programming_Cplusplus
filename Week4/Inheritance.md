### Inheritance 
the capability of a class to derive properties and characteristics from another class is called Inheritance.
Inheritance is one of the most important features of Object-Oriented Programming.                             

Inheritance is a feature or a process in which, new classes are created from the existing classes.
The new class created is called “derived class” or “child class” and the existing class is known as the “base class” or “parent class”.
The derived class now is said to be inherited from the base class.                                

When we say derived class inherits the base class, it means, the derived class inherits all the properties of the base class, without changing the properties of base class and may add new features to its own.
These new features in the derived class will not affect the base class. The derived class is the specialized class for the base class.                             

- Sub Class: The class that inherits properties from another class is called Subclass or Derived Class.         
- Super Class: The class whose properties are inherited by a subclass is called Base Class or Superclass.    

Inheritance prevents repeated lines in a code: 
![inher_1](https://user-images.githubusercontent.com/103468688/196382297-6447f9aa-eac3-4ff7-a3a0-699f7344ce92.PNG)
With Inheritance:
![inher_2](https://user-images.githubusercontent.com/103468688/196382394-a9edb0da-6d61-4702-8d4d-70996aae2f0a.PNG)
**Note:Note: A derived class doesn’t inherit access to private data members. However, it does inherit a full parent object, which contains any private members which that class declares.**                   

- When a base class is privately inherited by the derived class, public members of the base class becomes the private members of the derived class and therefore, the public members of the base class can only be accessed by the member functions of the derived class. They are inaccessible to the objects of the derived class.
-  When the base class is publicly inherited by the derived class, public members of the base class also become the public members of the derived class. Therefore, the public members of the base class are accessible by the objects of the derived class as well as by the member functions of the derived class.





