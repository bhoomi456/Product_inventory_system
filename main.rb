require_relative "inventory_manager"
require_relative "product"

p1 = Product.new("mouse", 101, 4000, 20)
p2 = Product.new("keyboard", 102, 2000, 5)
p1.add_product

p2.add_product

p1.add_stock(101, 10)

p1.remove_stock(101, 30)

Product.display_product_details

p1.check_stock_status

p2.check_stock_status