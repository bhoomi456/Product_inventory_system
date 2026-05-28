class Product
  include InventoryManager
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
  end
end

