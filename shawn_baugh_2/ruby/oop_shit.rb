# # GETTER AND SETTER METHOS IN CLASS
# # 1
# class User
#   attr_accessor :first_name
#   attr_accessor :last_name
# end
# # 2
# class User
#     attr_accessor :first_name, :last_name
#     def initialize(f_name, l_name)
#       @first_name = f_name
#       @last_name = l_name
#     end
# end
# steph = User.new("Stephen", "Curry")
# puts steph.first_name + ' ' + steph.last_name
#
# # ******METHODS********
# # 1
# class User
#   # creating instance methods that get and set the first_name and last_name attributes
#   attr_accessor :first_name, :last_name
#
#   def initialize(f_name, l_name)
#     @first_name = f_name
#     @last_name = l_name
#   end
#
#   def full_name
#     puts "I am #{@first_name} #{@last_name}"
#   end
#
#   def say_hello
#     puts "Hello!"
#   end
# end
# u = User.new("John", "Doe")
# u.full_name # => "I am John Doe"
# u.say_hello # => "Hello!"
#
# # 2
# class User
#   # previous code removed for brevity
#
#   def self.foo
#     puts "This is a class method"
#   end
# end
# # u = User.new("Jane", "Doe")
# # u.foo # => NoMethodError: undefined method `foo'
# User.foo # => "This is a class method"
#
# # ************CLASS EXAMPLE**************
# class CodingDojo
#   @@no_of_branches = 0
#   def initialize(id, name, address)
#     @branch_id = id
#     @branch_name = name
#     @branch_address = address
#     @@no_of_branches += 1
#     puts "Created branch #{@@no_of_branches}"
#   end
#   def hello
#     puts "Hello CodingDojo!"
#   end
#   def display_all
#     puts "Branch ID: #{@branch_id}"
#     puts "Branch Name: #{@branch_name}"
#     puts "Branch Address: #{@branch_address}"
#   end
# end
# # now using above class to create objects
# branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA")
# branch.display_all
# branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA")
# branch2.display_all

# ********TEST********
# code
class CodingDojo
  @@no_of_branches = 0
  def initialize(id, name, address)
    @branch_id = id
    @branch_name = name
    @branch_address = address
    @@no_of_branches += 1
    puts "Created branch #{@@no_of_branches}"
  end
  def hello
    puts "Hello CodingDojo!"
  end
  def display_all
    puts "Branch ID: #{@branch_id}"
    puts "Branch Name: #{@branch_name}"
    puts "Branch Address: #{@branch_address}"
  end
  def self.num_of_branches
    @@no_of_branches
  end
end
seattle = CodingDojo.new(1, "Seattle", "123 Seattle Avenue")
san_jose = CodingDojo.new(2, "San Jose", "456 San Jose Boulevard")
burbank = CodingDojo.new(3, "Burbank", "789 Burbank Street")
puts seattle.branch_name
