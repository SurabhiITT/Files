puts"Enter the first word"
word1=gets.chomp

puts "Enter the second word"
word2=gets.chomp

puts "The length of the word1 is: " + (word1.length).to_s
puts "The length of the word2 is: " + (word2.length).to_s

puts "After concatenation the word becomes: "

puts "#{word3=word1+word2}"

puts "The letters of the word1 and word2 are "
puts word1.chars.last(1).join
puts word2.chars.last(1).join

puts "The 3rd letter of the word1 and word2 are :"
puts word1.index(3)
puts word2.index(3)





