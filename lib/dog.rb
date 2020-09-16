# Add your code here
class Dog
    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        names = @@all.map { |dog| dog.name }
        puts names.join("\n")
    end

    def save
        @@all << self
    end
end