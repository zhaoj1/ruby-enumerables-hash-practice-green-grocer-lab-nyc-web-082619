def consolidate_cart(cart)
  new = {}
  cart.each { |index|
    if new[index].keys
      new[index][:count] += 1
    else
      new.push(cart[index].keys) = { 
        :price => cart[index][:price],
        :clearance => cart[index][:clearance],
        :count => 1
      }
  }
    
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
