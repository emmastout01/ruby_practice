# ruby_practice

## Here's what I'm learning in Ruby!
I just started learning Ruby, and I'm excited to dive in. I learned that Ruby was created with programmers in mind. It's intentionally written in a way that is readable and fun to write. So, let's check out what I've learned so far!

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


### Functions


### If statements

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
