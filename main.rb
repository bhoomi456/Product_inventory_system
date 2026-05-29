require_relative "inventory_manager"
require_relative "inventory"
require_relative "product"

p1 = Product.new("mouse", 101, 4000, 20)
p2 = Product.new("keyboard", 102, 2000, 5)



inventory = Inventory.new
inventory.add_product(p1)
puts "------------------------"
inventory.add_product(p2)
puts "------------------------"


inventory.add_stock(101, 10)
puts "------------------------"
inventory.add_stock(102, 10)



inventory.display_product_details

inventory.remove_stock(101, 20)
puts "------------------------"

inventory.display_product_details


inventory.check_stock_status(101)
puts "------------------------"


inventory.check_stock_status(102)


