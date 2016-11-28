def pet_shop_name(pet_shop)
  name = pet_shop[:name]
  return name
end

def total_cash(pet_shop)
  sum = pet_shop[:admin][:total_cash]
  return sum.to_i
end

def add_or_remove_cash(pet_shop, a)
  cash = pet_shop[:admin][:total_cash] += a
  return cash
end

def add_or_remove_cash(pet_shop, a)
  cash = pet_shop[:admin][:total_cash] += a
  return cash
end

def pets_sold(pet_shop)
  sold = pet_shop[:admin][:pets_sold]
  return sold
end

def increase_pets_sold(pet_shop, a)
  sold = pet_shop[:admin][:pets_sold] += a
  return sold
end

def stock_count(pet_shop)
  count = pet_shop[:pets].count
  return count
end

# def pets_by_breed(pet_shop, breed)
#   pets = 0
#   if pet_shop[:pets][:breed].each == breed
#     pets = pets + 1 
#   else
#     puts "not a valid breed"
#   end 
#   return pets
# end
def pets_by_breed( pet_shop, breed )
  pets = 0
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      pets += 1
    end
  end
  return pets
end


def find_pet_by_name( pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    else
      pet = nil
    end
  end
    return pet
end

def remove_pet_by_name( pet_shop, name )
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end  
  end
end

def add_pet_to_stock( pet_shop, new_pet )
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customers)
  count = customers[:pets].count()
  return count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  add_pet_to_customer(customer, pet)
  increase_pets_sold(pet_shop,1)
  add_or_remove_cash(pet_shop, 900)
end