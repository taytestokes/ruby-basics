#Classes in ruby
    # Classes create objects
    # Objects are instances of classes

    # Classes haves a bunch of characteristics, but most importantly, every class defines a set of methods that are specific to the tupe of object created
    # Everytime an object is instantiated from a class, the object inherits all of the methods that are specific to the methods
    # Objects inheirt methods from their classes

# Writing Classes
    # Defining a class

    # You define a class by using the keyword class
        # the classes name should be capitalized
        # use CamelCase for classes and snake_case for variables
    class Calculator
    end

    # how to create an instance from a class, or object
    Calculator.new # we can create an instance by using the keyword new
    # The method new is defined on every class, and returns a new instance of the class.

    p Calculator.new # ==> #<Calculator:0x007fb2fbe50910>

# Defining Instance Methods
    # Methods can be defined and called on objects
    # Methods can also be defined on classes
    # Methods that are available on clases are reffered to as class methods

    # How we create a class method
    class Calculator
        def sum(number, other)
            number + other
        end
    end

    # How can we use this new class method?
        # We can instantiate a new object from the class
        # then we will use dot notation on the instance to use the sum method
        calc = Calculator.new
        puts calc.sum(2,3)


    # lets finish the calc
    class Calculator
        def plus(number, other)
          number + other
        end
      
        def minus(number, other)
          number - other
        end
      
        def multiply(number, other)
          number * other
        end
      
        def divide(number, other)
            #since an integer divided by an integer will return and integer, we will need to convert the integer to a float to allow decimal values
          number.to_f / other
        end
      end

# Initializing Objects
    # lets define a new class
    class Person
        #before we add any methods to the class, we want to give it initial data
        def initalize(name)
            # initialize is a special method in ruby and it will be used everytime you intansiate a new object from a class using the new keyword
            # this will pass the arguments given to the new method onto the initalize class method ex: Person.new('Tayte')
        end
    end

# Instance Variables
    # An objects own knowledge
    # An instance variable are variables that are local to the objects scope
    # An object will keep it's instance variable around as long as it exists
    class Person
        def initalize(name)
            @name = name
        end
    end

# Attriubute Readers
    # Asking for information
    # Attribute readers are methods that output the evaluation of an instance variable
    # We can read our attributes or instance variables by calling them
    class Person
        def initalize(name)
            @name = name
        end

        def sayName
            @name
        end
    end

    person = Person.new('Tayte')
    puts person.sayname # ==> will output 'Tayte

# Attribute Writers
    # Sets information
    # Attribute writers are methods that will set instance variables
    class Person
        def initalize(name)
            @name = name
        end

        def sayName
            @name
        end
        # this will set the instance variable of password
        def password=(password)
            @password = password
        end
    end

    person = Person.new("Tayte")
    person.password=("super secret")
    # we could also write this like
    person.password = "super secret" 
    # this is because we are using the = operator in  our attribute write like so password=

# State And Behaviour
    # Data and Methods

    # An object encapsulates state, which is private to the object, and exposes behaviour by publicly exposing methods to handle that data

# Interacting Objects 
    class Person
        def initialize(name)
        @name = name
        end
    
        def name
        @name
        end

        def greet(other)
            puts "Hi " + other.name + "!"
        end
    end


    person = Person.new("Anja")
    friend = Person.new("Carla")

    person.greet(friend) # ==> "Hi Carla!"

# Object Scope and Self
    # Objects remember everything about themself
    # We can use the keyword self to refer to the object that owns th executing code