# INPUTS: Menu choice, name, options for quit etc 
# DATA: Array of names
# OUTPUT: Size of class, Menu, names, prompts for quit
# ADD PERSON IMPLEMENTION: User input, add to array .push?
# RANDOM ORDER IMPLEMENTATION: Copy array, select random name - get random index (number between 0 and array length -1 )
#   get name at random index, delete name from array, keep going until array length == 0
require_relative 'methods'
# require 'espeak'
require_relative 'group'
test_group = Group.new("Test Group", "./groups/test-group.txt")


# ESpeak::Speech.new("Welcome to the random group selector").speak
while true
    output_member_message(test_group.names_array.length)
    case menu_input_select
    when 1 
        adding = true
        while adding
            puts "Enter Name to add:"
            name = gets.chomp
            test_group.add_name_to_group(name)
            puts "#{name} was added to the group, would you like to add another?"
            unless gets.chomp.downcase == "yes"
                adding = false
            end
        end
    when 2
        test_group.display_random_order()
    when 3
        quit_program
    else 
        puts "Invalid input"
    end
    puts "Press any key to continue"
    gets
    system "clear"
end 

puts "Goodbye"
