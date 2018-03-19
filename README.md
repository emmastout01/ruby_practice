# ruby_practice

## Here's what I'm learning in Ruby!
I just started learning Ruby, and I'm excited to dive in. I learned that Ruby was created with programmers in mind. It's intentionally written in a way that is readable and fun to write. So, let's check out what I've learned so far!

Many of my notes were taken while watching Derek Banas' very helpful tutorial, Ruby Programming. I highly recommend it to anyone who wants to learn the basics of Ruby. 
https://www.youtube.com/watch?v=Dji9ALCgfpM 

### Variables
Convention in Ruby is to name variables with underscores, not camelCase. Start variables with a lowercase letter.

Ex: my_new_variable = 'Hello World!'

#### Constants

You can set constants in Ruby using all uppercase letters. 

Ex. A_CONSTANT = 4.5

In Ruby, you can in fact change a constant value. You'll get an error but Ruby will still let you change it. 

### Print and Puts
The Print command will print something to the screen.
The Puts command prints something to the screen and adds a new line after it.

Ex: print 'hello world'
    print 'hello again' --> 

    hello worldhello again

Ex: puts 'hello world' 
    print 'hello again' -->

    hello world
    hello again 


### Methods
Since everything in Ruby is an object, variables all have built-in methods. These are similar to JavaScript methods. Some methods include .length, .reverse and .upcase.

Ex: 'Hello world'.reverse -->

    dlrow olleH

```.to_i = to integer and .to_s = to string```

### Creating a File

You can actually create a file in Ruby, add data to that file, and display the file data. 

Ex: 
Create a file and indicate that you want to write things to that file:
```write_handler = File.new("newFile.out", "w")```

Then add text to that file:
```write_handler.puts('Some new text').to_s```

Close the file:
```write_handler.close```

Finally, display the data from the file:
```data_from_file = File.read('newFile.out')```

```puts 'Data from file: ' + data_from_file```


### Conditional statements

#### If Statements
If statements in Ruby look quite similar to if statement in JavaScript, with a couple of differences. The comparison operators and logical operators are the same as JavaScript, with the exception that in Ruby, if you would like you can type 'and, or, not' instead of using '&&, ||, !'. One difference is that you don't need {} around the code to execute. 

Ex. in Ruby:
```
age = 13

if (age >5) && (age <=)
    puts 'You're in kindergarten'
elsif (age >= 7) && (age <= 13)
    puts 'You're in middle school'
```

Another difference is that in Ruby, 'Else if' is written as 'elsif'.

#### More comparison operators
Another cool comparison operator Ruby supports is the <=> operator. When given two values, it will return either 1, 0, or -1. 

- Returns 1 when first value is greater
- Returns 0 when values are equal
- Returns -1 when second value is greater

Ex: 
```
5 <=> 10 = -1
4 <=> 2 = 1
3 <=> 3 = 0
```
One more comparison operator is 'unless'. We can say:

```
my_age = 12

unless my_age > 8 
    puts 'time for bed!'
else
    puts 'stay up later'
```

You can also write if statements at the end of blocks of code. 

Ex: 
```
has_cat = true

puts 'Meow' if has_cat == true
```

#### Case Statements

In this example the user is prompted to enter a greeting. Depending on what language they type in, they will get a different greeting.

```
print 'Enter greeting: '

greeting = gets.chomp

case greeting
when 'French', 'french'
    puts 'Bonjour'
    exit
when 'Spanish', 'spanish'
    puts 'Hola'
    exit
else 
    puts 'Hello'
end
```

#### Ternary Operator

Provides different input depending on a condition. This is also available in JavaScript.

Ex: ```puts (age >=21) ? 'I'll have a cocktail' : 'I'll stick with milk'```

### Loops

Ex: Write a loop that displays all even numbers 1-10.
```
x = 1

loop do
    x += 1

    next unless (x % 2) == 0
    puts x

    break if x >= 10
end
```

#### While Loops
We can also achieve the same result using a while loop:

```
y = 1

while y <= 10
    y +=1
    next unless (y % 2) == 0
    puts y
end
```

#### Until Loops
Yet another way we could do this is with an 'Until Loop':

```
a = 1

until a >= 10
    a +=1    
    next unless (a % 2) == 0
    puts a
end
```

#### For Loops

If we want to cycle through all of the items in an array, we can do so using a for loop: 
```
numbers = [1, 2, 3, 4, 5]

for number in numbers 
    puts "#{number}, "
end
```
This will loop through our array, 'numbers', and create a temporary variable 'number' that each item in our array will be stored in. It will print each of the numbers on the screen. (The syntax #{number} allows us to print the value of each array item.)

Another way to write a loop: 
```
pets = [Ikey, Snowball, Rex, Fluffy]

pets.each do | pet |
    puts 'Be sure to snuggle with #{pet} today!"
end
```

#### Ranges

This is the same loop we wrote above, except we declare the number range of our loop within the range. For example, if we want to output numbers 1-5, we can write:
```
(1..5).each do |i|  
    puts "#{i}"
end
```

### Functions

To declare a function, we start with 'def'. Here's the basic structure of a function in Ruby:

```
def function_name(parameter1, parameter2)
    return parameter1 + parameter2
end

function_name(1, 2) --> Output = 3
```

Important note: In Ruby, values are passed into functions by value. In other words, any value that changes inside of a function is not going to affect an outside value. 

### Strings

Most of the time we'll use double quotes to write strings, because they allow us to use interpolation (including equations/variables in our strings). Example:
```
friend = "Ikey"

my_string = "Hey there #{friend}!" --> Output = Hey there Ikey!

my_eggs = "I have #{4+8} eggs." --> Output = I have 12 eggs.
```

We can also check to see if a string contains a particular substring:
```
full_name = "Emma Stout"

full_name.include?("Emma")
```
As mentioned above, strings have many built-in methods that we can use on them. We can check to see if a string starts with a particular substring, how many vowels a string has, delete whitespace, etc. 

.chop will chop off the last character.
.chomp will eliminate a new line if it exists. If there is no new line, it's going to do nothing. We can also chomp off specific last characters by writing: .chomp('ing') --> This will eliminate 'ing' from the end of the string.

Bottom line: There are a whole lot of different ways you can manipulate strings in Ruby. 

### Class Objects

Ruby is an object-oriented language. Every object has attributes (aka instance variables) and capabilities (aka methods).

Inside a class, we can create an initialize function that will be called any time a new instance of that class is created.
```
class Animal 
    def initialize
        puts "Creating a New Animal"
    end
```

We can create 'setters' and 'getters':

To set an instance variable in Ruby, add the @ symbol. Ex:
```
    def set_name(new_name)
        @name = new_name
    end
```
    A 'getter' will automatically return the new name:
```
    def get_name
        @name
    end
```
Here's another way to write a getter:
```
    def name 
        @name
    end
```
And another way to write a setter: 
```
    def name=(new_name)
        if new_name.is_a?(Numeric)
            puts 'Name can be a number'
        else 
            @name = new_name
        end
    end
end
```
To create a new object:
```
cat = Animal.new
```
Here, we are setting the name:
```
cat.set_name('Ikey')
```
Here, we are getting the name, using our getter function 'name':
```
puts cat.name
```
But wait, there is an even easier way to create setters and getters! To create all setters and getters, we can do this:
```
class Dog
    attr_accessor :name, :height, :weight
```
Above, we have created setter and getter functions for all instance variables we wanted to create: in this case, name, height and weight. 

Moving on, here's a function within the class:
```
    def bark
        return "Generic bark"
    end 
end
```
Now, we can create a new Dog:
```
rover = Dog.new

rover.name = "Rover"

puts rover.name --> Output = "Rover"
```

#### Class inheritance

Whenever we inherit from another class, our new class gets all of the methods and instance variables from the parent class.

Let's create another class to demonstrate this. We can either inherit things, or also overwrite them. Here, let's overwrite our 'bark' method:

class Sheltie < Dog 
    def bark 
        return "Woof Woof"
    end
end

tiny_dog = Sheltie.new
tiny_dog.name = "Tiny Dog"

printf allows us to do formatted printing to the screen. 

printf "%s goes %s", tiny_dog.name, tiny_dog.bark()

Above, %s represents 'string'

### Modules

Modules are also made up of methods and instance variables, like classes, but they can't be instantiated. In other words, they can't be turned into an object that we could use. But they CAN be inherited by classes. So, we use them to allow classes to inherit things, because classes can inherit multiple modules. 

Modules are stored in different files. In order to have access to those modules, we need to 'require' them at the top of our new file. 

Here's a module:
```
module Human
    attr_accessor :name, :height, :weight

    def run 
        puts self.name + " runs"
    end
end
```
If we want to include the human module in a class, here's how we do it:
```
class Athlete 
    include Human
    prepend Smart
```
If we want our module will supercede the class, we will use 'prepend' instead of 'include'. This means that even if our new class has the same method as a module, the module's method rules. 

    
