# Conditionals
    # If this is true then do this, if not, do this
    # A lot of the time we want to check for certain conditions to execute a spcific line of code
    # in ruby we can use if/elsif/else state ments to check for a condition
    number = 5

    if number.between?(1,10)
        puts "the number is between one and ten"
    elsif number.between?(11, 20)
        puts "The number is between 11 and 20"
    else
        puts "The number is bigger than 20"
    end

    # here the code that runs true to the condition will execute, this is like and if/else if/ else statement in Javascript

# Nothingness and Truthy in Ruby
    # NiL
    # "nothing" is still a thing in ruby
    # Everything in ruby is considered true unless it's NiL or False