
puts "Enter the 3 distinct number of your choice to find the greatest"
x=gets.chomp.to_i
y=gets.chomp.to_i
z=gets.chomp.to_i


if x>y && x>z
  puts "x is greater than all"
elsif y>z && y>x
  puts "y is greater than all"
elsif z>x && z>y
  puts "z is greater"
else
  puts "Entered number is not distinct"
end