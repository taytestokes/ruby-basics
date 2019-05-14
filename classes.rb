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