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