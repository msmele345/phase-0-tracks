#Create a new class that will match the spec files class tests
#Write instances methods that will match the methods being in the tests.

class TodoList

  def initialize(list)
    @list = list
  end

  def get_items
    @list
  end
end