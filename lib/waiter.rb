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

  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select {|meal| meal.waiter == self}
  end
  
  def best_tipper
    best_tipped_meal = meals.max {meal_a, meal_b| 
      meal_a.tip <=> meal_b.tip} 
      return best_tipped_meal.customer
  end



end