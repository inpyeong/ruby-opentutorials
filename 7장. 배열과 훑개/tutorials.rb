arr = [123, '123', [true, false]]

# puts arr

arr.each do |a|
  puts a
end

puts '=========='

3.times do
  puts 'ruby master'
end

puts '=========='

puts arr.to_s
puts
puts arr.join(', ')

puts '=========='

favorites = []
favorites.push 'basketball'
favorites.push 'song'
puts favorites
puts '=========='

favorites.pop
puts favorites
puts favorites.last
