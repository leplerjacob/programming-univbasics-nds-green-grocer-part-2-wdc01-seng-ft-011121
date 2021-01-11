require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  updated_cart = cart
  if coupons.count > 0
    coupons.each{|coupon|
      cart.each{|item|
        if item[:item] == coupon[:item]
          updated_cart.push({:item => "#{item[:item]} W/COUPON", :price =>
              (coupon[:cost] / coupon[:num]), :clearance => item[:clearance], :count => 0
            })
            # binding.pry
          for i in 0...coupon[:num]
            for f in 0...item[:count]
              updated_cart.each{|up_item|
                if up_item[:item]
              }
            end
          end
        end
      }
    }
  end
  
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
