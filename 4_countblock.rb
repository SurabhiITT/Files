
def count
  sum=0
  for i in 1..10

    sum=sum+i
  end
 yield sum
end


count do |sum|

  puts "#{sum}"

end