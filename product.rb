class Product
  @@products = []
  def initialize(name, id, price, quantity)
    @name = name
    @id = id
    @price = price
    @quantity = quantity
  end
end

p1 = Product.new("mouse", 101, 4000, 20)