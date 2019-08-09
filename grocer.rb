def consolidate_cart(cart)
  new = {}
  cart.each{ |item|
    if new[item.keys[0]]
      new[item.keys[0]][:count] += 1
    else 
      new.push(cart[index].keys)
      cart[index] = {
        :price => cart[index][:price],
        :apply_clearance => cart[index][:clearance],
        :count => 1
      }
  }
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
