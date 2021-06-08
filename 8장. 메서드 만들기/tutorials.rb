goodAnswer = false

while (not goodAnswer)
  puts 'Do you like basketball?'
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    goodAnswer = true;
  else
    puts 'Please answer "yes" or "no"'
  end
end

puts '=============='

# def sayMoo
#   puts 'Moo'
# end

# sayMoo
# sayMoo

puts '=============='

def sayMoo numberOfMoos
  puts 'Moo' * numberOfMoos
  # 메소드의 가장 마지막 줄이 메소드의 반환 값
  # 'This is what i want to return'
end

x = sayMoo 3
puts x

puts '=============='

# puts 메서드는 nil을 반환한다.
returnVal = puts 'This puts returned:'
puts returnVal

puts '=============='

def ask question
  goodAnswer = false
  while (not goodAnswer)
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' or reply == 'no')
      goodAnswer = true
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
    else
      puts 'Please answer "yes" or "no".'
    end
  end

  answer
end

answer = ask 'Are you dealians?'
puts answer
