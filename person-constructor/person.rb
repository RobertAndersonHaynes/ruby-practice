require 'pry'
class Person
  def initialize(first_name, last_name = nil, middle_name = nil)
    full_name = first_name.split
    if full_name.length > 2
      @first_name = full_name[0]
      @middle_name = full_name[1]
      @last_name = full_name[2]
    elsif full_name.length > 1
      @first_name = full_name[0]
      @last_name = full_name[1]
    else
      @first_name = first_name
      @middle_name = middle_name
      @last_name = last_name
    end
  end
end

# person = Person.new('John Smith')
