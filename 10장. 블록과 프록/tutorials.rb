# Procedure
# Block means codes between 'do' and 'end'
toast = Proc.new do
  puts 'Cheers!'
end

toast.call

doYouLike = Proc.new do |aGoodThing|
  puts 'I really like '+aGoodThing+'!'
end

doYouLike.call 'basketball'

# Procedure is a object.
# Method is not a object, so we can pass procedure to method.

def doSelfImportantly someProc
  print 'I '
  someProc.call
  puts ' Ruby.'
end

sayLike = Proc.new do
  print 'Like'
end

sayLove = Proc.new do
  print 'Love'
end

doSelfImportantly sayLike
puts
doSelfImportantly sayLove

def doUntilFalse firstInput, someProc
  input = firstInput
  output = firstInput

  while output
    input = output
    output = someProc.call input
  end

  input
end

buildArrayOfSquares = Proc.new do |array|
  lastNumber = array.last
  if lastNumber <= 0
    false
  else
    array.pop
    array.push lastNumber*lastNumber
    array.push lastNumber-1
  end
end

alwaysFalse = Proc.new do |justIgnoreMe|
  false
end

puts doUntilFalse([5], buildArrayOfSquares).inspect
puts doUntilFalse 'Hello..', alwaysFalse

def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

squareIt = Proc.new do |x|
  x * x
end

doubleIt = Proc.new do |x|
  x + x
end

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt

puts doubleThenSquare.call 5
puts squareThenDouble.call 5

class Array
  def eachEven(&wasABlock_nowAProc)
    isEven = true
    
    self.each do |object|
      if isEven
        wasABlock_nowAProc.call object
      end

      isEven = (not isEven)
    end
  end

end

['apple', 'bad apple', 'cherry', 'durian'].eachEven do |fruit|
  puts fruit
end

[1,2,3,4,5].eachEven do |oddBall|
  puts oddBall
end

def profile descriptionOfBlock, &block
  startTime = Time.now

  block.call

  duration = Time.now - startTime

  puts descriptionOfBlock + ': ' + duration.to_s + ' seconds'
end

profile '25000 doublings' do
  number = 1

  25000.times do
    number = number + number
  end

  puts number.to_s.length.to_s + ' digits'
end

profile 'count to million' do
  number = 0

  1000000.times do
    number = number + 1
  end
end
