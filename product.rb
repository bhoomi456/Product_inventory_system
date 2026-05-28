class Product
  @@products = []
  attr_accessor :name, :id, :price, :quantity
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

  def find_product(id)
    @@products.find { |p| p.id == id}
    puts "product #{@id}"
  end
end

p1 = Product.new("mouse", 101, 4000, 20)
p1.add_product
p1.find_product(101)