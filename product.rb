class Product
  @@products = []
  def initialize(name, id, price, quantity)
    @name = name
    @id = id
    @price = price
    @quantity = quantity
  end

  def add_product
    @@products << self
    puts "NAME: #{@name}, ID: #{@id}, PRICE: #{@price}, QUANTITY: #{@quantity}"
  end
end

p1 = Product.new("mouse", 101, 4000, 20)
p1.add_product