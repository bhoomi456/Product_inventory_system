module InventoryManager
  def add_stock(id, quantity)
    product = find_product(id)

    if product

      if quantity > 0
      product.quantity += quantity
      puts "Updated Stock: #{product.quantity}(#{product.name})"
      else
        raise "Invalid Quantity"
      end

    else
      puts "Product Not Found"
    end
  end

  def remove_stock(id, quantity)
    product = find_product(id)

    if product

      if quantity < 0
        raise "Invalid Quantity"
      elsif quantity <= product.quantity
        product.quantity -= quantity
        puts "Updated Stock : #{product.quantity}(#{product.name})"
      else
        raise "Out Of Stock"
      end

    else
      raise "Product Not Found"
    end
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

  