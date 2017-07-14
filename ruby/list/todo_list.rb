#Create a new class that will match the spec files class tests
#Write methods that will match the methods being in the tests.
#Run tests in terminal - read errors and make changes as neccessary
#Input = create code for instance class methods for TodoList class
#Output =

class TodoList

  def initialize(list)
    @list = list
  end

  def get_items
    @list
  end

  def add_item(item)
    @list.push(item)
    @list
  end

  def delete_item(remove_item)
    @list.delete(remove_item)
    @list
  end

  def get_item(index)
    @list[index]
  end


end