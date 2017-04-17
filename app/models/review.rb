class Review
  attr_accessor :content, :customer, :restaurant

  ALL = []

  def initialize(content, name)
    @content = content
    @customer = Customer.new(name)
    @restaurant = restaurant
    ALL << self
  end

  def self.all
    ALL
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end




end
