class Test

  puts "Enter any value between 1 to 100"
  @@value=gets.to_i
  def initialize(a,b)
    @a=a
    @b=b

  end

  def print_a
    return @a
  end

  def print_b
    return @b
  end

  def counter
    while @@value<100 do
      puts "The increament value is #{@@value}"
      @@value +=1
    end



end
end

obj=Test.new(10,20)
puts obj.print_a
puts obj.print_b
puts obj.counter