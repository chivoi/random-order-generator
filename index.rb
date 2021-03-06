# INPUTS: Menu choice, name, options for quit etc 
# DATA: Array of names
# OUTPUT: Size of class, Menu, names, prompts for quit
# ADD PERSON IMPLEMENTION: User input, add to array .push?
# RANDOM ORDER IMPLEMENTATION: Copy array, select random name - get random index (number between 0 and array length -1 )
#   get name at random index, delete name from array, keep going until array length == 0
require_relative 'methods'
# require 'espeak'
require_relative 'group'
require_relative 'errors'

# Handle command line arguments

if ARGV.length > 0
    flag, *rest = ARGV
    ARGV.clear
    case flag
    when '-help'
        puts "Read the readme"
        exit
    when '-path'
        puts rest[0]
        group = Group.new("Default", rest[0])
    when '-info'
        puts "This program is using Ruby version: #{RUBY_VERSION}"
    else
        puts "Invalid argument"
    end
end

# Group assignment
group ||= Group.new("Test Group", "./groups/test-group.txt")

# main programme loop
begin
while true
    output_member_message(group.names_array.length)
    case menu_input_select
    when 1 
        adding = true
        while adding
            puts "Enter Name to add:"
            name = gets.chomp
            group.add_name_to_group(name)
            puts "#{name} was added to the group, would you like to add another?"
            unless gets.chomp.downcase == "yes"
                adding = false
            end
        end
    when 2
        group.display_random_order()
    when 3
        quit_program
    else 
        raise ValidationError
    end
    puts "Press any key to continue"
    gets
    system "clear"
end 

rescue ValidationError
    puts "Invalid input"
    retry
rescue
    puts "Oops something went wrong"
    exit
end

puts "Goodbye"
