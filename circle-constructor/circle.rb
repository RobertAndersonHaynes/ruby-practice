class Circle
  def initialize(args)
    if args.kind_of?(Fixnum) || args.kind_of?(Float) == true
      @radius = args
    elsif args.kind_of?(Hash) == true
      if args.has_key?(:diameter) == true
        @radius = args[:diameter] / 2
      else
        @radius = args[:radius]
      end
    else
      @radius =  "You can only pass integers and hashes"
    end
  end
end

circle_3 = Circle.new(4)
puts "circle 3 #{circle_3.inspect}"
circle_4 = Circle.new(5.5)
puts "circle 4 #{circle_4.inspect}"
#
#
circle_1 = Circle.new({radius: 5.5})
puts circle_1.inspect
circle_2 = Circle.new({diameter: 12})
puts circle_2.inspect
#
circle_5 = Circle.new([diameter: 12])
puts "circle 5 #{circle_5.inspect}"
