# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# create hash structure to store list items in
# default the quanity of items to 1
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: print back the hash of the list in a readable way with
#list item and quantity [what data type goes here, array or hash?]

begin_list = "pizza cereal chips salsa"


def create(begin_list)
  hash_list = {}
  default_quantity = 1
  list_array = begin_list.split(" ")

 list_array.each do |item|
    hash_list[item] = default_quantity
  end

  hash_list
end

first_list = create(begin_list)
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: take user iput for adding to the list
# then store the new item in the list with type and quanity if entered, otherwise default to 1
# output: updated list with new items

def add_item(item,quantity,first_list)
  if quantity == ""
    quantity = 1
  else
    quantity
  end
  first_list[item] = quantity

end

# p first_list
# Method to remove an item from the list
# input: user input
# steps: take user input and remove called item entirely from the list
# output: updated list without item
def remove_item(item,first_list)

 first_list.delete(item)

end

# p first_list
# Method to update the quantity of an item
# input: item on the list already
# steps: loop through the hash to find the item(identify the key) and update the quantity of the item
# output: updated list with new quantity

def update_item(item,quantity_changed,first_list)
  first_list[item] = quantity_changed

end

# p first_list
# Method to print a list and make it look pretty
# input: hash with most updated list values
# steps: puts the items of the list out, edit the UI to make it look nice
# output: call at the end of driver code to show everything together
def print_list(first_list)
  puts "Here is your final list:"
  first_list.each {|item, quantity| puts "* #{item} : #{quantity}"}
end


## DRIVER/TEST CODE

add_item("tomatoes","3",first_list)
add_item("lemonade","2",first_list)
add_item("Onions","1",first_list)
add_item("Ice Cream","4",first_list)

remove_item("lemonade",first_list)

update_item("Ice Cream","1",first_list)
update_item("pizza","5",first_list)

print_list(first_list)


#Release 4 Reflection

# 1. I learned that peseduo code needs to be specific and in plain human language. It needs general directions on how to accomplish a task that are easy to follow.
# 2. Hashes provide the opportunity to pair two data points (in an unordered fashion). In this challenge, it was item and qty. The fact that arrays are ordered would have made it a more difficult choice for this challenge.
# 3. The resturn value of the last evaluated statement
# 4. Other methods, string, arrays (objects)
# 5. Calling methods inside of another method
# 6. I think calling methods inside of others was solidifed for sure (I was ok on it before, now I feel more confident). Passing a method as a parameter in another method is still a bit fuzzy. I will continue to review and reflect to make sure I understand.