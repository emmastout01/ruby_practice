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

