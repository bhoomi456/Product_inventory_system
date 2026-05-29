class Product
  attr_accessor :name, :id, :price, :quantity
  
  def initialize(name, id, price, quantity)
    @name = name
    @id = id
    @price = price
    @quantity = quantity
  end
end

