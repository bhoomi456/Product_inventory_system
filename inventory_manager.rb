module InventoryManager
  def add_stock(id, quantity)
    product = find_product(id)

    raise "Product Not Found" unless product
    raise "Invalid Quantity" unless quantity > 0

    product.quantity += quantity
    puts "Updated Stock: #{product.quantity}(#{product.name})"
  end

  def remove_stock(id, quantity)
    product = find_product(id)

    raise "Product Not found" unless product
    raise "Invalid Quantity" unless quantity > 0
    raise "#{product.name} is out of stock" unless quantity >= product.quantity

    product.quantity -= quantity
    puts "Updated Stock : #{product.quantity}(#{product.name})"  
  end

  def check_stock_status
    product = find_product(id)
    if product.quantity > 0
      puts "#{product.name} is in stock"
    else
      puts "#{product.name} out of stock"
    end
  end
end

  