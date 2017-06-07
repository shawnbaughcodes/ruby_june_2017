# GETTER AND SETTER METHOS IN CLASS
# 1
class User
  attr_accessor :first_name
  attr_accessor :last_name
end
# 2
class User
    attr_accessor :first_name, :last_name
    def initialize(f_name, l_name)
      @first_name = f_name
      @last_name = l_name
    end
end
steph = User.new("Stephen", "Curry")
puts steph.first_name + ' ' + steph.last_name

# ******METHODS********
# 1
class User
  # creating instance methods that get and set the first_name and last_name attributes
  attr_accessor :first_name, :last_name

  def initialize(f_name, l_name)
    @first_name = f_name
    @last_name = l_name
  end

  def full_name
    puts "I am #{@first_name} #{@last_name}"
  end

  def say_hello
    puts "Hello!"
  end
end
u = User.new("John", "Doe")
u.full_name # => "I am John Doe"
u.say_hello # => "Hello!"

# 2
class User
  # previous code removed for brevity

  def self.foo
    puts "This is a class method"
  end
end
# u = User.new("Jane", "Doe")
# u.foo # => NoMethodError: undefined method `foo'
User.foo # => "This is a class method"

# ************CLASS EXAMPLE**************
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
end
# now using above class to create objects
branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA")
branch.display_all
branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA")
branch2.display_all

********TEST********
code
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

# *********SELF SHIT**********
# 1
class Fixnum
  def who_am_i
    puts self
  end
end
class String
  def who_am_i
    puts self
  end
end
4.who_am_i # => 4
15.who_am_i # => 15
"string".who_am_i # => "string"
"hello_world".who_am_i # => "hello_world"

# 2
class Mammal
  def initialize
    puts "I am alive"
  end
  def breath
    puts "Inhale and exhale"
  end

  def who_am_i
    # printing the current object
    puts self
  end
end
my_mammal = Mammal.new # => "I am alive"
my_mammal.who_am_i # => #<Mammal:0x007f9e86025dd8>
my_mammal.who_am_i.breath # => undefined method `breath' for nil:NilClass (NoMethodError)

# 3
class Mammal
  def initialize
    puts "I am alive"
    self
  end
  def breath
    puts "Inhale and exhale"
    self
  end

  def who_am_i
    puts self
    self
  end
end
my_mammal = Mammal.new.who_am_i.breath

# ***********VISIBILITY*************
# PUBLIC
class Mammal
  def breath
    puts "Inhale and exhale"
  end

  def eat
    puts "Yum yum yum"
  end
end
class Human < Mammal #****** Human inherits from Mammal****
  def subclass_method
    breath
  end
  def another_method
    self.eat
  end
end
person = Human.new
person.subclass_method
person.another_method

# PROTECTED
class Mammal
  # previous code removed for brevity

  def calling_speak
    speak
  end

  protected
    def speak
      puts "I am a protected method"
    end
end
class Human < Mammal
  # previous code removed for brevity

  def explicitly_speak
    self.speak
  end

  def implicitily_speak
    speak
  end
end
mammal = Mammal.new
mammal.speak # => protected method `speak' called for #<Mammal:0x007fa5438183d8> (NoMethodError)
mammal.calling_speak # => I am a protected method
person = Human.new
person.speak # => protected method `speak' called for #<Human:0x007fedfe824710> (NoMethodError)
person.explicitly_speak # => I am a protected method
person.implicitily_speak # => I am a protected method

# PRIVATE
class Mammal
  # previous code removed for brevity

  def calling_cry
    cry
  end

  private
    def cry
      puts "Sniff sniff..."
    end
end
class Human < Mammal
  # previous code removed for brevity

  def explicitly_cry
    self.cry
  end

  def implicitly_cry
    cry
  end
end
mammal = Mammal.new
mammal.calling_cry # => Sniff sniff...
mammal.cry # => private method `cry' called for #<Mammal:0x007fd9830de5f8> (NoMethodError)
person = Human.new
person.cry # => private method `cry' called for #<Human:0x007f8f298de248> (NoMethodError)
person.explicitly_cry # => `explicitly_cry': private method `cry' called for #<Human:0x007f87a30bf450> (NoMethodError)
person.implicitly_cry # => Sniff sniff...
