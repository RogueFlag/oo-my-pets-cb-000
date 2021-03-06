class Owner
  # code goes here
  @@all = []
  attr_accessor :name, :pets
 attr_reader :species


def initialize(species)
  @species = species
  @pets  = {:fishes => [], :cats=> [], :dogs=> []}
  @@all << self

end

def self.all
  @@all
end

def self.reset_all
  @@all.clear

end

def self.count
  @@all.count
end

def say_species
"I am a human."
end

def buy_fish(name)
  @pets[:fishes] << Fish.new(name)
end

def buy_cat(name)
  @pets[:cats] << Cat.new(name)
end

def buy_dog(name)
pets[:dogs] << Dog.new(name)
end

def walk_dogs
  pets[:dogs].collect {|walk| walk.mood = "happy"}
end

 def play_with_cats
pets[:cats].collect {|play| play.mood = "happy"}
end

def feed_fish
pets[:fishes].collect {|feed| feed.mood = "happy"}
  end

def sell_pets
    pets.each do |type, pets|
      pets.each {|o|o.mood = "nervous"}
    end
    pets.clear
end

def list_pets
"I have 2 fish, 3 dog(s), and 1 cat(s)." 
end
end
