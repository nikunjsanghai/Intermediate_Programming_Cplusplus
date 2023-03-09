1. Walk through the iterator class. 
```
class Iterator
{
public:
	Iterator();// this is our baseline Iterator , and I think you can straight off take it from Prof's notes. 
	//double get_coeff() const;
	//double get_pow() const;// you can write this but there is no additional benefit
	void next();// this is also like baseline , we can take it straight from Prof's notes 
	void previous();// this is also like baseline , we can take it straight from Prof's notes 
	bool equals(Iterator other) const;// this is also like baseline , we can take it straight from Prof's notes 
private:
	Term* position;// If I declare it as Iterator pos=a.begin(); pos.position->coeff and now I can use this value. 
	Polynomial* container;
	friend class Polynomial;
};
```

2. Implementation of iterator class. 
Implementation of Iterator is not a hard task, what can be challenging is the fact that how to use this class in Polynomial class. 

3. The baseline add function and how to add the polynomial terms. 
```
Polynomial a(Term(-2,0))// in which the first variable is the coeff, and the second variable is the power. 
Term(double coeff, double pow):// can assign values using initializer list 
{
Term* next=nullptr;
Term* prev=nullptr;
}

Term a(-2,0);
Polynomial  p(a);
Polynomial p(Term(-2,0));
```
we need a parameterized constructor which will work for both R and L values;
```
Polynomial(const Term& t);// this binds to both L and R values. Imagine a simple class in which I have Simple(5); 5 cannot be equal to 8, this is core problem with l values, Simple(a), now this parameter which is a can change it's value from 5 to 8. 
Simple(int a)
{
a=8;
}
```
Moving further: 
```
void add(const Term& t);// t.coeff and t.pow
{
//little harder, but more effecient . You implement a sort like algorithm while inserting the nodes. 
// insert element at head by default then call the sort function after every addition 
this->sort();
}
sort()
{
int swapping =1;
while(swapping)
{
Iterator pos=this->begin();
swapping =0;
while(pos.equals(this->next->end())
{
if(pos.position->pow <pos.position->next.pow)
{
//do swapping of values here
swapping=1;
}
}
}
```

4. Overall code implementation.               
copy constructor :
```
Polynomial (const Term& t);
Polynomial(const Polynomial& t);// this is what enables the deep copy
Polynomial q(p);// then p is passed as a parameter to q to copy it's elements. 
for(auto pos=p.begin();!pos.equals(p.end());pos.next())
{
Term* temp= new Term(pos.position->coeff, pos.position->pow);
this->add(temp);
}
```


5. Term as a alias of Node in Prof's notes, Polynomial as an alias in Prof's notes. 

What is not present in Prof's notes: 
- It does not tell you how to handle an R value addition to the linked list. 
- Previously the addition was something like a.add(Polynomial(Term(2,2)); If you at the revised which I recommended it has been changed to a.add(Term(2,2)). 
-  we need a copy constructor and a copy assignment 
-  I confirmed with the Prof., that if there is a case in which after addition the co-eff is becomes zero your code is expected to delete the Term. 
