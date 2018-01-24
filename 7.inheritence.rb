class Vechile
  attr_accessor :color, :number_of_wheels,:size
  def initialize(color,number,size)
    @color=color
    @number=number
    @size=size

  end
end

class Car <Vechile
  def car_method
    puts "The number of wheels in car : #{@number} , color of car is : #{@color} , size of car is : #{@size}"

  end
end

c=Car.new("red",4,"big")
puts c
puts c.car_method