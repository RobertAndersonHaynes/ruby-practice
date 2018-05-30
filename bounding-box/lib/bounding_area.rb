require_relative './bounding_box'
require 'pry'

class BoundingArea
  def initialize(box_array)
    @box_array = box_array
  end

  def boxes_contain_point?(x, y)
    @box_array.any? { |box| box.contains_point?(x, y) }
  end
end

#   def boxes_contain_point?(x, y)
#     if @box_array.any?
#       @box_array.each do |box|
#         if box.contains_point?(x, y)
#           return true
#         else
#           return false
#         end
#       end
#     else
#       false
#     end
#   end
# end
