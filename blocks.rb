#Blocks
    # Blocks are like methods but without a name
    # Blocks can receive arguments and return a value
    # Blocks can only be created when passing them to method when the method is called

    5.times do 
        puts "Hello this is a block"
    end

# Alternative block syntax
    # use curly braces for the alternative syntax for a block
    5.times {puts "hello"}

# Block Arguments
    # you can pass an argument to a block by wrapping it in pipes
    # in this case we loop through the arrray and number represents the element at each iteration
    [1,2,3,4,5].each do |number|
        puts "#{numebr}"
    end

    # same as
    [1,2,3,4,5].each {|number| puts "${number}"}

# Block return values
    # Blocks will return values like methods do
    p [1, 2, 3, 4, 5].collect { |number| number + 1 }
    # the code above will collect an array of numbers and transform the values into another array

# Iterators
    # Methods on arrays and hashes the require a block are called iterators
    # When we say iterate we mean the method takes the elements of the array or hash and does somehting with them
    # Iterators are chianable

    numbers = [1, 2, 3, 4, 5].collect.with_index do |number, index|
        number + index
      end
      p numbers # ==> [1, 3, 5, 7, 9]