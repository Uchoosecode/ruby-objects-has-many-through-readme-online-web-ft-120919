class Waiter

  attr_accessor :name, :years_of_exp
  
  @@all = []
  
  def initialize(name, years_of_exp)
    @name = name
    @years_of_exp = years_of_exp
    @@all << self
  end
  
  def self.all
    @@all
  end

  def new_meal(name, years_of_exp)
    Meal.new(self, name, years_of_exp)
  end





end