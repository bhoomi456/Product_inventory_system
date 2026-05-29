class Inventory
  include InventoryManager
  def initialize
    @products = []
  end

  def add_product(product)
    @products << product
    puts "Product Added Successfully"
    puts "NAME: #{product.name}, ID: #{product.id}, PRICE: #{product.price}, QUANTITY: #{product.quantity}"
  end

  def find_product(id)
    @products.find { |p| p.id == id}
  end

  def display_product_details
    puts "----Products Details----"
    @products.each do |product|
      puts "Name : #{product.name}"
      puts "ID: #{product.id}"
      puts "Price: #{product.price}"
      puts "Quantity: #{product.quantity}"
      puts "-------------------------------"
    end
  end

end