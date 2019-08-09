def consolidate_cart(cart)
  new = {}
  cart.each do |item|
    if new[item.keys[0]]
      new[item.keys[0]][:count] += 1
    else 
      new[item.keys[0]] = {
        price: item.values[0][:price],
        clearance: item.values[0][:clearance],
        count: 1
      }
    end  
  end
  new
end





def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
