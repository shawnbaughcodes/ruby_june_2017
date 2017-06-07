class Mammal
    attr_reader :health

    def initialize
        @health = 150
    end

    def display_health
        puts @health
    end
end

# human = Mammal.new.display_health
