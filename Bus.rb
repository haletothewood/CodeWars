=begin

To use an analogy — a class is like the plans for the Death Star, 
where an object would be the Death Star itself. Or, a class could describe the 
abstract idea ‘Person’, but I — David — am a material instance of that 
class; an instantiated person, if you will. If you’re familiar with Plato’s 
theory of form and substance, classes and objects map to these ideas 
respectively.

Since classes make objects, and since objects form one of the fundamental 
building blocks in OO languages, you’ll need to understand how to make 
them, how they work, and where to use them.

I’ll focus on the first of those 3 tasks.
Objects: Methods and Instance Variables
Objects are composed of two fundamental concepts.
The first is what we in the biz call ‘state’. These are the ‘facts’ of 
the object. They constitute its ‘knowledge’. Each instantiated object 
has unique settings that belong to that object and it alone. While I 
share many elements with all other instantiated ‘people’, (we all have a 
name, an age and a birthday) — my own specific combination of these 
(David, 34, 26/1/1983) are unique to me and constitute my unique ’state’.
In Ruby the ‘state’ of an object is largely contained in ‘instance 
variables’, represented like a normal variable, but preceded by the 
@ symbol.

These variables belong to the entire object, and hence their scope is 
‘global’, *within the context of the object*. In other words, while 
a normal variable’s scope is limited to the space in which it was 
defined, instance variables are accessible from anywhere within an object.
The second fundamental concept is what the object ‘does’ — its methods — 
which exist to allow the author to manipulate the state of an object. 
My birthday might be set once — the day I’m born — and never again,
 but my name could possibly be changed. Methods can be created to 
 allow these settings to be viewed or updated, if so desired (we’ll 
 explain how later). When a new object is instantiated, it will exist 
 with access to all the methods defined in its class definition.
Let’s look at a simple example:

HINT: copy+pasting this code will bork your machine — read, understand, 
then write it out yourself by hand in a text editor and play with it.

Classes Checklist
- You open a class definition with the keyword ‘class’ and close it 
with the usual keyword, ‘end’
- ClassNames Follow CamelCase — NoSpaces, With EachWordTitleized
- You do not pass arguments to classes like you do with methods
- Instance variables are preceded by the @ symbol, and accessible 
everywhere within the object
- You create a new instance of a class by calling .new on the class 
itself
- Calling ‘new’ on a class will invoke the instantiated object’s 
‘initialize’ method.
- Parameters passed to ‘new’ will be passed along to the ‘initialize’ 
function.

‘New’ vs ‘Initialize’
We started with a simple ‘Person’ class with a single method, initialize. 
Why? Because the class method ‘new’ and the instance method ‘initialize’ 
are intimately connected:
Calling the class method ‘new’ will invoke an object’s ‘initialize’ method, passing along any parameters that were originally passed to ‘new’
Remember we said earlier that you can’t pass arguments to a class in the 
same way you would a method? Well, this is how it’s done in practise — 
by passing the required parameters when invoking the ::new method, which 
then passes them through to the #initialize method.
In other words, you have full control over your object’s initial state,
and it’s up to you to decide which specific information to require on 
initialization, as well decide on any default settings etc. You simply 
define this desired state by way of the ‘initialize’ method, and set this 
initial state by way of invoking the class method, ‘new’.
There’s super clever, rather complicated reasoning behind this, but for 
now, just remember that calling ::new on a class invokes its #initialize 
function, and arguments will get passed through.

State vs Attributes
So far, we’ve defined a Person class that’s initialized with an internal 
state — name and age. State is by default private — no other object can 
access another object’s instance variables.
However, an object that can’t do anything isn’t worth much, as you can’t 
do anything with it. In OO programming you’ll design methods that allow 
interaction with the outside world — these externally visible and 
executable elements of an object are known as its attributes.
Getters and Setters

We know how to define and instantiate a class, as well as how to control 
its initial ‘state’, the next step must be — how do we check and change 
the object’s state?

We check them with ‘accessor methods’, more commonly known as ‘getters’, 
and change them using accessor methods better known as ‘setters’. A 
‘getter’ is a simple function that allows you get a report of the current 
setting of an object’s state, and a ‘setter’ allows you to update it 
with a new setting.
For example, we have no way of asking the ‘Person’ defined above what 
their name is, nor any way of changing that name. In order to do so, 
we’d need to create those functions ourselves:

In the getter method in line 7, we simply create a method that allows 
us to call ‘name’ on the object and have it return the current setting 
of this variable:

def name
  @name
end

Remember — we didn’t need to pass anything in as an argument, because 
the instance variable @name is available everywhere inside the object.
In the ‘setter’ method, we create a method that allows us to update 
the name variable to whatever new name is passed in as a parameter:

def name=(new_name)
  @name = new_name
end

This second one — setters — can throw people sometimes, but really, 
it shouldn’t. The ‘equals’ sign can confuse people, but in fact (here) 
it’s a regular character, like all the rest.
It’s a simple piece of syntactic sugar:
Defining a method name ending in an ‘equals’ sign makes that method 
eligible to be used on the left hand side of a variable assignment.

In short:
david.name=(‘Mr J’)
is the same as:
david.name = ‘Mr J’

The only difference between the 2 is a little syntactic sugar 😉
You now know how to design classes, how to instantiate them, how to use 
instance variables and how to get/set them using instance methods. 
Now it’s time to start practising:
Make a Person class that initializes with name, age and a birthday
Make getter and setter methods for name
Make getter methods for age and birthday
Make a ‘celebrate birthday’ method that increments the person’s age by 1
Make a ‘greet’ function that takes a name (string) and returns a 
greeting to that name

Play with it — see what other functions you can create, have fun, 
go crazy, and tweets us a link to your solution!

Next time we’ll discuss some of the more advanced topics on Classes — Class 
Methods, Class Variables, Inheritance, Modules and where to use 
‘Composition over Inheritance’.

“Heart” this if you found it useful, and follow our blog to receive 
more content like this.

=end

class Bus
	def initialize (passengers, capacity, destination) #this means that when you call Bus.new with these parameters the new object inherits them
		@passengers = passengers
		@capacity = capacity
		@destination = destination
	end

	def passengers
		@passengers
	end

	def passengers=(new_passengers)
		@passengers = new_passengers
	end

	def capacity
		@capacity
	end

	def capacity=(new_capacity)
		@capacity = new_capacity
	end

	def destination
		@destination
	end
end

the_432 = Bus.new(23, 32, "Liverpool")
puts the_432.inspect #inspect returns all information about object including unique id
the_437 = Bus.new(9, 32, "Birkenhead")
puts the_437.inspect

puts the_437.passengers
puts the_432.capacity
puts the_437.destination

the_437.passengers = 14
puts the_437.passengers