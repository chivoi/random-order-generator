

class Group
  attr_reader :name, :names_array, :file_path
  
  def initialize(name, file_path)
    @name = name
    @file_path = file_path
    @names_array = self.path_to_array || []
  end

  def add_name(name)
    return @names_array.push(name)
  end

  def to_s
    return "Name: #{@name} \nMembers: #{@names_array.sort}"
  end

  def path_to_array
    begin
      array = File.readlines(@file_path).map{|name| name.strip}
    rescue
      puts "Invalid path. Creating file"
      File.open(@file_path, "w") do |file|
        file.write("")
      end
      array = []
    end
    return array
  end

  def randomise_order
    return @names_array.shuffle
  end

  def display_random_order
    randomise_order.each do |name|
      puts name
    end
  end

end

group = Group.new("Test group", "./groups/test-group.txt")