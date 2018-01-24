
array=[2,3,4,5,6,7,8,9,10]

even =array.select{|a| a.even?}
even_l=even.size

puts "Number of even numbers: #{even_l} "

odd=array.select{|b| b.odd?}
odd_l= odd.size

puts "Number of odd numbers:  #{odd_l} "