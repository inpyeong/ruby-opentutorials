puts 'Hello' if 5 == 2**2 + 1**1
puts 'World' unless 'Chris'.length == 5

def doItManyTimes
  yield
end

def doItTwice &block
  block.call
  block.call
end

doItManyTimes do
  puts 'Hello'
  puts 'Hello'
  puts 'Hello'
  puts 'Hello'
  puts 'Hello'
  puts 'Hello'
end

doItTwice do
  puts 'World'
end
