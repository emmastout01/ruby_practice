# Here's what I'm learning with Ruby so far!

# Variables:
a_new_variable = 'New Variable'




# Factorial function:
# Ruby lets you write recursive functions, cool!
def factorial(n) 
    raise "you must enter a valid number" if n < 1
    return 1 if n == 1
    n * factorial(n-1)
end
    


