require_relative "mammal"
class Dog < Mammal
    def display_health
        puts @health
    end
    def pet#(*value)
        # value.flatten.reduce(:+)
        @health += 5
        self
    end
    def walk#(*value)
        # value.flatten.reduce(:+)
        @health -= 1
        self
    end
    def run#(*value)
        # value.flatten.reduce(:+)
        @health -= 10
        self
    end
end

puppy = Dog.new.walk.walk.walk.run.run.pet.display_health
