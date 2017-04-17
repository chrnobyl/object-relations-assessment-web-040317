class Customer
  attr_accessor :first_name, :last_name

  ALL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @names = []
    @names << first_name + " " last_name
    ALL << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    arr = []
    name.split(" ")
    self.all.each do |k, v|
      if k == @first_name && v == name[0]
        arr << v
      end
      if k == @last_name && v == name[1]
        arr << v
      end
    end
      return arr.join
  end

  def self.find_all_by_first_name(name)
    ALL.each do |k|
      if k.include?(name) == true
        return k
      end
    end
  end

  def self.all_names


  end

  def add_review(restaurant, content)
    Review.new(content)
    Review.restaurant = restaurant
    Review.customer = self
  end



end
