# Here's what I'm learning with Ruby so far!

=begin
Here's a multi-line comment!
=end

# Variables:
a_new_variable = 'New Variable'

# Factorial function:
# Ruby lets you write recursive functions, cool!
def factorial(n) 
    raise "you must enter a valid number" if n < 1
    return 1 if n == 1
    n * factorial(n-1)
end
    
# To get a value from a user:

first_num = gets.to_i
# The above line will get a value from a user and convert it to an integer.

