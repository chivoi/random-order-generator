# Student Randomizer:

## Install:
```
bundle install
```
## Running the app
Bash script `runner.sh` included, you may need to change permissions to use the script or `ruby index.rb`
### Arguments 
- `-help` - displays help info
- `-info` - displays program info
- `-path {path}` - instantiates a group based on the path given

## Group usage
The Group Class requires a file to read located in the groups directory. It comes with test-group as an exapmle. See `.file_to_path` for implementation.

## Dependencies
Espeak Ruby gem requires install of espeak. Check t[he docs](https://github.com/dejan/espeak-ruby)
## Requirement
- Needs to use loops where possibly (no iterators)
- All variables in snake case
- Follow ruby conventions
- Take names as input
- See the size of the class
- Produce a random order
- Has to be able to output to the screen
- Store the names
- A rudimentary menu

## Extras (sprinkles)
- pause between output names
- Add data formatting
- Read a external file
- Write a external file
- Read out each name

## Implementation Details
- Use pop
