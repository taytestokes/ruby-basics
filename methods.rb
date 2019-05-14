#Objects have methods
    # Methods are an objects behaviour
    # Objects have methods that allow us to do stuff to them
    # An objects methods are things that the object can "do"
    # We talk to objects by "calling" the objects methods that they respond to

# Calling Methods
    # We can use dot notation to access an objects method
    object.method

    # Examples of methods for a String class object
    name = "Tayte"
    name.upcase # ==> "TAYTE"

    name.downcase # ==> "tayte"

    name.length # ==> 5

# Passing Arguments
    # An argument is extra information that we can provide to a method
    # We can pass arguments by appending parenthesis to a method
    name = "Tayte"
    name.delete('Tay') # ==> "te"

    name.prepend("Hello ") # ==> "Hello Tayte"

# Listing Methods
    # calling object.methods will give you a list of the different methods you can use for the object type

# Chainning Method Calls
    # Methods can be chained to an object, because a method will return an object then we can call a new method immediately on that new object given to us

    name = "Tayte"
    name.prepend("Hello ").upcase # ==> "hello tayte"

# Predicate Methods
    # Some methods end with a '?'
    # These methods return either true or false

    # Number predicate methods
    5.odd? # ==> returns true
    5.even? # ==> returns false

    # String predicate methods
    name = "Tayte"
    name.start_with?("T") # ==> true
    name.start_with?("A") # ==> false

    name.include("r") # ==> false
    name.include("ayt") # ==> true

# Bang Methods
    # Bang methods are methods that are part of an object that will modify the object being called on
    # Bang operators will end with a !
    name = "Tayte"
    name.downcase! # ==> modifies the name variable and lowercases the name

    # Bang methods should generally be avoided to keep the data immutable

# Writing Methods
    # A method is a named block of code that takes input and returns output
    # Methods define behaviour for an object
    # Methods make our code reusable by encapsulating the code and sticking a name on it

    # What makes a method?
        # The four main parts that make a method a method
        # A name
        # A block of code
        # Accepting input (optional)
        # returning output

    # Defining a method
        # use the def keyword to define a method, this only defines it and does not use it
        # use the end keyword to kill the execution of the method

        #EX:
            def add_number(number)
                number + 2
            end

    # Calling a method
        # once a method is defined we then can call that method to use it
        add_number(10) # this will execute our method and passes 10 in as the argument
    
    # Return values
        # In ruby a method will always return exactly one object
        # we will not use the return keyword like other languages
        # the method will return the value of the last evaluated statement
    
# Scopes
    # Scopes are like areas where certain data is visible
    # In programming, the scope of a name is where that name is valid
    # name are defined in a certain scope

    def add_number(number)
        number + 2
    end

    puts add_number(5)
    puts number # ==> this will break your code because it is trying to use code that does not exist
    # this is because number is local to the scope of the add_number method and not the global scope

# Combining Methods
    # What if one method is not enough ?
    # We can call methods from other methods
    def add_one(number)
        number + 1
    end

    def add_two(number)
        number = add_one(number)
        add_one(number)
    end

    puts add_two(3) # ==> this would output 5

    def sum(number, other)
        number + other
    end

    puts sum(3,2) # ==> this recreates the + operator funcitonality

    # lets combine these methods together
    def add_one(number)
        sum(number, 1)
    end

    def add_two(number)
        sum(number, 2)
    end

# Printing things
    # We use the method p to get an understaning what is going on in our script
    # p method was written to shorten how many times you would need to run puts something.inspect

    # the p method looks like this
        def p(object)
            puts object.inspect
        end

        